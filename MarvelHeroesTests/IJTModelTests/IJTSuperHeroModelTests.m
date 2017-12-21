//
//  MarvelHeroesTests.m
//  MarvelHeroesTests
//
//  Created by Ivo João Serra Magalhães Teixeira on 19/10/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "IJTSuperHeroModel.h"
#import "UIKit/UIKit.h"

@interface IJTSuperHeroModelTests : XCTestCase

@property (nonatomic, strong) NSMutableDictionary * dict;

@end

@implementation IJTSuperHeroModelTests

static NSString * const kHeroName = @"3-D Man";
static NSString * const kHeroDescription = @"The best superhero";
static NSInteger const kIdentifier = 1;
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

- (void)testInitWithJson {
    
    IJTSuperHeroModel *hero = [[IJTSuperHeroModel alloc] initWithJson:self.dict];
    
    XCTAssertTrue([hero.name isEqualToString:kHeroName]);
    XCTAssertTrue([hero.short_description isEqualToString: kHeroDescription]);
    XCTAssertTrue([hero.photoUrl isEqualToString:[kPath stringByAppendingString: @".jpg"]]);
    XCTAssertTrue([hero.identifier isEqualToString: @"1"]);
                                   
    
}

@end
