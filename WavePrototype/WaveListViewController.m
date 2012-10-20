//
//  WaveListViewController.m
//  WavePrototype
//
//  Created by Chang Liu on 10/18/12.
//  Copyright (c) 2012 Chang Liu. All rights reserved.
//

#import "WaveListViewController.h"

@interface WaveListViewController ()

@end

@implementation WaveListViewController


- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    waves = [[NSMutableArray alloc]initWithObjects:@" A wave of 130 people within 0.5 mile of you are going to the Apple Store", @" A wave of 90 people within 0.6 mile of you are checking out Stanford Bookstore", @"A wave of 60 people within 1.0 mile of you are going to Ike's Sandwich Place", @"A large wave is heading over Golden Gate Bridge", @" A medium wave is forming at Zara on Market St", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [waves count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"waveCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = [waves objectAtIndex:indexPath.row];
    cell.textLabel.font = [UIFont fontWithName:@"Arial" size:11.0f];
    
    return cell;
}






#pragma mark - Table view delegate

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //    NSLog(@"calling did select cell");

    [self performSegueWithIdentifier:@"waveDetail" sender:indexPath];
    
}

@end
