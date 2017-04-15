import { Component } from '@angular/core';
import { Hero } from './hero';

const HEROES: Hero[] = [
  { id: 11, name: 'NANANANA BATMAN' },
  { id: 12, name: 'Superman' },
  { id: 13, name: 'Aquaman' },
  { id: 14, name: 'Flash' },
  { id: 15, name: 'Green Lantern' },
  { id: 16, name: 'Green Arrow' },
  { id: 17, name: 'Wonder Woman' },
  { id: 18, name: 'Black Canari' },
  { id: 19, name: 'J\'onn J\'onzz' },
  { id: 20, name: 'Hawk Girl' }
];

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})

export class AppComponent {
  title = 'Tour of Heroes';
  heroes = HEROES;
  selectedHero: Hero;
  hero: Hero = 
  {
    id: 1,
    name: 'Windstorm'
  };

  onSelect(hero: Hero): void 
  {
    this.selectedHero = hero;
  }
}
