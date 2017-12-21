//
//  IJTNetworkLayer+Topic.m
//  MarvelHeroesTests
//
//  Created by Ivo João Serra Magalhães Teixeira on 24/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "IJTNetworkLayer+Comic.h"

@interface IJTNetworkLayer_TopicTests : XCTestCase

@property (nonatomic, strong) NSMutableDictionary * dict;

@end

@implementation IJTNetworkLayer_TopicTests

static NSString * const kHeroName = @"3-D Man";
static NSString * const kHeroDescription = @"The best superhero";
static NSInteger const kIdentifier = 1009144;
static NSString * const kPath = @"http://i.annihil.us/u/prod/marvel/i/mg/c/e0/535fecbbb9784";

- (void)setUp {
    [super setUp];
    
    self.dict = [[NSMutableDictionary alloc] init];
    
    self.dict[@"name"] = kHeroName;
    self.dict[@"description"] = kHeroDescription;
    
    NSNumber *nextValue = [NSNumber numberWithInt:kIdentifier];
    [self.dict setObject:nextValue forKey:@"id"];
    
    NSMutableDictionary * thumbnail = [[NSMutableDictionary alloc] init];
    thumbnail[@"path"] = kPath;
    self.dict[@"thumbnail"] = thumbnail;
    
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testRequestComics {
    
    XCTestExpectation *expectation = [self expectationWithDescription:@"Query timed out."];
    
    IJTSuperHeroModel *hero = [[IJTSuperHeroModel alloc] initWithJson:self.dict];
    
    [IJTNetworkLayer.sharedInstance retrieveComicsForHero:(IJTSuperHeroModel *)hero completionHandler:^(NSArray<IJTComicModel *> *comicsArray) {
        XCTAssertTrue(comicsArray.count > 0);
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:5.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Error: %@", error);
        }
    }];
}


@end
