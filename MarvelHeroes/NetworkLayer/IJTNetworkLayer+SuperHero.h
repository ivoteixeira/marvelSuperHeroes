//
//  NetworkLayer+SuperHero.h
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 15/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTNetworkLayer.h"
#import "IJTSuperHeroModel.h"

@interface IJTNetworkLayer (SuperHero)

- (void)requestsAllHeroes:(NSInteger)offset completionHandler:(void(^)(NSArray<IJTSuperHeroModel*>*))completionHandler;
- (void)requestHeroById:(NSString*)heroId completionHandler:(void(^)(IJTSuperHeroModel*))completionHandler;

@end
