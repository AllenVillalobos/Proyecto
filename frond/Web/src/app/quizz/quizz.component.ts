import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';


import { MatTableDataSource } from '@angular/material/table';
import { NavigationExtras, Router } from '@angular/router';

interface Subjectlist{
  question_id:number
  courseid:number;
  subjectid:number;
  label:String;
  question_option:any;
}

@Component({
  selector: 'app-quizz',
  templateUrl: './quizz.component.html',
  styleUrls: ['./quizz.component.scss']
})
export class QuizzComponent implements OnInit{
  
  respuestasUsuario: { preguntaId: number, respuestaCorrecta: boolean }[] = [];
  
  dataSource: Subjectlist [] =[];
  dataSourceMatTable= new MatTableDataSource(this.dataSource);
  id:number=0;
  
  
  constructor(private http: HttpClient,
    private router:Router) {     
    }  
      ngOnInit(): void {
        debugger
        const navigation = window.history.state;
        this.id=navigation.subject.subject_Id;        
        this.onGet();
      }
      seleccionarRespuesta(preguntaId: number, esCorrecta: boolean) {
        const index = this.respuestasUsuario.findIndex(respuesta => respuesta.preguntaId === preguntaId);
    
        if (index !== -1) {
          // Actualizar respuesta existente
          this.respuestasUsuario[index].respuestaCorrecta = esCorrecta;
        } else {
          // Agregar nueva respuesta
          this.respuestasUsuario.push({ preguntaId, respuestaCorrecta: esCorrecta });
        }
      }
    
      // Método para contar respuestas correctas o incorrectas
      contarRespuestas(esCorrecta: boolean): number {
        return this.respuestasUsuario.filter(respuesta => respuesta.respuestaCorrecta === esCorrecta).length;
      }
    onGet = () => {
      const apiUrl = `http://localhost:8080/api/question/${this.id}`;
      
      const headers = new HttpHeaders({
        'Content-Type': 'application/json'
      });
      
      debugger
      this.http.get(apiUrl, { headers: headers })
        .subscribe((response:any) => {
          // Maneja la respuesta de la API aquí
          if (response) {
            this.dataSource=response;
            this.dataSourceMatTable=new MatTableDataSource(this.dataSource);
            this.dataSource.forEach(item=>{
            item.question_option= JSON.parse(item.question_option)          
            })
            debugger
          }
         
   
        }, (error) => {
          // Maneja errores aquí
          console.error('Error al llamar a la API:', error);
          alert('usuario no existe')
        });
    }
    Volver(){
      const navigationExtras: NavigationExtras = {};
      this.router.navigateByUrl('table/subject', navigationExtras);
     } 
  }
  