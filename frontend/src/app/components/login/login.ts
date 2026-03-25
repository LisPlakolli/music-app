import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { Router } from '@angular/router';
import { UserService } from '../../services/user.service';

@Component({
  selector: 'app-login',
  standalone: true,
  imports: [CommonModule, FormsModule],
  templateUrl: './login.html',
  styleUrl: './login.css'
})
export class Login {
  loginUsername = '';
  loginPassword = '';

  registerUsername = '';
  registerEmail = '';
  registerPassword = '';

  message = '';

  constructor(
    private userService: UserService,
    private router: Router
  ) {}

  onLogin(): void {
    this.userService.login(this.loginUsername, this.loginPassword).subscribe({
      next: (user) => {
        this.userService.setCurrentUser(user);
        this.message = `Logged in as ${user.username}`;
        this.router.navigate(['/']);
      },
      error: () => {
        this.message = 'Invalid username or password';
      }
    });
  }

  onRegister(): void {
    this.userService.register({
      username: this.registerUsername,
      email: this.registerEmail,
      password: this.registerPassword
    }).subscribe({
      next: (user) => {
        this.userService.setCurrentUser(user);
        this.message = `Account created for ${user.username}`;
        this.router.navigate(['/']);
      },
      error: () => {
        this.message = 'Username or email already exists';
      }
    });
  }
}
