//
//  HeroesListingController.m
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 10/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTHeroesListingDataSource.h"
#import "IJTNetworkLayer+SuperHero.h"
#import "IJTAnyPromise+Hero.h"

@implementation IJTHeroesListingDataSource

- (void)requestsAllHeroes:(NSInteger)offset  {
    
    [IJTAnyPromise_Hero requestAllHeroesPromise:offset].then(^(NSArray *heroes) {
    
        [self.delegate marvelHeroesDatasource:self heroes:heroes];
    });
}

@end
