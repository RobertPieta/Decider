//
//  DCEventListViewController.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCEventListViewController.h"
#import "DCPartialEventModel.h"
#import "DCPartialTodoModel.h"

#import "DCTodosForEventRequest.h"

#import "DCTodoListViewController.h"

@interface DCEventListViewController() {
@private
    DCTodosForEventRequest *_request;
    NSArray *todoArray;
}

@end

@implementation DCEventListViewController

-(void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark -
#pragma mark IBAction Methods

-(IBAction)logoutPushed:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

-(IBAction)newEventPushed:(id)sender {
    [self performSegueWithIdentifier:Segue_ToCreateEventView sender:self];
}

#pragma mark -
#pragma mark UITableView Methods

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [super tableView:tableView didSelectRowAtIndexPath:indexPath];
    
    DCPartialEventModel *event = [[self contents] objectAtIndex:indexPath.row];
    _request = [[DCTodosForEventRequest alloc] initRequestWithEventId:[event eid]];
    [self startRequest:_request withInfo:@"Downloading Todo"];
}

#pragma mark -
#pragma mark Cell Methods

-(NSString*)cellIdentifierForTableView:(UITableView*)tableView {
    return Cell_EventCell;
}

-(void)updateCell:(UITableViewCell*)cell atIndexPath:(NSIndexPath*)path forTableView:(UITableView*)tableView {
    DCPartialEventModel *event = [[self contents] objectAtIndex:path.row];
    
    UILabel *titleLabel = (UILabel*)[cell.contentView viewWithTag:1];
    [titleLabel setText:[event title]];
}

#pragma mark -
#pragma mark Request Methods

-(void)requestCompleted:(DCAbstractRequest *)request withData:(NSData *)data {
    [super requestCompleted:request withData:data];
    
    NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
    
    NSDictionary *result = dict[@"result"];
    NSArray *partialTodoModels = result[@"todos"];
    
    todoArray = [DCPartialTodoModel modelsWithArrayOfJSONDictionaries:partialTodoModels];
    
    [self performSegueWithIdentifier:Segue_ToTodoListView sender:self];
}


#pragma mark -
#pragma mark Seque Methods

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([[segue identifier] isEqualToString:Segue_ToTodoListView]) {
        DCTodoListViewController *destination = [segue destinationViewController];
        [destination setContents:todoArray];
    }
}

@end
