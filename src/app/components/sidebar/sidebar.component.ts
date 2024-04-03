import { Component, OnInit } from '@angular/core';
import { Observable } from 'rxjs';
import { TUser } from 'src/app/model/TUser';
import { AuthService } from 'src/app/services/auth.service';

@Component({
  selector: 'app-sidebar',
  templateUrl: './sidebar.component.html',
  styleUrls: ['./sidebar.component.scss']
})
export class SidebarComponent{

  user : Observable<TUser>;
  constructor(private authService : AuthService){
    this.user = authService.authenticatedUser;
  }
  logout(){
    this.authService.logout();
  }

}
