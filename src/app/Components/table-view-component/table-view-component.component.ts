import { Component, OnInit } from '@angular/core';
import { Pokemon } from "../../Models/Pokemon";
@Component({
  selector: 'app-table-view-component',
  templateUrl: './table-view-component.component.html',
  styleUrls: ['./table-view-component.component.css']
})
export class TableViewComponentComponent implements OnInit {

  pokemonList : Pokemon[] = [];

  constructor() { }

  ngOnInit(): void {
    // Llamar al servicio HTTP para recoger todo lo que haya en la base de datos 
  }

}
