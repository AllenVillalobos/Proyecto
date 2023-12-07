import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { NavigationExtras, Router } from '@angular/router';

export interface Coursetlist {
  name: string;
  course_id: number;
}

@Component({
  selector: 'app-course',
  templateUrl: './course.component.html',
  styleUrls: ['./course.component.scss']
})
export class CourseComponent  implements OnInit {

  displayedColumns: string[] = ['course_id', 'name','Quizz'];
  dataSource: any[] = [];
  constructor(private http: HttpClient,
    private router:Router) { 
      
    }
    edit(row: Coursetlist) {
      alert(JSON.stringify(row))
   
      const navigationExtras: NavigationExtras = {
        state: {
          course: row
        }
      };
      this.router.navigateByUrl('table/subject', navigationExtras);
    };
  
    ngOnInit(): void {
      this.onGet();
    }
   
   

    onGet = () => {
      const apiUrl = 'http://localhost:8080/api/course';
      const headers = new HttpHeaders({
        'Content-Type': 'application/json'
      });
   
      this.http.get(apiUrl, { headers: headers })
      .subscribe((response:any) => {
        // Maneja la respuesta de la API aquí
        if (response) {
          this.dataSource=response;
        }
 
      }, (error) => {
        // Maneja errores aquí
        console.error('Error al llamar a la API:', error);
        alert('usuario no existe')
      });
  }
  applyFilter(event: Event) {
    debugger
    const filterValue = (event.target as HTMLInputElement).value;
    alert(filterValue)
  }
}

