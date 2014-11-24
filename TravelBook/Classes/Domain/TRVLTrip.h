//
//  TRVLTrip.h
//  TravelBook
//
//  Created by Fabian Canas on 11/23/14.
//  Copyright (c) 2014 Fabián Cañas. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "TRVLLocation.h"
#import "TRVLRoot.h"

@interface TRVLTrip : TRVLRoot

@property (nonatomic, copy) NSDate *startDate;
@property (nonatomic, copy) NSDate *endDate;
@property (nonatomic, strong) TRVLLocation *destination;

@end
