//
//  NSDate.h
//  Time
//
//  Created by 安宁 on 2017/6/5.
//  Copyright © 2017年 安宁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NSString KKDateFormatStr ;

UIKIT_EXTERN KKDateFormatStr * const KKDateFormatyyyyMMddHHmmss ; //yyyy-MM-dd HH:mm:ss.0


@interface NSDate (Category)

+(NSDate *)getDateFromString:(KKDateFormatStr *) dateStr  format:(KKDateFormatStr *)formatString ;
+(KKDateFormatStr *)getStringFromDate:(NSDate *) date  format:(KKDateFormatStr *)formatString ;

@end
