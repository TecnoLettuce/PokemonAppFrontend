import { ComponentFixture, TestBed } from '@angular/core/testing';
import { PokemonService } from 'src/app/Services/pokemon.service';

import { TableViewComponentComponent } from './table-view-component.component';

describe('TableViewComponentComponent', () => {
  let component: TableViewComponentComponent;
  let fixture: ComponentFixture<TableViewComponentComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ TableViewComponentComponent, PokemonService ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(TableViewComponentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTrue();
  });
});
