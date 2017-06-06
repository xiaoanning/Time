//
//  NSCalendar.m
//  Time
//
//  Created by 安宁 on 2017/6/5.
//  Copyright © 2017年 安宁. All rights reserved.
//

#import "NSCalendar+Category.h"

NSCalendarUnit const KKDefaultCalendarUnit  =  NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond | NSCalendarUnitWeekday ;


@implementation NSCalendar (Category)

+ (NSDateComponents *)components:(NSCalendarUnit)unitFlags fromDate:(KKDateFormatStr *)startingDateString toDate:(KKDateFormatStr *)resultDateString dateFormat:(KKDateFormatStr *)dateFormat options:(NSCalendarOptions)opts
{
    NSDate * startingDate = [NSDate getDateFromString:startingDateString format:dateFormat];
    
    NSDate * resultDate = [NSDate getDateFromString:resultDateString format:dateFormat];
    
    
    NSCalendar * calendar = [NSCalendar currentCalendar];
    
    
    NSDateComponents * dateComponents = [calendar components:unitFlags fromDate:startingDate toDate:resultDate options:opts];

    return dateComponents ;
}

@end
