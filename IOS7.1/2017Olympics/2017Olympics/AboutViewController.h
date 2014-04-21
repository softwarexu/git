//
//  AboutViewController.h
//  2017Olympics
//
//  Created by moonsi on 14-4-17.
//  Copyright (c) 2014年 moonsi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GADBannerView.h"

#define kSampleAdUnitID @"a14df1974738141"

@interface AboutViewController : UIViewController <GADBannerViewDelegate>

@property (strong, nonatomic) GADBannerView *bannerView;


- (GADRequest *)createRequest;

@end
