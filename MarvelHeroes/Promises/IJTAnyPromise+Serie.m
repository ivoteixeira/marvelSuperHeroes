//
//  IJTAnyPromise+Serie.m
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 30/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTAnyPromise+Serie.h"
#import "IJTNetworkLayer+Serie.h"

@implementation IJTAnyPromise_Serie

+ (AnyPromise*)requestHeroSeriesPromise:(IJTSuperHeroModel*)hero {
    
    return [AnyPromise promiseWithResolverBlock:^(PMKResolver resolve){
        
        [IJTNetworkLayer.sharedInstance retrieveSeriesForHero:hero completionHandler:^(NSArray<IJTSerieModel *> *series) {
            
            resolve(series);
        }];
    }];
}

@end
