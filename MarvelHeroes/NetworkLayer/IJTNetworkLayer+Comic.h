//
//  NetworkLayer+Comic.h
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 15/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//
#import "IJTNetworkLayer.h"
#import "IJTComicModel.h"
#import "IJTSuperHeroModel.h"

@interface IJTNetworkLayer (Comic)

- (void)retrieveComicsForHero:(IJTSuperHeroModel *)hero completionHandler:(void(^)(NSArray<IJTComicModel*>*))completionHandler;

@end
