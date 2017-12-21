//
//  IJTUtilsTests.m
//  MarvelHeroesTests
//
//  Created by Ivo João Serra Magalhães Teixeira on 23/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "IJTSuperHeroModel.h"
#import "IJTActivityIndicatorController.h"
#import "IJTPersistenceCoordinator.h"

@interface IJTUtilsTests : XCTestCase

@property (nonatomic, strong) NSUserDefaults *defaults;

@end

@implementation IJTUtilsTests

NSString * const kFavoritesKeyForUserDefaults = @"favouriteHeroes";

- (void)setUp {
    [super setUp];
    
    self.defaults = [NSUserDefaults standardUserDefaults];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testReturnFavouriteSuperHerosOfUser  {
    
    id arrayTest = [IJTPersistenceCoordinator retrieveFavouriteSuperHerosOfUser];
    XCTAssertNotNil(arrayTest);
    
}

- (void)testAddSuperHeroToFavorites  {
    
    NSArray<NSString*>* arrayTestBeforeAddedSuperHero = [IJTPersistenceCoordinator retrieveFavouriteSuperHerosOfUser];
    
    NSMutableDictionary * dict = [[NSMutableDictionary alloc] init];
    NSNumber *nextValue = [NSNumber numberWithInt:123];
    [dict setObject:nextValue forKey:@"id"];
    dict[@"title"] = @"title";
    dict[@"description"] = @"description";
    dict[@"thumbnail"] = nil;
    
    IJTSuperHeroModel *hero = [[IJTSuperHeroModel alloc] initWithJson:dict];
    [IJTPersistenceCoordinator addSuperHeroToFavorites:hero];
    
    NSArray<NSString*>* arrayTestAfterAddedSuperHero = [IJTPersistenceCoordinator retrieveFavouriteSuperHerosOfUser];
    XCTAssertGreaterThan(arrayTestAfterAddedSuperHero.count, arrayTestBeforeAddedSuperHero.count);
    
    [IJTPersistenceCoordinator removeSuperHeroFromFavorites:hero];
}

- (void)testRemoveSuperHeroFromFavorites  {
    
    NSArray<NSString*>* arrayTestBeforeRemovedSuperHero = [IJTPersistenceCoordinator retrieveFavouriteSuperHerosOfUser];
    
    NSMutableDictionary * dict = [[NSMutableDictionary alloc] init];
    NSNumber *nextValue = [NSNumber numberWithInt:123];
    [dict setObject:nextValue forKey:@"id"];
    dict[@"title"] = @"title";
    dict[@"description"] = @"description";
    dict[@"thumbnail"] = nil;
    
    IJTSuperHeroModel *hero = [[IJTSuperHeroModel alloc] initWithJson:dict];
    
    [IJTPersistenceCoordinator addSuperHeroToFavorites:hero];
    [IJTPersistenceCoordinator removeSuperHeroFromFavorites:hero];
    
    NSArray<NSString*>* arrayTestAfterRemovedSuperHero = [IJTPersistenceCoordinator retrieveFavouriteSuperHerosOfUser];
    
    XCTAssertEqual(arrayTestAfterRemovedSuperHero.count, arrayTestBeforeRemovedSuperHero.count);
    
}

- (void)testShowActivityAnimator {
    
    UIView *view = [[UIView alloc] init];

    UIActivityIndicatorView *activityView = [IJTActivityIndicatorController showActivityIndicator:view];
    XCTAssertNotNil(activityView);

    UIActivityIndicatorView *animator = [IJTActivityIndicatorController showActivityIndicator:view];
    XCTAssertNotNil(animator);

}

- (void) testStopAnimator {
    
    UIView *view = [[UIView alloc] init];

    UIActivityIndicatorView *animator = [IJTActivityIndicatorController showActivityIndicator:view];
    XCTAssertNotNil(animator);
    
    [IJTActivityIndicatorController stopActivityIndicator:animator];

    NSArray *subviews = [view subviews];
    XCTAssertEqual(subviews.count, 0);
}



@end
