//
//  CountDownViewController.m
//  2017Olympics
//
//  Created by moonsi on 14-4-17.
//  Copyright (c) 2014年 moonsi. All rights reserved.
//

#import "CountDownViewController.h"

@interface CountDownViewController ()

@end

@implementation CountDownViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //创建NSDateComponents对象
    NSDateComponents *comps = [[NSDateComponents alloc] init];
    //设置NSDateComponents日期
    [comps setDay:5];
    //设置NSDateComponents月
    [comps setMonth:8];
    //设置NSDateComponents年
    [comps setYear:2016];
    //创建日历对象
    NSCalendar *calender = [[NSCalendar alloc]
                            initWithCalendarIdentifier:NSGregorianCalendar];
    //获得2016-8-5日的NSDate日期对象
    NSDate *destinationDate = [calender dateFromComponents:comps];
    //获得当前日期到2016-8-5时间的NSDateComponents对象
    NSDateComponents *components = [calender components:NSDayCalendarUnit
                                               fromDate:[NSDate date] toDate:destinationDate options:0];
    //获得当前日期到2016-8-5相差的天数
    int days = [components day];
    
    NSMutableAttributedString *attributedTextHolder =
    [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"%i天",days]];
    
    [attributedTextHolder addAttribute:NSFontAttributeName
                                 value:[UIFont preferredFontForTextStyle:UIFontTextStyleBody]
                                 range:NSMakeRange(attributedTextHolder.length - 1, 1)];
    
    self.aaaaaa.attributedText = attributedTextHolder;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
