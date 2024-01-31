ng new amazon-login
cd amazon-login
ng generate component login

ng serve

import { Component } from '@angular/core';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent {
  email: string = '';
  password: string = '';

  login() {
    
    console.log('Login clicked');
  }
}

import { FormsModule } from '@angular/forms';

@NgModule({
  declarations: [ 
  
    LoginComponent,
  ],
  imports: [
    FormsModule,
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }


html

<!-- src/app/login/login.component.html -->
<div class="login-container">
  <h2>Login</h2>
  <form (ngSubmit)="login()">
    <label for="email">Email:</label>
    <input type="email" id="email" [(ngModel)]="email" name="email" required>

    <label for="password">Password:</label>
    <input type="password" id="password" [(ngModel)]="password" name="password" required>

    <button type="submit">Login</button>
  </form>
</div>


css

.login-container {
  max-width: 300px;
  margin: 0 auto;
  padding: 20px;
  border: 1px solid #ccc;
  border-radius: 5px;
}

label {
  display: block;
  margin-bottom: 5px;
}

input {
  width: 100%;
  padding: 8px;
  margin-bottom: 10px;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 10px 15px;
  border: none;
  border-radius: 3px;
  cursor: pointer;
}

