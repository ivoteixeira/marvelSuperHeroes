//
//  IJTComicModelTests.m
//  MarvelHeroesTests
//
//  Created by Ivo João Serra Magalhães Teixeira on 23/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "IJTComicModel.h"

@interface IJTComicModelTests : XCTestCase

@property (nonatomic, strong) NSMutableDictionary * dict;

@end

@implementation IJTComicModelTests


static NSString * const kComicName = @"comic_1";
static NSString * const kComicDescription = @"description_1";
static NSString * const kComicThumbnail = @"thumbnail_1";
static NSString * const kComicExtension = @"jpg";
static NSString * const kComicPath = @"http://test/";


- (void)setUp {
    
    [super setUp];
    
    self.dict = [[NSMutableDictionary alloc] init];
    
    self.dict[@"title"] = kComicName;
    self.dict[@"description"] = kComicDescription;
    self.dict[@"thumbnail"] = kComicThumbnail;
    
    NSMutableDictionary * thumbnail = [[NSMutableDictionary alloc] init];
    thumbnail[@"path"] = kComicPath;
    thumbnail[@"extension"] = kComicExtension;
    self.dict[@"thumbnail"] = thumbnail;
    
    
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testInitWithDictionary {
    
    IJTComicModel * comic = [[IJTComicModel alloc] initWithDictionary:self.dict];
    
    XCTAssertTrue([comic.name isEqualToString:kComicName]);
    XCTAssertTrue([comic.long_description isEqualToString: kComicDescription]);
    XCTAssertTrue([comic.thumbnail isEqualToString: [kComicPath stringByAppendingString: [@"." stringByAppendingString:kComicExtension]]]);
}

- (void)testInitWithParameters{
    
    IJTComicModel * comic = [[IJTComicModel alloc] initWithName:kComicName andDescription:kComicDescription andThumbnail:kComicThumbnail];
    
    XCTAssertTrue([comic.name isEqualToString:kComicName]);
    XCTAssertTrue([comic.long_description isEqualToString: kComicDescription]);
    XCTAssertTrue([comic.thumbnail isEqualToString: kComicThumbnail]);
}



@end

