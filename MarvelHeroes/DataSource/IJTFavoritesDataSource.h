//
//  FavouritesCollectionViewControllerDataSource.h
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 13/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IJTSuperHeroModel.h"

@class IJTFavoritesDataSource;

@protocol FavoritesDataSourceDelegate

- (void)favoritesDataSource:(nonnull IJTFavoritesDataSource*)favoritesDataSource heroes:(nullable NSArray<IJTSuperHeroModel*>*)heroes;

@end

@interface IJTFavoritesDataSource : NSObject

@property (nonatomic, weak, nullable) id<FavoritesDataSourceDelegate> delegate;

- (void)retrieveFavouritesHeroes;

@end
