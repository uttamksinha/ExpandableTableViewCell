//
//  ViewController.m
//  Assignment
//
//  Created by Uttam Kumar Sinha on 6/9/15.
//  Copyright (c) 2015 Uttam Kumar Sinha. All rights reserved.
//

#import "ViewController.h"
#import "TVCCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TVCCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellIdentifier" forIndexPath:indexPath];
    if(self.expandedIndex==indexPath){
        [cell.toggleBtn setTitle:@"Collapse" forState:UIControlStateNormal];
    }else{
        [cell.toggleBtn setTitle:@"Expand" forState:UIControlStateNormal];
    }
    [cell.toggleBtn setTag:indexPath.row];
    [cell.toggleBtn addTarget:self action:@selector(showHide:) forControlEvents:UIControlEventTouchUpInside];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(self.expandedIndex==indexPath){
        return 96;
    }
    return 66;
}

-(void) showHide:(UIButton*)sender{
    NSLog(@"%ld",(long)sender.tag);
    self.expandedIndex=nil;
    if([sender.titleLabel.text isEqualToString:@"Expand"]){
    self.expandedIndex=[NSIndexPath indexPathForRow:sender.tag inSection:0];
    }
    [self.tblView reloadData];
}

@end
