import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { NavController } from '@ionic/angular';

@Component({
  selector: 'app-login',
  templateUrl: './login.page.html',
  styleUrls: ['./login.page.scss'],
})
export class LoginPage implements OnInit {
  public usuario: string;
  public clave: string;
  private size_button = "small";
  public color_button = "warning";

  constructor(
    private navController: NavController,
    private router: Router
  ) { }

  ngOnInit() {
  }

  redirectHomeNavController() {
    console.log('redirectHomeNavController');
    console.log(this.usuario, this.clave);
    //this.navController.navigateBack('/home');
  }
  
  redirectHomeRouter() {
    console.log('redirectHomeRouter');
    console.log(this.usuario, this.clave);;
    //this.router.navigate(['/home']);
  }

}
