//
//  IJTSerieModelTests.m
//  MarvelHeroesTests
//
//  Created by Ivo João Serra Magalhães Teixeira on 23/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "IJTSerieModel.h"

@interface IJTSerieModelTests : XCTestCase

@property (nonatomic, strong) NSMutableDictionary * dict;

@end

@implementation IJTSerieModelTests


static NSString * const kSerieName = @"serie_1";
static NSString * const kSerieDescription = @"description_1";
static NSString * const kSerieThumbnail = @"thumbnail_1";
static NSString * const kSerieExtension = @"jpg";
static NSString * const kSeriePath = @"http://test/";


- (void)setUp {
    
    [super setUp];
    
    self.dict = [[NSMutableDictionary alloc] init];
    
    self.dict[@"title"] = kSerieName;
    self.dict[@"description"] = kSerieDescription;
    self.dict[@"thumbnail"] = kSerieThumbnail;
    
    NSMutableDictionary * thumbnail = [[NSMutableDictionary alloc] init];
    thumbnail[@"path"] = kSeriePath;
    thumbnail[@"extension"] = kSerieExtension;
    self.dict[@"thumbnail"] = thumbnail;
    
    
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testInitWithDictionary {
    
    IJTSerieModel * serie = [[IJTSerieModel alloc] initWithDictionary:self.dict];
    
    XCTAssertTrue([serie.name isEqualToString:kSerieName]);
    XCTAssertTrue([serie.long_description isEqualToString: kSerieDescription]);
    XCTAssertTrue([serie.thumbnail isEqualToString: [kSeriePath stringByAppendingString: [@"." stringByAppendingString:kSerieExtension]]]);
}

- (void)testInitWithParameters {
    
    IJTSerieModel * serie = [[IJTSerieModel alloc] initWithName:kSerieName andDescription:kSerieDescription andThumbnail:kSerieThumbnail];
    
    XCTAssertTrue([serie.name isEqualToString:kSerieName]);
    XCTAssertTrue([serie.long_description isEqualToString: kSerieDescription]);
    XCTAssertTrue([serie.thumbnail isEqualToString: kSerieThumbnail]);
}

@end



