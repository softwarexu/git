//
//  EventsViewController.h
//  2017Olympics
//
//  Created by moonsi on 14-4-17.
//  Copyright (c) 2014年 moonsi. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "EventsViewCell.h"
#import "EventsBL.h"
#import "Events.h"
#import "EventsDetailViewController.h"


@interface EventsViewController : UICollectionViewController
{
    //一行中列数
    NSUInteger COL_COUNT;
}

@property (strong, nonatomic) NSArray * events;

@end
