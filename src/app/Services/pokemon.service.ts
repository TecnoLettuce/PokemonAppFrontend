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

  
  /**
   * HTTP GET request -> Take all pokemon from backend
   * 
   * @returns Observable<any>
   * @param null
   */
  getAllPokemon(): Observable<any> {

    return this.http.get("/api/Pokemon")
  }

  /**
   * HTTP GET request -> Take pokemon with correct id from backend
   * 
   * @returns Observable<any>
   * @param number
   */
  getPokemonById(id : number): Observable<any> {

    return this.http.get("/api/Pokemon/" + id)
  }

  /**
   * HTTP POST request -> Send to backend the suitable data to create a new item in the database
   * 
   * @returns null
   * @param Pokemon
   */
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


  /**
   * HTTP PUT request -> Send to backend the suitable data to update the item that suits the pokemon ID
   * 
   * @returns Observable<any>
   * @param Pokemon
   */
  updatePokemon(pokemon : Pokemon) : Observable<any> {

    console.log('Dentro de update')

    let putData = {
      id: pokemon.PokedexId,
      name : pokemon.Name,
      type1 : pokemon.Type1,
      type2 : pokemon.Type2,
      generation : pokemon.Generation,
      imx_location : pokemon.Imx_location
    }

    return this.http.put('/api/Pokemon', putData)
  }

  /**
   * HTTP DELETE request -> Send a request to backend to delete the item that suits the id
   * 
   * @returns Observable<any>
   * @param number
   */
  deletePokemon(id:number): Observable<any> {
    
    return this.http.delete("api/Pokemon/"+id)
  }

}
