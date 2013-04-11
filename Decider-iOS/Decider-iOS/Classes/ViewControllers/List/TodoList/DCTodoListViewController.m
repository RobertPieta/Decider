//
//  DCTodoListViewController.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCTodoListViewController.h"
#import "DCPartialTodoModel.h"
#import "DCTodoDetailViewController.h"

#import "DCGetTodoRequest.h"
#import "DCTodoModel.h"

@interface DCTodoListViewController() {
@private
    DCPartialTodoModel *partialTodo;
    DCGetTodoRequest *_request;
    DCTodoModel *_todo;
}

@end

@implementation DCTodoListViewController

-(void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark -
#pragma mark IBAction Methods

-(IBAction)descriptionPushed:(id)sender {
    
}

-(IBAction)addFriendsPushed:(id)sender {
    [self performSegueWithIdentifier:Segue_ToAddFriendView sender:self];
}

-(IBAction)addTodoPushed:(id)sender {
    [self performSegueWithIdentifier:Segue_ToCreateTodoView sender:self];
}

#pragma mark -
#pragma mark UITableView Methods

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [super tableView:tableView didSelectRowAtIndexPath:indexPath];
    partialTodo = [[self contents] objectAtIndex:indexPath.row];
    
    _request = [[DCGetTodoRequest alloc] initRequestWithTodoId:[partialTodo tdid]];
    [self startRequest:_request withInfo:@"Downloading Todo"];
}

#pragma mark -
#pragma mark Cell Methods

-(NSString*)cellIdentifierForTableView:(UITableView*)tableView {
    return Cell_TodoCell;
}

-(void)updateCell:(UITableViewCell*)cell atIndexPath:(NSIndexPath*)path forTableView:(UITableView*)tableView {
    DCPartialTodoModel *todo = [[self contents] objectAtIndex:path.row];
    
    UILabel *titleLabel = (UILabel*)[cell.contentView viewWithTag:1];
    [titleLabel setText:[todo title]];
    
    UILabel *ptsLabel = (UILabel*)[cell.contentView viewWithTag:2];
    [ptsLabel setText:[todo pts]];
}

#pragma mark -
#pragma mark Request Methods

-(void)requestCompleted:(DCAbstractRequest *)request withData:(NSData *)data {
    [super requestCompleted:request withData:data];
    
    NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
    
    NSDictionary *todoDict = dict[@"result"];
    _todo = [[DCTodoModel alloc] initWithJSONDictionary:todoDict];
    
    [self performSegueWithIdentifier:Segue_ToTodoDetailView sender:self];
}

#pragma mark -
#pragma mark Segue Methods

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([[segue identifier] isEqualToString:Segue_ToTodoDetailView]) {
        DCTodoDetailViewController *destination = [segue destinationViewController];
        [destination setModel:_todo];
    }
}

@end
