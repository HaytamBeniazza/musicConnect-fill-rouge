import { Injectable } from '@angular/core';
import { CanActivate, ActivatedRouteSnapshot, RouterStateSnapshot, Router } from '@angular/router';
import { AuthService } from '../services/auth.service';

@Injectable({
  providedIn: 'root'
})

export class loggedInGuard implements CanActivate {

  constructor(private router: Router, private authservice : AuthService) { }

  canActivate(
      next: ActivatedRouteSnapshot,
      state: RouterStateSnapshot): boolean {
      const token = localStorage.getItem('token') || this.authservice.authenticatedUser.value.id;
      if (token) {
          this.router.navigate(['/']);
          console.log('You are already logged in');
          return false;
      }
      if(this.authservice.authenticatedUser.value.role === 'admin'){
        this.router.navigate(['/admin']);
        console.log('You are already logged in as an admin');
        return false;
      }
      return true;
  }
}