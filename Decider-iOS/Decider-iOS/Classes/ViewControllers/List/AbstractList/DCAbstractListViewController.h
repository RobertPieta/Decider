//
//  DCAbstractListViewController.h
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCAbstractViewController.h"

@interface DCAbstractListViewController : DCAbstractViewController <UITableViewDelegate,UITableViewDataSource> {
    IBOutlet UITableView *listTableView;
}
@property(nonatomic, strong) NSArray *contents;

#pragma mark -
#pragma mark UITableView Methods

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;

#pragma mark -
#pragma mark Cell Methods

-(NSString*)cellIdentifierForTableView:(UITableView*)tableView;
-(void)updateCell:(UITableViewCell*)cell atIndexPath:(NSIndexPath*)path forTableView:(UITableView*)tableView;

#pragma mark -
#pragma mark Segue Methods

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;

@end