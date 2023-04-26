import { Component, OnInit } from '@angular/core';

declare interface RouteInfo {
  path: string;
  title: string;
  icon: string;
  class: string;
}

export const ROUTES: RouteInfo[] = [
  { path: '/sudija/profilSudija', title: 'Profil',  icon: '', class: '' },
  { path: '/sudija/presudeSudija', title: 'Lista presuda',  icon: '', class: '' },
  { path: '/sudija/novaPresudaSudija', title: 'Nova presuda',  icon: '', class: '' },
  { path: '/sudija/krivicnaDela', title: 'Krivicna dela',  icon: '', class: '' },
];

@Component({
  selector: 'app-sudija-sidebar',
  templateUrl: './sudija-sidebar.component.html',
  styleUrls: ['./sudija-sidebar.component.css']
})
export class SudijaSidebarComponent implements OnInit {

  menuItems: any[];
  constructor() { }

  // tslint:disable-next-line:typedef
  ngOnInit() {
    this.menuItems = ROUTES.filter(menuItem => menuItem);
  }

}
