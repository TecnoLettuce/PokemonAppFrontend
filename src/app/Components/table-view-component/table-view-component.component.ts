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
  pokemon = new Pokemon(-1, -1, 'initial name', 'type', 'type', -1, 'sample location');
  pokemonList : Pokemon[] = []

  loadingSW : boolean = false
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

      let pokemonIndex : Pokemon = new Pokemon(i+1,response[i].id, response[i].name, response[i].type1, response[i].type2, response[i].generation, response[i].imx_location) 

      this.pokemonList.push(pokemonIndex) 

    }
  }

}
