import { Component, OnInit } from '@angular/core';
import { Pokemon } from "../../Pokemon";
@Component({
  selector: 'app-table-view-component',
  templateUrl: './table-view-component.component.html',
  styleUrls: ['./table-view-component.component.css']
})
export class TableViewComponentComponent implements OnInit {

  pokemonList : Pokemon[] = [];

  constructor() { }

  ngOnInit(): void {
    
  }

}
