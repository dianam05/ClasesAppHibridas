import { Component } from '@angular/core';

@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
})
export class HomePage {
  nombre = "";
  color = "gris";
  edad = 15;

  // Entranda Inicial o Primaria

  constructor() {
    console.log("Contructor");
  }

  ngOnInit() {
    console.log("ngOnInit");
  }

  // Entranda Constante

  ionViewWillEnter(){
    console.log("ionViewWillEnter");
  }

  // Entro

  ionViewDidEnter(){
    console.log("ionViewDidEnter");  
  }
  // Salida

  ngOnDestroy(){
    console.log("ngOnDestroy");
  }

  ionViewDidLeave(){
    console.log("ionViewDidLeave");
  }

  ionViewWillLeave(){
    console.log("ionViewWillLeave");
  }

  ronronear(){
    return " esta ronroneando";
  }
  /*
    def __str__(self):
        return "Gato " + self.nombre
  */
}
