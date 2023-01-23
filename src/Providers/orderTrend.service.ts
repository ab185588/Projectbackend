import { Injectable } from "@nestjs/common/decorators";
import { PrismaPromise } from "@prisma/client";
import igeneralservice from "src/Interfaces/igeneralOrderservice";
import {OrderData} from '../dtos/orderTrenddto';
import { PrismaService } from './prisma.service';

@Injectable()
export class OrderTrendService implements igeneralservice{

    constructor(private prismautil:PrismaService){}

    async getOrderTrend() : Promise<OrderData[]> {
        return this.prismautil.$queryRaw `exec orderTrendUtilProc`;
    }
    async getSpecificOrderTrend(num : number) : Promise<OrderData[]>{
    console.log(num)
    return this.prismautil.$queryRaw `exec orderSpecificTrendUtilProc ${num}`;
    }

    
}