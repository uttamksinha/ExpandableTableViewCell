//
//  ViewController.h
//  Assignment
//
//  Created by Uttam Kumar Sinha on 6/9/15.
//  Copyright (c) 2015 Uttam Kumar Sinha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property(strong,nonatomic) NSIndexPath *expandedIndex;
@property (weak, nonatomic) IBOutlet UITableView *tblView;

@end

