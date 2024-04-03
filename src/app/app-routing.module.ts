import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './pages/home/home.component';
import { LoginComponent } from './pages/login/login.component';
import { RegisterComponent } from './pages/register/register.component';
import { PostPageComponent } from './pages/post-page/post-page.component';
import { PostDetailsComponent } from './pages/post-details/post-details.component';
import { loggedInGuard } from './guards/logged-in.guard';
import { PostTableComponent } from './components/admin/post/post-table/post-table.component';
import { adminAuthGuardGuard } from './guards/admin-auth-guard.guard';
import { isAccountNoneGuard } from './guards/is-account-none.guard';

const routes: Routes = [
  { path: '', component: HomeComponent },
  { path: 'login', component: LoginComponent, canActivate: [loggedInGuard]},
  { path: 'register', component: RegisterComponent, canActivate: [loggedInGuard]},
  { path: 'posts', component: PostPageComponent},
  { path: 'details', component: PostDetailsComponent},
  { path: 'manageposts', component: PostTableComponent, canActivate: [adminAuthGuardGuard, isAccountNoneGuard]}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
