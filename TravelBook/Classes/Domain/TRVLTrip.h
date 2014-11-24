//
//  TRVLTrip.h
//  TravelBook
//
//  Created by Fabian Canas on 11/23/14.
//  Copyright (c) 2014 Fabián Cañas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRVLTrip : NSObject

@property (nonatomic, copy) NSDate *startDate;
@property (nonatomic, copy) NSDate *endDate;
@property (nonatomic, copy) NSDictionary *destination;

- (instancetype)initWithKey:(NSString *)key;

@end
