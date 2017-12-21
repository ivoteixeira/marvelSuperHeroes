//
//  IJTAnyPromise+Story.m
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 30/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTAnyPromise+Story.h"
#import "IJTNetworkLayer+Story.h"

@implementation IJTAnyPromise_Story

+ (AnyPromise*)requestHeroStoriesPromise:(IJTSuperHeroModel*)hero {
    
    return [AnyPromise promiseWithResolverBlock:^(PMKResolver resolve){
        
        [IJTNetworkLayer.sharedInstance retrieveStoriesForHero:hero completionHandler:^(NSArray<IJTStoryModel *> *stories) {
            
            resolve(stories);
        }];
    }];
}

@end
