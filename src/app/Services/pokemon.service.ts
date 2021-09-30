import { Injectable } from '@angular/core';
import { HttpClient, HttpClientModule } from "@angular/common/http";
import { Observable, throwError } from 'rxjs';
import { catchError, retry } from 'rxjs/operators';
import { Pokemon } from '../Models/Pokemon';

@Injectable({
  providedIn: 'root'
})
export class PokemonService {

  baseURL : string = 'https://localhost:44388/api/Pokemon'

  constructor(private http : HttpClient) { 

  }

  getAllPokemon(): Observable<any> {

    return this.http.get(this.baseURL)
  }

  getPokemonById(id : number): Observable<any> {

    return this.http.get(this.baseURL + '/' + id)
  }

  createPokemon(pokemon : Pokemon) {
    // TODO
  }

  updatePokemon(pokemon : Pokemon) {
    // TODO
  }

  deletePokemon(id:number) : void {
    //TODO
  }

}
