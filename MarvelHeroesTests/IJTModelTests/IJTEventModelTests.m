//
//  IJTSerieModelTests.m
//  MarvelHeroesTests
//
//  Created by Ivo João Serra Magalhães Teixeira on 23/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "IJTEventModel.h"

@interface IJTEventModelTests : XCTestCase

@property (nonatomic, strong) NSMutableDictionary * dict;

@end

@implementation IJTEventModelTests


static NSString * const kEventName = @"event_1";
static NSString * const kEventDescription = @"description_1";
static NSString * const kEventThumbnail = @"thumbnail_1";
static NSString * const kEventExtension = @"jpg";
static NSString * const kEventPath = @"http://test/";


- (void)setUp {
    
    [super setUp];
    
    self.dict = [[NSMutableDictionary alloc] init];
    
    self.dict[@"title"] = kEventName;
    self.dict[@"description"] = kEventDescription;
    self.dict[@"thumbnail"] = kEventThumbnail;
    
    NSMutableDictionary * thumbnail = [[NSMutableDictionary alloc] init];
    thumbnail[@"path"] = kEventPath;
    thumbnail[@"extension"] = kEventExtension;
    self.dict[@"thumbnail"] = thumbnail;
    
    
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testInitWithDictionary {
    
    IJTEventModel * event = [[IJTEventModel alloc] initWithDictionary:self.dict];
    
    XCTAssertTrue([event.name isEqualToString:kEventName]);
    XCTAssertTrue([event.long_description isEqualToString: kEventDescription]);
    XCTAssertTrue([event.thumbnail isEqualToString: [kEventPath stringByAppendingString: [@"." stringByAppendingString:kEventExtension]]]);
}

- (void)testInitWithParameters {
    
    IJTEventModel * event = [[IJTEventModel alloc] initWithName:kEventName andDescription:kEventDescription andThumbnail:kEventThumbnail];
    
    XCTAssertTrue([event.name isEqualToString:kEventName]);
    XCTAssertTrue([event.long_description isEqualToString: kEventDescription]);
    XCTAssertTrue([event.thumbnail isEqualToString: kEventThumbnail]);
}

@end



