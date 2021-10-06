import { Component } from '@angular/core';
import { PokemonService } from './Services/pokemon.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css'],
  providers: [PokemonService]
})
export class AppComponent {
  title = 'Welcome to Pokedex Service';
}
