//
//  IJTStoryModelTests.m
//  MarvelHeroesTests
//
//  Created by Ivo João Serra Magalhães Teixeira on 23/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "IJTStoryModel.h"

@interface IJTStoryModelTests : XCTestCase

@property (nonatomic, strong) NSMutableDictionary * dict;

@end

@implementation IJTStoryModelTests


static NSString * const kStoryName = @"story_1";
static NSString * const kStoryDescription = @"description_1";
static NSString * const kStoryThumbnail = @"thumbnail_1";


- (void)setUp {
   
    [super setUp];
    
    self.dict = [[NSMutableDictionary alloc] init];
    
    self.dict[@"title"] = kStoryName;
    self.dict[@"description"] = kStoryDescription;
    self.dict[@"thumbnail"] = kStoryThumbnail;
    
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testInitWithDictionary {
  
    IJTStoryModel * story = [[IJTStoryModel alloc] initWithDictionary:self.dict];
    
    XCTAssertTrue([story.name isEqualToString:kStoryName]);
    XCTAssertTrue([story.long_description isEqualToString: kStoryDescription]);
}

- (void)testInitWithParameters{
    
    IJTStoryModel * story = [[IJTStoryModel alloc] initWithName:kStoryName andDescription:kStoryDescription andThumbnail:kStoryThumbnail];
    
    XCTAssertTrue([story.name isEqualToString:kStoryName]);
    XCTAssertTrue([story.long_description isEqualToString: kStoryDescription]);
    XCTAssertTrue([story.thumbnail isEqualToString:kStoryThumbnail]);
}



@end
