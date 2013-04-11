//
//  Decider_iOSTests.m
//  Decider-iOSTests
//
//  Created by Robert Pieta on 4/1/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "Decider_iOSTests.h"

//Models
#import "DCUserModel.h"
#import "DCPartialEventModel.h"
#import "DCPartialTodoModel.h"
#import "DCPartialLocationModel.h"
#import "DCEventModel.h"
#import "DCTodoModel.h"
#import "DCLocationModel.h"

@implementation Decider_iOSTests

-(void)setUp
{
    [super setUp];
}

-(void)tearDown
{
    [super tearDown];
}

//Models
//User
-(void)testUserModel
{
    NSDictionary *dict = @{@"fbid" : @"test", @"name" : @"fred", @"email" : @"123"};
    DCUserModel *user = [[DCUserModel alloc] initWithJSONDictionary:dict];
    
    STAssertEquals(dict[@"fbid"], [user fbid], @"User parsed fbid incorrectly");
    STAssertEquals(dict[@"name"], [user name], @"User parsed name incorrectly");
    STAssertEquals(dict[@"email"], [user email], @"User parsed email incorrectly");
}

//Partial Event
-(void)testPartialEventModel
{
    NSDictionary *dict = @{@"eid" : @"test", @"admin_fbid" : @"fred", @"title" : @"123"};
    DCPartialEventModel *event = [[DCPartialEventModel alloc] initWithJSONDictionary:dict];
    
    STAssertEquals(dict[@"eid"], [event eid], @"Partial Event parsed eid incorrectly");
    STAssertEquals(dict[@"admin_fbid"], [event adminFBId], @"Partial Event parsed admin_fbid incorrectly");
    STAssertEquals(dict[@"title"], [event title], @"Partial Event parsed title incorrectly");
}

//Partial Todo
-(void)testPartialTodoModel
{
    NSDictionary *loc = @{@"lid" : @"1", @"title" : @"no", @"lat" : @"432", @"lon" : @"234"};
    NSDictionary *dict = @{@"eid" : @"test", @"tdid" : @"fred", @"title" : @"123", @"pts" : @"hi", @"location" : loc};
    DCPartialTodoModel *todo = [[DCPartialTodoModel alloc] initWithJSONDictionary:dict];
    
    STAssertEquals(dict[@"eid"], [todo eid], @"Partial Todo parsed eid incorrectly");
    STAssertEquals(dict[@"tdid"], [todo tdid], @"Partial Todo parsed tid incorrectly");
    STAssertEquals(dict[@"title"], [todo title], @"Partial Todo parsed title incorrectly");
    STAssertEquals(dict[@"pts"], [todo pts], @"Partial Todo parsed pts incorrectly");
    
    STAssertEquals(loc[@"lid"], [[todo partialLocation] lid], @"Partial Todo parsed lid incorrectly");
    STAssertEquals(loc[@"title"], [[todo partialLocation] title], @"Partial Todo parsed title incorrectly");
    STAssertEquals(loc[@"lat"], [[todo partialLocation] lat], @"Partial Todo parsed lat incorrectly");
    STAssertEquals(loc[@"lon"], [[todo partialLocation] lon], @"Partial Todo parsed lon incorrectly");
}

//Partial Location
-(void)testPartialLocationModel
{
    NSDictionary *loc = @{@"lid" : @"1", @"title" : @"no", @"lat" : @"432", @"lon" : @"234"};
    DCPartialLocationModel *location = [[DCPartialLocationModel alloc] initWithJSONDictionary:loc];
    
    STAssertEquals(loc[@"lid"], [location lid], @"Partial Location parsed lid incorrectly");
    STAssertEquals(loc[@"title"], [location title], @"Partial Location parsed title incorrectly");
    STAssertEquals(loc[@"lat"], [location lat], @"Partial Location parsed lat incorrectly");
    STAssertEquals(loc[@"lon"], [location lon], @"Partial Location parsed lon incorrectly");
}

//Event
-(void)testEventModel
{
    NSDictionary *dict = @{@"eid" : @"test", @"admin_fbid" : @"fred", @"title" : @"123", @"description" : @"lolol"};
    DCEventModel *event = [[DCEventModel alloc] initWithJSONDictionary:dict];
    
    STAssertEquals(dict[@"eid"], [event eid], @"Event parsed eid incorrectly");
    STAssertEquals(dict[@"admin_fbid"], [event adminFBId], @"Event parsed admin_fbid incorrectly");
    STAssertEquals(dict[@"title"], [event title], @"Event parsed title incorrectly");
    STAssertEquals(dict[@"description"], [event description], @"Event parsed description incorrectly");
}

//Todo
-(void)testTodoModel
{
    NSDictionary *loc = @{@"lid" : @"1", @"title" : @"no", @"lat" : @"432", @"lon" : @"234", @"street" : @"never", @"street_num" : @"404", @"city" : @"Urbana", @"state" : @"Il"};
    NSDictionary *dict = @{@"eid" : @"test", @"tdid" : @"fred", @"title" : @"123", @"pts" : @"hi", @"description" : @"testing", @"location" : loc};
    DCTodoModel *todo = [[DCTodoModel alloc] initWithJSONDictionary:dict];
    
    STAssertEquals(dict[@"eid"], [todo eid], @"Todo parsed eid incorrectly");
    STAssertEquals(dict[@"tdid"], [todo tdid], @"Todo parsed tid incorrectly");
    STAssertEquals(dict[@"title"], [todo title], @"Todo parsed title incorrectly");
    STAssertEquals(dict[@"pts"], [todo pts], @"Todo parsed pts incorrectly");
    STAssertEquals(dict[@"description"], [todo description], @"Todo parsed pts incorrectly");
    

    STAssertEquals(loc[@"title"], [[todo location] title], @"Todo parsed title incorrectly");
    STAssertEquals(loc[@"lat"], [[todo location] lat], @"Todo parsed lat incorrectly");
    STAssertEquals(loc[@"lon"], [[todo location] lon], @"Todo parsed lon incorrectly");
    
    STAssertEquals(loc[@"street"], [[todo location] street], @"Todo parsed street incorrectly");
    STAssertEquals(loc[@"street_num"], [[todo location] street_num], @"Todo parsed street_num incorrectly");
    STAssertEquals(loc[@"city"], [[todo location] city], @"Todo parsed city incorrectly");
    STAssertEquals(loc[@"state"], [[todo location] state], @"Todo parsed state incorrectly");
}

//Location
-(void)testLocationModel
{
    NSDictionary *loc = @{@"lid" : @"1", @"title" : @"no", @"lat" : @"432", @"lon" : @"234", @"street" : @"never", @"street_num" : @"404", @"city" : @"Urbana", @"state" : @"Il"};
    DCLocationModel *location = [[DCLocationModel alloc] initWithJSONDictionary:loc];
    
    STAssertEquals(loc[@"lid"], [location lid], @"Location parsed lid incorrectly");
    STAssertEquals(loc[@"title"], [location title], @"Location parsed title incorrectly");
    STAssertEquals(loc[@"lat"], [location lat], @"Location parsed lat incorrectly");
    STAssertEquals(loc[@"lon"], [location lon], @"Location parsed lon incorrectly");
    
    STAssertEquals(loc[@"street"], [location street], @"Location parsed state incorrectly");
    STAssertEquals(loc[@"street_num"], [location street_num], @"Location street_num title incorrectly");
    STAssertEquals(loc[@"city"], [location city], @"Location parsed city incorrectly");
    STAssertEquals(loc[@"state"], [location state], @"Location parsed state incorrectly");
}

@end
