//
//  ViewController.m
//  TravelBook
//
//  Created by Fabian Canas on 11/23/14.
//  Copyright (c) 2014 Fabián Cañas. All rights reserved.
//

#import "ViewController.h"

#import <FormatterKit/TTTTimeIntervalFormatter.h>
#import "TRVLTrip.h"

@interface ViewController ()
@property (nonatomic, strong) TRVLTrip *trip;
@property (weak, nonatomic) IBOutlet UILabel *headerLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.trip = [[TRVLTrip alloc] initWithKey:@"trip0"];
}

- (IBAction)refreshButton:(id)sender
{
    TTTTimeIntervalFormatter *timeFormatter = [[TTTTimeIntervalFormatter alloc] init];
    self.headerLabel.text = [NSString stringWithFormat:@"Trip to %@ starting %@",
                             self.trip.destination.name,
                             [timeFormatter stringForTimeIntervalFromDate:[NSDate date]
                                                                   toDate:self.trip.startDate]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
