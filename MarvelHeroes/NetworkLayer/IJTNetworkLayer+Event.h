//
//  IJTNetworkLayer+Event.h
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 15/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//
#import "IJTNetworkLayer.h"
#import "IJTEventModel.h"
#import "IJTSuperHeroModel.h"

@interface IJTNetworkLayer (Event)

- (void)retrieveEventsForHero:(IJTSuperHeroModel *)hero completionHandler:(void (^)(NSArray<IJTEventModel*>*))completionHandler;

@end

