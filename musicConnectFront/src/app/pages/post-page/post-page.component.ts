import { Component, OnInit } from '@angular/core';
import { PostService } from 'src/app/services/post.service';

@Component({
  selector: 'app-post-page',
  templateUrl: './post-page.component.html',
  styleUrls: ['./post-page.component.scss']
})
export class PostPageComponent implements OnInit{

  posts: any[] = [];

  constructor(
    private postService: PostService,
  ) { }

  ngOnInit(): void {
    this.getall();
  }

  getall(): void {
    this.postService.getAll()
      .subscribe(posts => {
        this.posts = posts;
      });
      console.log("posts");
      console.log(this.posts);
  }

}
