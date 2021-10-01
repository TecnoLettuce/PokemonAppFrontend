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

  pokemon = new Pokemon(-1, -1, 'initial name', 'type', 'type', -1, 'sample location');
  pokemonList : Pokemon[] = []

  loadingSW : boolean = false
  isThereAPokemon : boolean = false;
  errorMessage : string = ''

  constructor(private pokemonService : PokemonService) { }

  ngOnInit(): void {
    
  }

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

  createPokemon() {
    // TODO
  }

  updatePokemon() {
    // TODO
  }

  deletePokemon() {
    //TODO
  }

  private assignPokemontoPokemonList(response : any) : void {
    for (let i = 0; i < response.length; i++) {

      let pokemonIndex : Pokemon = new Pokemon(i+1,response[i].id, response[i].name, response[i].type1, response[i].type2, response[i].generation, response[i].imx_location) 

      this.pokemonList.push(pokemonIndex) 

    }
  }

  resetTable() : void {
    this.pokemonList = [];
    this.isThereAPokemon = false;
    
  }

}
