import { Component, OnInit } from '@angular/core';
import {ActivatedRoute, Router} from '@angular/router';
import {ApiService} from '../service/api.service';
import {GraphicCard} from '../service/api.model';
import {BehaviorSubject, combineLatest, forkJoin, fromEvent, Observable, of} from 'rxjs';
import {map, startWith, take} from 'rxjs/operators';
import {FormControl} from '@angular/forms';

@Component({
  selector: 'app-graphics-card-list-container',
  templateUrl: './graphics-card-list-container.component.html',
  styleUrls: ['./graphics-card-list-container.component.css']
})
export class GraphicsCardListContainerComponent implements OnInit {

  constructor(private route: ActivatedRoute, private router:Router, private apiServ:ApiService) {}

  graphicsArray: BehaviorSubject<GraphicCard[]>=new BehaviorSubject<GraphicCard[]>([]);
  graphicCardItems$: Observable<GraphicCard[]>=this.graphicsArray.asObservable();
  filter: FormControl | undefined;
  filter$: Observable<string> | undefined;

  public currentPage: number=0;
  public pageSize: number=10;
  loading: boolean = false;
  manifactura: number=0;

  ngOnInit():void{
    this.getAllCardsItem();
  }

  getAllCardsItem(){
    this.loading=true;
    this.graphicCardItems$=this.apiServ.dataList;
    this.apiServ.getAllData(this.currentPage, this.pageSize).subscribe((data: any) => {
      this.apiServ._dataListSource.next(data);
    });
    this.getAsyncLoading();
  }

  getAsyncLoading(){
    const content = document.querySelector('.items');
    const scroll$ = fromEvent(content!, 'scroll').pipe(map(() => { return content!.scrollTop; }));

    scroll$.subscribe((scrollPos) => {
      let limit = content!.scrollHeight - content!.clientHeight;
      if (scrollPos === limit) {
        this.currentPage += this.pageSize;
        this.loading=true;
        // @ts-ignore
        forkJoin([this.graphicCardItems$.pipe(take(1)), this.apiServ.getAllData(this.currentPage, this.pageSize)]).subscribe((data: Array<Array<any>>) => {
          const newArr = [...data[0], ...data[1]];
          this.apiServ._dataListSource.next(newArr);
          console.log('Async operation has ended');
          this.loading=false;
        });
      }
    });
  }

  goToDetail(id: any):void{
    this.router.navigate(['graphics-cards',id]);
  }

  textFilter(searchString: string) {
    if (searchString == "") {
      this.getAllCardsItem();
    } else {
      this.graphicCardItems$ = this.graphicCardItems$.pipe(map(card =>
        card.filter(item =>
          item.name.toLowerCase().includes(searchString.toLowerCase())
        ))
      );
    }
  }
}
