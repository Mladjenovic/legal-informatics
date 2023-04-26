import {Component, ElementRef, OnInit} from '@angular/core';
import {Router} from '@angular/router';
import {ROUTES} from '../sudija-sidebar/sudija-sidebar.component'

@Component({
  selector: 'app-sudija-navbar',
  templateUrl: './sudija-navbar.component.html',
  styleUrls: ['./sudija-navbar.component.css']
})
export class SudijaNavbarComponent implements OnInit {

  private listTitles: any[];
  // tslint:disable-next-line:variable-name
  mobile_menu_visible: any = 0;
  private toggleButton: any;
  private sidebarVisible: boolean;

  public isCollapsed = true;
  // tslint:disable-next-line:typedef
  collapse() {
    this.isCollapsed = !this.isCollapsed;
    const navbar = document.getElementsByTagName('nav')[0];
    console.log(navbar);
    if (!this.isCollapsed) {
      navbar.classList.remove('navbar-transparent');
      navbar.classList.add('bg-white');
    } else {
      navbar.classList.add('navbar-transparent');
      navbar.classList.remove('bg-white');
    }

  }
  constructor(private element: ElementRef, private router: Router) {
    this.sidebarVisible = false;
  }

  // tslint:disable-next-line:typedef
  ngOnInit() {
    this.listTitles = ROUTES.filter(listTitle => listTitle);
    const navbar: HTMLElement = this.element.nativeElement;
    this.toggleButton = navbar.getElementsByClassName('navbar-toggler')[0];
    this.router.events.subscribe((event) => {
      this.sidebarClose();
      const $layer: any = document.getElementsByClassName('close-layer')[0];
      if ($layer) {
        $layer.remove();
        this.mobile_menu_visible = 0;
      }
    });
  }

  // tslint:disable-next-line:typedef
  sidebarClose() {
    const html = document.getElementsByTagName('html')[0];
    this.toggleButton.classList.remove('toggled');
    const mainPanel =   document.getElementsByClassName('main-panel')[0] as HTMLElement;

    if (window.innerWidth < 991) {
      // tslint:disable-next-line:only-arrow-functions typedef
      setTimeout(function() {
        mainPanel.style.position = '';
      }, 500);
    }
    this.sidebarVisible = false;
    html.classList.remove('nav-open');
  }


  // tslint:disable-next-line:typedef
  logout() {
    const user = JSON.stringify({
      korisnickoIme: localStorage.getItem('currentuser'),
      lozinka: '',
    });
    localStorage.removeItem('currentuser');
    this.router.navigate(['/']);
  }

}
