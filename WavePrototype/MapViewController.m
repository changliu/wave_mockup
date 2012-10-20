//
//  MapViewController.m
//  WavePrototype
//
//  Created by Chang Liu on 10/18/12.
//  Copyright (c) 2012 Chang Liu. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController
@synthesize mapView;



- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = 37.8188;
    zoomLocation.longitude = -122.4784;
    
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 1000, 1000);
    MKCoordinateRegion adjustRegion = [mapView regionThatFits:viewRegion];
    [mapView setRegion:adjustRegion animated:YES];
    
    CLLocationCoordinate2D ggBridgeLocation;
    ggBridgeLocation.latitude = 37.8188;
    ggBridgeLocation.longitude = -122.4784;
    
    MKPointAnnotation *ggAnnotation = [[MKPointAnnotation alloc] init];
    ggAnnotation.coordinate = ggBridgeLocation;
    ggAnnotation.title = @"Golden Gate Bridge";
    ggAnnotation.subtitle = @"130 people are in this wave";
    
    [mapView addAnnotation:ggAnnotation];
    
    MKCoordinateRegion region = MKCoordinateRegionMake(ggBridgeLocation, MKCoordinateSpanMake(30, 40));
    [mapView setRegion:region];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
