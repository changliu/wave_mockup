//
//  FriendDetailViewController.m
//  WavePrototype
//
//  Created by Chang Liu on 10/20/12.
//  Copyright (c) 2012 Chang Liu. All rights reserved.
//

#import "FriendDetailViewController.h"

@interface FriendDetailViewController ()

@end

@implementation FriendDetailViewController

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
    friendBackups = [[NSMutableArray alloc] initWithObjects:@"Jay gave it 4 stars. 'It has the best Mocha'!", @" Sheta gave it 4.5 stars. ' Great place to meet friends.'", @" Chang gave it 5 stars. 'Favorite place in Menlo Park!'", @" Mike gave it 3 stars. 'Good food, too pricy'", nil];
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
    return [friendBackups count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"detailCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = [friendBackups objectAtIndex:indexPath.row];
    cell.textLabel.font = [UIFont fontWithName:@"Arial" size:14.0f];
    
    return cell;
}






//#pragma mark - Table view delegate
//
//-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    //    NSLog(@"calling did select cell");
//    
//    [self performSegueWithIdentifier:@"goThere" sender:indexPath];
//    
//}



@end
