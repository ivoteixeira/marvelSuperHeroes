//
//  AnyPromise+Comic.m
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 30/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTAnyPromise+Comic.h"
#import "IJTNetworkLayer+Comic.h"

@implementation IJTAnyPromise_Comic

+ (AnyPromise*)requestHeroComicsPromise:(IJTSuperHeroModel*)hero {
    
    return [AnyPromise promiseWithResolverBlock:^(PMKResolver resolve){
        
        [IJTNetworkLayer.sharedInstance retrieveComicsForHero:hero completionHandler:^(NSArray<IJTComicModel *> *comics) {
            
            resolve(comics);
        }];
    }];
}
@end
