//
//  IJTAnyPromise+Hero.m
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 30/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTAnyPromise+Hero.h"

#import "IJTNetworkLayer+SuperHero.h"

@implementation IJTAnyPromise_Hero

+ (AnyPromise*)requestHeroByIdPromise:(NSString*)identifier {
    
    return [AnyPromise promiseWithResolverBlock:^(PMKResolver resolve){
        
        [IJTNetworkLayer.sharedInstance requestHeroById:identifier completionHandler:^(IJTSuperHeroModel *hero) {
            
            resolve(hero);
        }];
    }];
}

+ (AnyPromise*)requestAllHeroesPromise:(NSInteger)offset {
    
    return [AnyPromise promiseWithResolverBlock:^(PMKResolver resolve){
        
        [IJTNetworkLayer.sharedInstance requestsAllHeroes:offset completionHandler:^(NSArray<IJTSuperHeroModel *> *heroes) {
            
            resolve(heroes);
        }];
    }];
}

@end
