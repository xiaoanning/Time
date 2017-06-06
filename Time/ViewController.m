//
//  ViewController.m
//  Time
//
//  Created by 安宁 on 2017/6/5.
//  Copyright © 2017年 安宁. All rights reserved.
//

#import "ViewController.h"
#import "NSCalendar+Category.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

 
    [self test];
}


-(void)test
{
    NSDateComponents * dateComponents = [NSCalendar components:KKDefaultCalendarUnit fromDate:@"2017-05-23 23:59:59" toDate:[NSDate getStringFromDate:[NSDate date] format:KKDateFormatyyyyMMddHHmmss] dateFormat:KKDateFormatyyyyMMddHHmmss options:NSCalendarWrapComponents];
    
    NSLog(@" %@ ",dateComponents);
    
    
    dateComponents = [[NSCalendar currentCalendar]components:KKDefaultCalendarUnit fromDate:[NSDate getDateFromString:@"2017-05-23 23:59:59" format:KKDateFormatyyyyMMddHHmmss] toDate:[NSDate date] options:NSCalendarWrapComponents];

    NSLog(@" %@ ",dateComponents);

}




@end
