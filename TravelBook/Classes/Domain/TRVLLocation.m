//
//  TRVLLocation.m
//  TravelBook
//
//  Created by Fabian Canas on 11/24/14.
//  Copyright (c) 2014 Fabián Cañas. All rights reserved.
//

#import "TRVLLocation.h"

#import <OHMKit/ObjectMapping.h>

@implementation TRVLLocation

+ (void)load
{
    OHMMappable([TRVLLocation class]);
    
    OHMValueAdapterBlock coordinateAdapter = ^NSValue *(NSDictionary *coordinateDictionary){
        CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake([coordinateDictionary[@"latitude"] doubleValue],
                                   [coordinateDictionary[@"longitude"] doubleValue]);
        return [NSValue valueWithBytes:&coordinate objCType:@encode(CLLocationCoordinate2D)];
    };
    
    OHMSetAdapter([TRVLLocation class], @{NSStringFromSelector(@selector(coordinate)) : coordinateAdapter});
}

@end
