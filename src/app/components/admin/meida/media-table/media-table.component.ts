import { Component, OnInit, ViewChild } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';
import { PopupComponent } from 'src/app/components/popup/popup.component';
// import { MediaService } from 'src/app/services/media.service';

@Component({
  selector: 'app-media-table',
  templateUrl: './media-table.component.html',
  styleUrls: ['./media-table.component.scss']
})
export class MediaTableComponent implements OnInit{
  // media: any[] = [];
  // mediaForm!: FormGroup;
  // @ViewChild(PopupComponent) popupComponent!: PopupComponent;


  // constructor(
  //   private mediaService: MediaService,
  //   private formBuilder: FormBuilder
  // ) { }

  ngOnInit(): void {
    // this.getall();
    // this.initializePetForm();
  }

  // getall(): void {
  //   this.mediaService.getAll()
  //     .subscribe(media => {
  //       this.media = media;
  //     });
  // }

  // // deletePet(petId: number): void {
  // //   this.postService.delete(petId)
  // //     .subscribe(() => {
  // //       this.pets = this.pets.filter(pet => pet.id !== petId);
  // //     });
  // // }

  // initializePetForm(): void {
  //   this.mediaForm = this.formBuilder.group({
  //     src: ['', Validators.required],
  //     description: ['', Validators.required],
  //     date: ['', Validators.required],
  //     cover: ['', Validators.required],
  //     media: ['', Validators.required]

  //   });
  // }

  // addPost(): void {
  //   if (this.postForm.valid) {
  //     const newPet: any = this.postForm.value;
  //     this.postService.add(newPet)
  //       .subscribe((pet: any) => {
  //         this.getall();
  //         this.postForm.reset();
  //         this.popupComponent.Toggle();
  //       });
  //   } else {
  //     console.error('Form is invalid');
  //   }
  // }
}
