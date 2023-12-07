import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { CourseComponent } from './course/course.component';
import { LoginComponent } from './auth/login/login.component';
import { RegisterComponent } from './auth/register/register.component';
import { LayoutComponent } from './layout/layout.component';
import { SubjectComponent } from './subject/subject.component';
import { QuizzComponent } from './quizz/quizz.component';

const routes: Routes = [
  {
    path:'course',
    component:CourseComponent
  },
  {
    path:'',
    component:LoginComponent
  },
  {
    path:'login',
    component:LoginComponent
  },
  {
    path:'register',
    component:RegisterComponent
  },
  {
    path:'table',
    component:LayoutComponent,
    children:[
      {
      path:'',
      redirectTo:'course',
      pathMatch:'full'
      },
      {
        path:'course',
        component:CourseComponent
      },
      {
        path:'subject',
        component:SubjectComponent
      },
      {
        path:'quiz',
        component:QuizzComponent
      }
    ]

  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
