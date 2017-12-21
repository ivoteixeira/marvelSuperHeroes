//
//  IJTCache+UIImageTests.m
//  MarvelHeroesTests
//
//  Created by Ivo João Serra Magalhães Teixeira on 23/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "IJTCache.h"

@interface IJTCache_UIImageTests : XCTestCase

@end

@implementation IJTCache_UIImageTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void) testSaveImageInCache {
    
    UIImage *image = [[UIImage alloc] init];
    
    [IJTCache saveImage:image inCacheForUrl:@"url_test_1"];
    UIImage *imageFromCache = [IJTCache retrieveImageFromCache:@"url_test_1"];
    XCTAssertNotNil(imageFromCache);
    
}


- (void) testReturnImageFromCache {
    
    UIImage *image = [[UIImage alloc] init];
    
    [IJTCache saveImage:image inCacheForUrl:@"url_test_1"];
    UIImage *imageFromCache = [IJTCache retrieveImageFromCache:@"url_test_1"];
    XCTAssertNotNil(imageFromCache);
    
}

@end
