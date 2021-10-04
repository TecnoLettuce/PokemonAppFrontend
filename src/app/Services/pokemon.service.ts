import { Injectable } from '@angular/core';
import { HttpClient, HttpClientModule, HttpErrorResponse, HttpHeaders } from "@angular/common/http";
import { Observable, throwError } from 'rxjs';
import { catchError, retry } from 'rxjs/operators';
import { Pokemon } from '../Models/Pokemon';

@Injectable({
  providedIn: 'root'
})
export class PokemonService {

  baseURL : string = 'https://localhost:44388/api/Pokemon'
  baseURL2 : string = '/api/Pokemon'

  httpOptions = {
    headers: new HttpHeaders({
      'Content-Type':  'application/json'
    })
  };

  constructor(private http : HttpClient) { 

  }

  getAllPokemon(): Observable<any> {

    return this.http.get("/api/Pokemon")
  }

  getPokemonById(id : number): Observable<any> {

    return this.http.get("/api/Pokemon/" + id)
  }

  createPokemon(pokemon : Pokemon): void {
    
    let postData = {
      id: pokemon.PokedexId,
      name : pokemon.Name,
      type1 : pokemon.Type1,
      type2 : pokemon.Type2,
      generation : pokemon.Generation,
      imx_location : pokemon.Imx_location
    }
    
    this.http.post('/api/Pokemon',postData).toPromise().then(data => {
      console.log(data)
    })
  }


  updatePokemon(pokemon : Pokemon) {
    //TODO
  }

  deletePokemon(id:number) : void {
    //TODO
  }

}
