//
//  IJTAnyPromise+Event.m
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 30/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTAnyPromise+Event.h"
#import "IJTNetworkLayer+Event.h"

@implementation IJTAnyPromise_Event

+ (AnyPromise*)requestHeroEventsPromise:(IJTSuperHeroModel*)hero {
    
    return [AnyPromise promiseWithResolverBlock:^(PMKResolver resolve){
        
        [IJTNetworkLayer.sharedInstance retrieveEventsForHero:hero completionHandler:^(NSArray<IJTEventModel *> *events) {
            
            resolve(events);
        }];
    }];
}

@end
