//
//  IJTNetworkLayer+UIImageTests.m
//  MarvelHeroesTests
//
//  Created by Ivo João Serra Magalhães Teixeira on 24/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "IJTNetworkLayer+UIImage.h"

@interface IJTNetworkLayer_UIImageTests : XCTestCase

@end

@implementation IJTNetworkLayer_UIImageTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testDownloadImageWithUrl {
    
    XCTestExpectation *expectation = [self expectationWithDescription:@"Query timed out."];
    
  
    [IJTNetworkLayer downloadImageWithURL:@"http://i.annihil.us/u/prod/marvel/i/mg/c/e0/535fecbbb9784.jpg"  completionHandler:^(UIImage *image) {
        XCTAssertNotNil(image);
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:5.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Error: %@", error);
        }
    }];
}

@end
