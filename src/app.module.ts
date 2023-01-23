import { Module } from '@nestjs/common';
import { OrderTrendController } from './Controllers/OrderTrend.controller';
import { PrismaService } from './Providers/prisma.service';
import { OrderTrendService } from './Providers/orderTrend.service';

@Module({
  imports: [],
  controllers: [OrderTrendController],
  providers: [OrderTrendService,PrismaService],
})
export class AppModule {}
