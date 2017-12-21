//
//  IJTNetworkLayer+Serie.h
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 15/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTNetworkLayer.h"
#import "IJTSerieModel.h"
#import "IJTSuperHeroModel.h"

@interface IJTNetworkLayer (Serie)

- (void)retrieveSeriesForHero:(IJTSuperHeroModel *)hero completionHandler:(void (^)(NSArray<IJTSerieModel*>*))completionHandler;

@end
