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

@interface TRVLTrip ()
@property (nonatomic, strong) Firebase *firebase;
@end

@implementation TRVLTrip

- (instancetype)initWithKey:(NSString *)key
{
    self = [super init];
    
    if (self == nil) {
        return nil;
    }
    
    NSLog(@"FIREBASE_HOST_NAME");
    
    NSURLComponents *firebaseURLComponents = [[NSURLComponents alloc] init];
    firebaseURLComponents.host = FIREBASE_HOST_NAME;
    firebaseURLComponents.path = [NSString stringWithFormat:@"/%@", key];
    firebaseURLComponents.scheme = @"https";
    
    self.firebase = [[Firebase alloc] initWithUrl:firebaseURLComponents.string];
    
    [self.firebase observeEventType:FEventTypeValue withBlock:^(FDataSnapshot *snapshot) {
        NSLog(@"%@", snapshot.value);
    } withCancelBlock:^(NSError *error) {
        NSLog(@"%@", error.description);
    }];
    
    return self;
}

@end
