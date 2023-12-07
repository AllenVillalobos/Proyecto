import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { MatTableDataSource } from '@angular/material/table';
import { Router, NavigationExtras, NavigationEnd } from '@angular/router';
import { filter } from 'rxjs';

export interface Isubject {
  name: string;
  subject_Id: number;
  author: string;
  creation_Date:String;
  points:number;
  nombre:string;
}

@Component({
  selector: 'app-subject',
  templateUrl: './subject.component.html',
  styleUrls: ['./subject.component.scss']
})
export class SubjectComponent implements OnInit {
  displayedColumns: string[] = ['subject_Id', 'name', 'author','creation_Date','points','nombre','Links'];
  dataSource: Isubject[] = [];
  dataSourceMatTable = new MatTableDataSource(this.dataSource);
  course_id:string="Matematicas";
  
  constructor(private http: HttpClient,
              private router:Router) { }
 

  edit(row: Isubject) {
    alert(JSON.stringify(row))
 
    const navigationExtras: NavigationExtras = {
      state: {
        subject: row
      }
    };
 
    this.router.navigateByUrl('table/quiz', navigationExtras);
    
    
  };

  ngOnInit(): void {
    debugger
    const navigation = window.history.state;
    //this.course_id=navigation.course.subject_Id;
    this.onGet();
  }
 
 
  /**  */
  onGet = () => {
    
    const apiUrl = 'http://localhost:8080/api/subject';
    const headers = new HttpHeaders({
      'Content-Type': 'application/json'
      
    });
    
 
    this.http.get(apiUrl, { headers: headers })
      .subscribe((response:any) => {
        // Maneja la respuesta de la API aquí
        debugger
        if (response) {
          this.dataSource=response;
            this.dataSourceMatTable = new MatTableDataSource(this.dataSource);

        }
        debugger
 
      });
  }
  applyFilter(event: Event) {
    debugger
    const filterValue = (event.target as HTMLInputElement).value;
    this.dataSourceMatTable.filter = filterValue.trim().toLowerCase();
}
Volver(){
  const navigationExtras: NavigationExtras = {};
  this.router.navigateByUrl('table/course', navigationExtras);
 } 
  }
  