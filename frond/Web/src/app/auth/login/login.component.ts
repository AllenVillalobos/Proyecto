import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Component } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { Router, NavigationExtras } from '@angular/router';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent {
  loginForm: FormGroup;

  constructor(
    private formBuilder: FormBuilder,
    private http: HttpClient,
    private router: Router) {
    this.loginForm = this.formBuilder.group(
      {
        username: ['', [Validators.required]],
        password: ['', [Validators.required]]
      }
    );
  }

  onLogin() {
    debugger;

    if (this.loginForm.valid) {
      // URL de la API que deseas llamar
      const apiUrl = 'http://localhost:8080/api/user/login';
      const usernameValue = this.loginForm.controls['username'].value ?? '';
      const passwordValue = this.loginForm.controls['password'].value ?? '';
      // Datos a enviar a la API
      const requestData = {
        email: usernameValue,
        password: passwordValue
      };

      // Encabezados HTTP (Content-Type)
      const headers = new HttpHeaders({
        'Content-Type': 'application/json'
      });

      this.http.post(apiUrl, requestData, { headers: headers })
        .subscribe((response) => {
          // Maneja la respuesta de la API aquí
          if(response){
            const navigationExtras: NavigationExtras = {};
            this.router.navigateByUrl('table', navigationExtras);
          }
       
        }, (error) => {
          // Maneja errores aquí
          console.error('Error al llamar a la API:', error);
          alert('usuario no existe')
        });
    }
  }

}
