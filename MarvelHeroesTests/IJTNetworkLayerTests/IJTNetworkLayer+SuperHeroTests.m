//
//  IJTNetworkLayer+SuperHeroTests.m
//  MarvelHeroesTests
//
//  Created by Ivo João Serra Magalhães Teixeira on 23/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "IJTNetworkLayer+SuperHero.h"

@interface IJTNetworkLayer_SuperHeroTests : XCTestCase

@end

@implementation IJTNetworkLayer_SuperHeroTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testRequestAllHeroes {
    
    XCTestExpectation *expectation = [self expectationWithDescription:@"Query timed out."];
    
    [IJTNetworkLayer.sharedInstance requestsAllHeroes:20 completionHandler:^(NSArray<IJTSuperHeroModel*> *array) {
        XCTAssertNotNil(array);
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:5.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Error: %@", error);
        }
    }];
    
}

- (void)testRequestHeroByIdHeroNotNil {
    
    XCTestExpectation *expectation = [self expectationWithDescription:@"Query timed out."];
    
    [IJTNetworkLayer.sharedInstance requestHeroById:@"1011334" completionHandler:^(IJTSuperHeroModel *hero) {
        XCTAssertNotNil(hero);
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:5.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Error: %@", error);
        }
    }];
    
}

- (void)testRequestHeroByIdHeroMatch {
    
    XCTestExpectation *expectation = [self expectationWithDescription:@"Query timed out."];
    
    [IJTNetworkLayer.sharedInstance requestHeroById:@"1011334" completionHandler:^(IJTSuperHeroModel *hero) {
        XCTAssertTrue([hero.name isEqualToString:@"3-D Man"]);
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:5.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Error: %@", error);
        }
    }];
    
}





@end
