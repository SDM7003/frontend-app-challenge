import { Injectable } from '@angular/core';
import {GraphicCard} from './api.model';
import {HttpClient, HttpErrorResponse, HttpHeaders} from '@angular/common/http';
import {catchError, delay, map} from 'rxjs/operators';
import {BehaviorSubject, Observable, of} from 'rxjs';


const httpOptionsLogin = {
  headers: new HttpHeaders({
    'Content-Type':  'application/json'
  })
};
@Injectable({
  providedIn: 'root'
})
export class ApiService {

  constructor(private http:HttpClient) { }

  private readonly HS_API_URL='http://localhost:3000';
  private headers = new HttpHeaders;
  graphicsArray: BehaviorSubject<GraphicCard[]>=new BehaviorSubject<GraphicCard[]>([]);
  graphicCardItems$: Observable<GraphicCard[]>=this.graphicsArray.asObservable();

  // @ts-ignore
  _dataListSource: BehaviorSubject<GraphicCard[]> = new BehaviorSubject([]);
  dataList: Observable<GraphicCard[]> = this._dataListSource.asObservable();

  /* REST Connection */
  public getAllData(pageNumber: number, pageSize: number){
    return this.http.get(`${this.HS_API_URL}/cardList?_start=${pageNumber}&_limit=${pageSize}`).pipe(delay(1000)).pipe(
      // @ts-ignore
      catchError((error: HttpErrorResponse) => {
        if (error.status === 500) {
          return of([]);
        }
      })
    );
  }
  public getGraphicCard(id:number):any{
    return this.http.get<GraphicCard>(`${this.HS_API_URL}/card/${id}`);
  }
}
