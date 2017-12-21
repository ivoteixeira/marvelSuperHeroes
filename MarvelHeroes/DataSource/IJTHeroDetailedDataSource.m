//
//  IJTHeroDetailedDataSource.m
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 13/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTHeroDetailedDataSource.h"
#import "IJTNetworkLayer.h"
#import "IJTAnyPromise+Comic.h"
#import "IJTAnyPromise+Event.h"
#import "IJTAnyPromise+Story.h"
#import "IJTAnyPromise+Serie.h"

@implementation IJTHeroDetailedDataSource

- (void)retrieveTopicsForUser:(IJTSuperHeroModel *)hero {
    
    AnyPromise *comics = [IJTAnyPromise_Comic requestHeroComicsPromise:hero];
    AnyPromise *events = [IJTAnyPromise_Event requestHeroEventsPromise:hero];
    AnyPromise *series = [IJTAnyPromise_Serie requestHeroSeriesPromise:hero];
    AnyPromise *stories = [IJTAnyPromise_Story requestHeroStoriesPromise:hero];
    
    
    PMKWhen(@[comics,events,series,stories]).then(^(NSArray *results) {
       
        NSArray<IJTComicModel *> *comics = results[0];
        NSArray<IJTEventModel *> *events = results[1];
        NSArray<IJTSerieModel *> *series = results[2];
        NSArray<IJTStoryModel *> *stories = results[3];
        
        [self.delegate heroDetailedDatasource:self comics:comics events:events stories:stories series:series];
        
    });
}

@end
