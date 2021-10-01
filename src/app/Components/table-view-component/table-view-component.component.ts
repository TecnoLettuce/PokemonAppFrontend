import { Component, OnInit } from '@angular/core';
import { PokemonService } from 'src/app/Services/pokemon.service';
import { Pokemon } from "../../Models/Pokemon";
@Component({
  selector: 'app-table-view-component',
  templateUrl: './table-view-component.component.html',
  styleUrls: ['./table-view-component.component.css'],
  providers: [PokemonService]
})
export class TableViewComponentComponent implements OnInit {

  pokemonId : number = -1
  pokemon = new Pokemon(-1, 'initial name', 'type', 'type', -1, 'sample location');
  pokemonList : Pokemon[] = []

  loadingSW : boolean = false
  errorMessage : string = ''

  constructor(private pokemonService : PokemonService) { }

  ngOnInit(): void {
    
  }

  public getAllPokemon() {
    
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

  getPokemonById(id : number) {
    //TODO
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
      this.pokemon.Id = response[i].id
      this.pokemon.Name = response[i].name
      this.pokemon.Type1 = response[i].type1
      this.pokemon.Type2 = response[i].type2
      this.pokemon.Generation = response[i].generation
      this.pokemon.Imx_location = response[i].imx_location

      this.pokemonList.push(this.pokemon)          
    }
  }

}
