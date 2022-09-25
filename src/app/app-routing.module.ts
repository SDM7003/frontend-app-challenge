import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import {GraphicsCardListContainerComponent} from './graphics-card-list-container/graphics-card-list-container.component';
import {GraphicsCardDetailComponent} from './graphics-card-detail/graphics-card-detail.component';

const routes: Routes = [
  {path: 'graphics-cards', component: GraphicsCardListContainerComponent},
  {path: 'graphics-cards/:id', component: GraphicsCardDetailComponent},
  {path: '', pathMatch: 'full', redirectTo: 'graphics-cards'}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
