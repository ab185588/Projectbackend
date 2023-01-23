
import { Controller, Get, Param } from '@nestjs/common';
import { OrderData } from 'src/dtos/orderTrenddto';
import {OrderTrendService} from '../Providers/orderTrend.service'

@Controller('OrderTrends')
export class OrderTrendController {
  constructor(private readonly orderTrendService : OrderTrendService){}
  @Get()
  async getOrdersData() : Promise<OrderData[]> {
    return  this.orderTrendService.getOrderTrend();
  }
  @Get(':id')
  async getSpecificOrdersData(@Param() params) : Promise<OrderData[]>{
    return this.orderTrendService.getSpecificOrderTrend(params.id);
  }
  
}