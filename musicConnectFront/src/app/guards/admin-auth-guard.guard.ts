import { ActivatedRouteSnapshot, CanActivate, Router, RouterStateSnapshot } from '@angular/router';
import { AuthService } from '../services/auth.service';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})

export class adminAuthGuardGuard implements CanActivate {

  constructor(private router: Router, private authservice : AuthService) { }

  canActivate(
      next: ActivatedRouteSnapshot,
      state: RouterStateSnapshot): boolean {
      const isAdmin = this.authservice.authenticatedUser.value.role === 'ADMIN';
      if (!isAdmin) {
          this.router.navigate(['/']);
          return false;
      }
      return true;
  }
}