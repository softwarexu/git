//
//  ScheduleBL.h
//  BusinessLogicLayer
//
//  Created by moonsi on 14-4-17.
//  Copyright (c) 2014年 moonsi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ScheduleDAO.h"
#import "Schedule.h"
#import "EventsDAO.h"
#import "Events.h"

@interface ScheduleBL : NSObject

//查询所用数据方法
-(NSMutableDictionary*) readData;

@end
