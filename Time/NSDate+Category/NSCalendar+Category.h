//
//  NSCalendar.h
//  Time
//
//  Created by 安宁 on 2017/6/5.
//  Copyright © 2017年 安宁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDate+Category.h"

UIKIT_EXTERN NSCalendarUnit const KKDefaultCalendarUnit ; //年月日时分秒 周

@interface NSCalendar (Category)

+ (NSDateComponents *)components:(NSCalendarUnit)unitFlags fromDate:(KKDateFormatStr *)startingDateString toDate:(KKDateFormatStr *)resultDateString dateFormat:(KKDateFormatStr *)dateFormat options:(NSCalendarOptions)opts ;

@end
