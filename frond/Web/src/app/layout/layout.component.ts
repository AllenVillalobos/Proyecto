import { Component } from '@angular/core';
import { NavigationExtras, Router } from '@angular/router';

@Component({
  selector: 'app-layout',
  templateUrl: './layout.component.html',
  styleUrls: ['./layout.component.scss']
})
export class LayoutComponent {
  constructor(private router: Router){
  }
  Close(){
    const navigationExtras: NavigationExtras = {};
    this.router.navigateByUrl('login', navigationExtras);
   } 
}
