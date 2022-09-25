import { Component, OnInit } from '@angular/core';
import {ActivatedRoute, Router} from '@angular/router';
import {ApiService} from '../service/api.service';

@Component({
  selector: 'app-graphics-card-detail',
  templateUrl: './graphics-card-detail.component.html',
  styleUrls: ['./graphics-card-detail.component.css']
})
export class GraphicsCardDetailComponent implements OnInit {

  public card: any;
  public graphicsCard=[];

  constructor(private router:Router, private route:ActivatedRoute, private apiService:ApiService) {
    // @ts-ignore
    this.graphicsCard.push(this.route.params.subscribe(params=>{
      let id=params['id'];
      this.apiService.getGraphicCard(id).subscribe((card: any)=>{
        this.card=card;
      })
    }))
  }

  ngOnInit(): void {
    this.route.params.subscribe( params => {
      this.card = this.apiService.getGraphicCard(params.id);
    });
  }

  backToMain(){
    window.history.back();
  }
}
