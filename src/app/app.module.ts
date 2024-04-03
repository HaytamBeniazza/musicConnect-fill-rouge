import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule } from '@angular/forms';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { StoreModule } from '@ngrx/store';
import { SidebarComponent } from './components/sidebar/sidebar.component';
import { HomeComponent } from './pages/home/home.component';
import { FooterComponent } from './components/footer/footer.component';
import { PostComponent } from './components/post/post.component';
import { LoginComponent } from './pages/login/login.component';
import { RegisterComponent } from './pages/register/register.component';
import { ReactiveFormsModule } from '@angular/forms';
import { HTTP_INTERCEPTORS, HttpClientModule } from '@angular/common/http';
import { PostTableComponent } from './components/admin/post/post-table/post-table.component';
import { PopupComponent } from './components/popup/popup.component';
import { PostPageComponent } from './pages/post-page/post-page.component';
import { PostDetailsComponent } from './pages/post-details/post-details.component';
import { AuthInterceptor } from './interceptor/auth.interceptor';
import { MediaTableComponent } from './components/admin/meida/media-table/media-table.component';


@NgModule({
  declarations: [
    AppComponent,
    SidebarComponent,
    HomeComponent,
    FooterComponent,
    PostComponent,
    LoginComponent,
    RegisterComponent,
    PostTableComponent,
    PopupComponent,
    PostPageComponent,
    PostDetailsComponent,
    MediaTableComponent,
  
    
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    StoreModule.forRoot({}, {}),
    ReactiveFormsModule,
    HttpClientModule,
    FormsModule
  ],
  providers: [
    {
      provide: HTTP_INTERCEPTORS,
      useClass: AuthInterceptor,
      multi: true
    }

  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
