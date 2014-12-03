//
//  TRVLRoot.m
//  TravelBook
//
//  Created by Fabian Canas on 11/24/14.
//  Copyright (c) 2014 Fabián Cañas. All rights reserved.
//

#import "TRVLRoot.h"

#import <Firebase/Firebase.h>

@interface TRVLRoot ()
@property (nonatomic, strong) Firebase *firebase;
@end

@implementation TRVLRoot

- (instancetype)initWithKey:(NSString *)key
{
    self = [super init];
    
    if (self == nil) {
        return nil;
    }
    
    NSURLComponents *firebaseURLComponents = [[NSURLComponents alloc] init];
    firebaseURLComponents.host = FIREBASE_HOST_NAME;
    firebaseURLComponents.path = [NSString stringWithFormat:@"/%@", key];
    firebaseURLComponents.scheme = @"https";
    
    _firebase = [[Firebase alloc] initWithUrl:firebaseURLComponents.string];
    
    [_firebase observeEventType:FEventTypeValue withBlock:^(FDataSnapshot *snapshot) {
        NSLog(@"%@", snapshot.value);
        [self setValuesForKeysWithDictionary:snapshot.value];
    } withCancelBlock:^(NSError *error) {
        NSLog(@"%@", error.description);
    }];
    
    return self;
}

@end