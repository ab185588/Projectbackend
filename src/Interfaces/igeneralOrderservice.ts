import { OrderData } from "../dtos/orderTrenddto";

export default interface igeneralOrderservice{

     getOrderTrend() : Promise<OrderData[]> 
     
     getSpecificOrderTrend(num:number) : Promise<OrderData[]>
}