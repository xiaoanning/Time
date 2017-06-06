//
//  NSDate.m
//  Time
//
//  Created by 安宁 on 2017/6/5.
//  Copyright © 2017年 安宁. All rights reserved.
//


#import "NSDate+Category.h"

KKDateFormatStr * const KKDateFormatyyyyMMddHHmmss  = @"yyyy-MM-dd HH:mm:ss.0" ;

@implementation NSDate (Category)

+(NSDate *)getDateFromString:(KKDateFormatStr *) dateStr  format:(KKDateFormatStr *)formatString
{
    NSDateFormatter * dateFormatter = [[NSDateFormatter alloc]init];

    dateFormatter.dateFormat = formatString ;
    
    NSDate * date = [dateFormatter dateFromString:dateStr];
    
    return date ;

}

+(KKDateFormatStr *)getStringFromDate:(NSDate *) date  format:(KKDateFormatStr *)formatString
{
    NSDateFormatter * dateFormatter = [[NSDateFormatter alloc]init];
    
    dateFormatter.dateFormat = formatString ;
    
    KKDateFormatStr * str = [dateFormatter stringFromDate:date];
    
    return str ;
    
}

@end
