//
//  HeroesListingController.h
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 10/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IJTSuperHeroModel.h"

@class IJTHeroesListingDataSource;

@protocol MarvelHeroesDatasourceDelegate

- (void)marvelHeroesDatasource:(nonnull IJTHeroesListingDataSource *)marvelHeroesDatasource
                        heroes:(nullable NSArray<IJTSuperHeroModel *> *)heroes;

@end

@interface IJTHeroesListingDataSource : NSObject

@property (nonatomic, weak, nullable) id<MarvelHeroesDatasourceDelegate> delegate;

- (void)requestsAllHeroes:(NSInteger)offset;

@end
