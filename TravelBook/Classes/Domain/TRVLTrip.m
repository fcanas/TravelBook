//
//  TRVLTrip.m
//  TravelBook
//
//  Created by Fabian Canas on 11/23/14.
//  Copyright (c) 2014 Fabián Cañas. All rights reserved.
//

#import "TRVLTrip.h"

#import <Firebase/Firebase.h>
#import <ISO8601DateFormatter/ISO8601DateFormatter.h>
#import <OHMKit/ObjectMapping.h>

@interface TRVLTrip ()
@property (nonatomic, strong) Firebase *firebase;
@end

@implementation TRVLTrip

+ (void)load
{
    OHMMappable([TRVLTrip class]);
    
    static ISO8601DateFormatter *dateFormatter;
    dateFormatter = [[ISO8601DateFormatter alloc] init];
    
    OHMValueAdapterBlock dateTranform = ^NSDate *(NSString *dateString){
        return [dateFormatter dateFromString:dateString];
    };
    
    OHMSetAdapter([TRVLTrip class], @{NSStringFromSelector(@selector(startDate)) : dateTranform,
                                      NSStringFromSelector(@selector(endDate)) : dateTranform,});
}


@end
