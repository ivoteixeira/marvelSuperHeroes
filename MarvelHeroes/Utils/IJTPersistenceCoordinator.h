//
//  IJTPersistenceCoordinator.h
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 29/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IJTSuperHeroModel.h"

@interface IJTPersistenceCoordinator : NSObject

+ (NSArray<NSString*>*)retrieveFavouriteSuperHerosOfUser;
+ (void)addSuperHeroToFavorites:(IJTSuperHeroModel*)hero;
+ (void)removeSuperHeroFromFavorites:(IJTSuperHeroModel*)hero;

@end
