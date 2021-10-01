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
  pokemonList : Pokemon[] = []

  loadingSW : boolean = false
  errorMessage : string = ''

  constructor(private pokemonService : PokemonService) { }

  ngOnInit(): void {
    
  }

  public getAllPokemon() {
    
    console.log('Estoy dentro del metodo getAllPokemon')

    this.loadingSW = true;

    this.pokemonService.getAllPokemon()
      .subscribe(
        (response) => {
          console.log('response received')
          this.pokemonList = response
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

}
