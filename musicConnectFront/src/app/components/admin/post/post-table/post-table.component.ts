import { Component, OnInit, ViewChild } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { PopupComponent } from 'src/app/components/popup/popup.component';
import { PostService } from 'src/app/services/post.service';

@Component({
  selector: 'app-post-table',
  templateUrl: './post-table.component.html',
  styleUrls: ['./post-table.component.scss']
})
export class PostTableComponent implements OnInit{
  posts: any[] = [];
  postForm!: FormGroup;
  @ViewChild(PopupComponent) popupComponent!: PopupComponent;


  constructor(
    private postService: PostService,
    private formBuilder: FormBuilder
  ) { }

  ngOnInit(): void {
    this.getall();
    this.initializePostForm();
  }

  getall(): void {
    this.postService.getAll()
      .subscribe(posts => {
        this.posts = posts;
      });
      console.log("posts");
      console.log(this.posts);
  }

  initializePostForm(): void {
    const isoDateString = new Date(Date.now()).toISOString();
    this.postForm = this.formBuilder.group({
      name: ['', Validators.required],
      description: ['', Validators.required],
      image: ['', Validators.required],
      date: [isoDateString, Validators.required]
    });
  }


    deletePost(postId: number): void {
    this.postService.delete(postId)
      .subscribe(() => {
        this.posts = this.posts.filter(post => post.id !== postId);
      });
  }

  
  addPost(): void {
    if (this.postForm.valid) {
      const newPost: any = this.postForm.value;
      this.postService.add(newPost)
        .subscribe((post: any) => {
          this.getall();
          this.postForm.reset();
          this.popupComponent.Toggle();
        });
    } else {
      console.error('Form is invalid');
    }
  }
}
