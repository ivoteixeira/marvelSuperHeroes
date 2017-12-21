//
//  HeroDetailedViewCollectionDataSource.h
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 13/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IJTSuperHeroModel.h"
#import "IJTComicModel.h"
#import "IJTEventModel.h"
#import "IJTSerieModel.h"
#import "IJTStoryModel.h"

@class IJTHeroDetailedDataSource;

@protocol HeroDetailedDatasourceDelegate

- (void)heroDetailedDatasource:(nonnull IJTHeroDetailedDataSource *)heroDetailedDatasource
                            comics:(nullable NSArray<IJTComicModel *> *)comics
                            events:(nullable NSArray<IJTEventModel *> *)events
                            stories:(nullable NSArray<IJTStoryModel *> *)stories
                            series:(nullable NSArray<IJTSerieModel *> *)series;

@end

@interface IJTHeroDetailedDataSource : NSObject

@property (nonatomic, weak, nullable) id<HeroDetailedDatasourceDelegate> delegate;

- (void)retrieveTopicsForUser:(nonnull IJTSuperHeroModel *)hero;

@end



