//
//  TRVLLocation.h
//  TravelBook
//
//  Created by Fabian Canas on 11/24/14.
//  Copyright (c) 2014 Fabián Cañas. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <CoreLocation/CoreLocation.h>

@interface TRVLLocation : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) CLLocationCoordinate2D coordinate;
@end
