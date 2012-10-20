//
//  FriendsWaveViewController.h
//  WavePrototype
//
//  Created by Chang Liu on 10/20/12.
//  Copyright (c) 2012 Chang Liu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FriendsWaveViewController : UIViewController < UITableViewDataSource, UITableViewDelegate> {
    NSMutableArray * recommends;
    NSMutableArray * friendsList;
}

@end
