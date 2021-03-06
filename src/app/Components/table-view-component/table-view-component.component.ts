import { Component, OnInit } from '@angular/core';
import { FormControl } from '@angular/forms';
import { PokemonService } from 'src/app/Services/pokemon.service';
import { Pokemon } from "../../Models/Pokemon";
@Component({
  selector: 'app-table-view-component',
  templateUrl: './table-view-component.component.html',
  styleUrls: ['./table-view-component.component.css'],
  providers: [PokemonService]
})
export class TableViewComponentComponent implements OnInit {

  public pokemonId = new FormControl()
  public pokemonName = new FormControl();
  public pokemonType1 = new FormControl();
  public pokemonType2 = new FormControl();
  public pokemonGeneration = new FormControl();
  public imx_location = new FormControl();


  pokemon = new Pokemon(-1, -1, 'initial name', 'type', 'type', -1, 'sample location');
  pokemonList : Pokemon[] = []

  loadingSW : boolean = false
  isThereAPokemon : boolean = false;
  errorMessage : string = ''

  constructor(private pokemonService : PokemonService) { }

  ngOnInit(): void {
    
  }

  /**
   * Get HTTP Request 
   * 
   * Take all items in database and add them to the list, casted as pokemon
   */
  public getAllPokemon() {
    
    this.pokemonList = [];

    this.loadingSW = true;

    this.pokemonService.getAllPokemon()
      .subscribe(
        (response) => {
          console.log('response received')

          this.assignPokemontoPokemonList(response)
        },
        (requestError) => {
          console.log('Request Failed')
          this.errorMessage = requestError;
          this.loadingSW = false;
        }, 
        () => {
          console.log('Request Completed')
          this.loadingSW = false
        }
      )
  }

  
  /**
   * Get HTTP Request 
   * 
   * Take the item in database which has the right ID and shows it in the second table of the view, casted as pokemon
   */
  getPokemonById() {
    
    this.loadingSW = true;

    this.pokemonService.getPokemonById(parseInt(this.pokemonId.value))
      .subscribe(
        (response) => {
          console.log('response received')

          if (response == null) {
            this.isThereAPokemon=false;
          } else {
            
            this.isThereAPokemon = true;

            this.pokemon = new Pokemon(0 ,response.id, response.name, response.type1, response.type2, response.generation, response.imx_location)
          }

        },
        (requestError) => {
          console.log('Request Failed')
          this.errorMessage = requestError;
          this.loadingSW = false;
        }, 
        () => {
          console.log('Request Completed')
          this.loadingSW = false
        }
      )
  }

  
  /**
   * Post HTTP Request 
   * 
   * Take data from the form of the view.
   * Creates a new Pokemon whith that data, then send the request
   */
  createPokemon() {
    let pokemon = new Pokemon(2000,
                              0,
                              this.pokemonName.value,
                              this.pokemonType1.value,
                              this.pokemonType2.value,
                              this.pokemonGeneration.value, 
                              this.imx_location.value)
    this.pokemonService.createPokemon(pokemon)
    this.resetTable()
  }

  
  /**
   * Put HTTP Request 
   * 
   * Same process as createPokemon()
   */
  updatePokemon() : boolean {

    let pokemon = new Pokemon(this.pokemonId.value,
                              0,
                              this.pokemonName.value,
                              this.pokemonType1.value,
                              this.pokemonType2.value,
                              this.pokemonGeneration.value, 
                              this.imx_location.value)
    
    if (!this.isPokemonIdInDatabase(pokemon.PokedexId)) {
      alert('El pokemon no se encuentra en la base de datos')
      return false
    }
    
    this.pokemonService.updatePokemon(pokemon).subscribe(data => {
      alert('Pokemon '+pokemon.PokedexId+', Actualizado.')
    })
    this.resetTable()

    return true
  }

  
  /**
   * Delete HTTP Request 
   * 
   * Takes the id from the form in the view. Then makes the Delete request
   */
  deletePokemon() {
    this.pokemonService.deletePokemon(this.pokemonId.value)
      .subscribe(
        data => {
          console.log(data);
        }
      )
    alert("Eliminado!")
    this.resetTable()
  }

  
  /**
   *  
   * Complementary method of getAllPokemon()
   * It takes the HTTP response and cast every item to a pokemon. 
   * Then, add all of that items to the list variable
   */
  private assignPokemontoPokemonList(response : any) : void {
    for (let i = 0; i < response.length; i++) {

      let pokemonIndex : Pokemon = new Pokemon(i+1,response[i].id, response[i].name, response[i].type1, response[i].type2, response[i].generation, response[i].imx_location) 

      this.pokemonList.push(pokemonIndex) 

    }
  }

  
  /**
   * Set de default state of tables and forms of the view
   */
  resetTable() : void {
    this.pokemonList = [];
    this.isThereAPokemon = false;
    this.resetForms()
  }

  
  /**
   * Set de default state of forms of the view
   */
  private resetForms() {
    this.pokemonId.reset()
    this.pokemonName.reset()
    this.pokemonType1.reset()
    this.pokemonType2.reset()
    this.pokemonGeneration.reset()
    this.imx_location.reset()
    this.errorMessage = ""
  }

  
  /**
   * Validates that a pokemon with the id provided is in the table list
   */
  private isPokemonIdInDatabase(id: number) : boolean {
    
    console.log(id)
    let pokemonFound = this.pokemonList.find(element => element.DatabaseId == id)
    console.log(pokemonFound)
    return pokemonFound != undefined
  }
}


