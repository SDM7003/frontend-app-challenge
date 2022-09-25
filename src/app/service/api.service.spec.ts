import {ComponentFixture, TestBed} from '@angular/core/testing';
import {RouterTestingModule} from '@angular/router/testing';
import { ApiService } from './api.service';
import {HttpClientTestingModule, HttpTestingController} from '@angular/common/http/testing';
import {GraphicsCardListContainerComponent} from '../graphics-card-list-container/graphics-card-list-container.component';
import {RouterModule} from '@angular/router';

describe('ApiService', () => {
  let service: ApiService;
  let httpMock: HttpTestingController;
  let  HS_API_URL='http://localhost:3000';
  let GCL:GraphicsCardListContainerComponent;
  let currentPage=0;
  let pageSize=10;

  beforeEach( () => {
    TestBed.configureTestingModule({
      imports:[HttpClientTestingModule, RouterTestingModule, RouterModule.forRoot([])],
      declarations: [GraphicsCardListContainerComponent ]
    });
    service = TestBed.inject(ApiService);
    httpMock = TestBed.inject(HttpTestingController);
  });

  afterEach(() => {
    httpMock.verify();
  });

  it('should return an empty array if an Interal Server Error occurs', (done) => {

    service.getAllData(currentPage, pageSize).subscribe((data: any) => {
      service._dataListSource.next(data);
    });

    const testRequest = httpMock.expectOne(`${HS_API_URL}/cardList?_start=${currentPage}&_limit=${pageSize}`);
    expect(testRequest.request.method).toBe('GET');
    testRequest.flush({}, { status: 500, statusText: 'Internal Server Error' });

  })

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
