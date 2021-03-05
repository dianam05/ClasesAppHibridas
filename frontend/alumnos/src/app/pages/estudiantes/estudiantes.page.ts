import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-estudiantes',
  templateUrl: './estudiantes.page.html',
  styleUrls: ['./estudiantes.page.scss'],
})
export class EstudiantesPage implements OnInit {
  slideOpts = {
    initialSlide: 1,
    speed: 400
  };

  // Entrada

  constructor() {
    console.log("Contructor");
  }

  ngOnInit() {
    console.log("ngOnInit");
  }

  ionViewCanEnter(){
    console.log("ionViewCanEnter");  
  }

  ionViewDidLoad(){
    console.log("ionViewDidLoad");  
  }

  ionViewWillEnter(){
    console.log("ionViewDidLoad");
  }

  // Salida

  ionViewCanLeave(){
    console.log("ionViewCanLeave");   
  }

  ionViewDidLeave(){
    console.log("ionViewDidLeave");   
  }

  ionViewWillUnload(){
    console.log("ionViewWillUnload");   
  }


}
