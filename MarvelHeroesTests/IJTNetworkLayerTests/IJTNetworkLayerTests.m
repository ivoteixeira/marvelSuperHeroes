//
//  IJTNetworkLayerTests.m
//  MarvelHeroesTests
//
//  Created by Ivo João Serra Magalhães Teixeira on 23/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "IJTNetworkLayer.h"
#import "IJTNetworkLayer+Comic.h"

@interface IJTNetworkLayerTests : XCTestCase

@end


@interface IJTNetworkLayer (Testing)

- (NSString*)retrieveStringWithDefaultValues;
- (NSString*)createFullUrlRequestFromUrl:(NSString*)url;
- (void)performRequestForUrl:(NSString*)url completionHandler:(void (^)(NSMutableDictionary *dict))completionHandler;

@end


@implementation IJTNetworkLayerTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}


- (void) testCheckReturnedInstance {
    
    id instance = [IJTNetworkLayer sharedInstance];
    XCTAssertNotNil(instance);
}

- (void)testPerformRequestForUrl {
    
    XCTestExpectation *expectation = [self expectationWithDescription:@"Query timed out."];
    
    NSString * url = [NSString stringWithFormat: @"/%@/comics", @"1011334"];
    [IJTNetworkLayer.sharedInstance performRequestForUrl:url completionHandler:^(NSMutableDictionary *dict) {
        XCTAssertNotNil(dict);
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:5.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Error: %@", error);
        }
    }];
    
}


- (void)testCreateFullRequestUrlFromUrlWithOffset {
    
    NSString *fullUrl = [IJTNetworkLayer.sharedInstance createFullUrlRequestFromUrl:[NSString stringWithFormat:@"offset=%d", 20]];
    XCTAssertTrue([fullUrl isEqualToString: @"https://gateway.marvel.com:443/v1/public/characters?apikey=d1ee16a3fedf7714f955bbe33d17ef8a&hash=e3f3130f3d960ccc23ef7b2e426c1bb9&ts=1508406476&offset=20"]);
}

- (void)testCreateFullRequestUrlFromUrlWithoutOffset {
    
    NSString *fullUrl = [IJTNetworkLayer.sharedInstance createFullUrlRequestFromUrl: [@"/" stringByAppendingString: @"1"]];
    XCTAssertTrue([fullUrl isEqualToString: @"https://gateway.marvel.com:443/v1/public/characters/1?apikey=d1ee16a3fedf7714f955bbe33d17ef8a&hash=e3f3130f3d960ccc23ef7b2e426c1bb9&ts=1508406476"]);
}

- (void)testRetrieveStringWithDefaultValues {
    
    NSString *stringWithDefaultValues = [IJTNetworkLayer.sharedInstance retrieveStringWithDefaultValues];
    XCTAssertTrue([stringWithDefaultValues isEqualToString: @"?apikey=d1ee16a3fedf7714f955bbe33d17ef8a&hash=e3f3130f3d960ccc23ef7b2e426c1bb9&ts=1508406476"]);
}



@end
