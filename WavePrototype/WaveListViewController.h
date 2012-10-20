//
//  WaveListViewController.h
//  WavePrototype
//
//  Created by Chang Liu on 10/18/12.
//  Copyright (c) 2012 Chang Liu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WaveListViewController : UIViewController  <UITableViewDataSource, UITableViewDelegate> {
    NSMutableArray *waves;
}

@end
