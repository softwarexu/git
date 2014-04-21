//
//  EventsBL.m
//  BusinessLogicLayer
//
//  Created by moonsi on 14-4-17.
//  Copyright (c) 2014年 moonsi. All rights reserved.
//

#import "EventsBL.h"

@implementation EventsBL

//查询所用数据方法
-(NSMutableArray*) readData
{
    EventsDAO *dao = [EventsDAO sharedManager];
    
    NSMutableArray* list  = [dao findAll];
    
    return list;
}

@end
