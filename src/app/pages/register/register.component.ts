import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';
import { AuthService } from 'src/app/services/auth.service';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.scss']
})
export class RegisterComponent implements OnInit{

  ngOnInit() {
      
  }
  registerForm: FormGroup;
  constructor(private fb: FormBuilder, private authService: AuthService) {
    this.registerForm = this.fb.group({
      username: [''],
      email: [''],
      password: [''],
      profilePicture: [''],
      role: [''],
  });
}

  onSubmit() {
    this.authService.register(this.registerForm);
  }
}
