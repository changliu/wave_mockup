//
//  FriendsWaveViewController.m
//  WavePrototype
//
//  Created by Chang Liu on 10/20/12.
//  Copyright (c) 2012 Chang Liu. All rights reserved.
//

#import "FriendsWaveViewController.h"

@interface FriendsWaveViewController ()

@end

@implementation FriendsWaveViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    recommends = [[NSMutableArray alloc] initWithObjects:@"Golden Gate Bridge", @"Stanford Bookstore", @"Silicon Valley Film Festival", @"Zen Lounge", @"Cafe Borrone", nil];
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
    return [recommends count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"recommendCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = [recommends objectAtIndex:indexPath.row];
    cell.textLabel.font = [UIFont fontWithName:@"Arial" size:15.0f];
    
    return cell;
}






#pragma mark - Table view delegate

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //    NSLog(@"calling did select cell");
    
    [self performSegueWithIdentifier:@"recommends" sender:indexPath];
    
}

@end
