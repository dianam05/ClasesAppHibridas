import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { NavController } from '@ionic/angular';
import { UserService } from 'src/app/services/user.service';
import { Storage } from '@ionic/storage';
// import { UserService } from '../../services/user.service';

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
    private router: Router,
    private service: UserService,
    private storage: Storage
  ) { }

  ngOnInit() {
    // this.storage.clear()
    this.validation()
  }

  validation() {
    this.storage.get('token').then(
      (token) => {
        if (token) {
          this.navController.navigateBack('/home');
        }
      }
    )
  }

  async redirectHomeNavController() {

    console.log('redirectHomeNavController');
    console.log(this.usuario, this.clave);
    if (this.usuario && this.clave){
      var data = await this.service.login({
        username: this.usuario,
        password: this.clave
      })
      var token = data
      console.log(token);
      /*
      
      this.service.login({
        username: this.usuario,
        password: this.clave
      }).then( (data) => {
        var token = data
        console.log(token.key);
        console.log("Termino de guardar el token")
      })
      */
      await this.storage.set('token', data['key']);
      console.log("Termino de guardar el token");
      console.log("Redireción a Home");
      this.navController.navigateBack('/home');
    }
  }
  
  redirectHomeRouter() {
    console.log('redirectHomeRouter');
    console.log(this.usuario, this.clave);;
    //this.router.navigate(['/home']);
  }

}
