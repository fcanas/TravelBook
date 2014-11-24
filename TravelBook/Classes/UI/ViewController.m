//
//  ViewController.m
//  TravelBook
//
//  Created by Fabian Canas on 11/23/14.
//  Copyright (c) 2014 Fabián Cañas. All rights reserved.
//

#import "ViewController.h"

#import "TRVLTrip.h"

@interface ViewController ()
@property (nonatomic, strong) TRVLTrip *trip;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.trip = [[TRVLTrip alloc] initWithKey:@"trip0"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
