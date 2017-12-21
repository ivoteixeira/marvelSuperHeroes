//
//  FavouritesCollectionViewControllerDataSource.m
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 13/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTFavoritesDataSource.h"
#import "IJTPersistenceCoordinator.h"
#import "IJTNetworkLayer+SuperHero.h"
#import "IJTSuperHeroModel.h"


@implementation IJTFavoritesDataSource

- (void)retrieveFavouritesHeroes {
    
    NSMutableArray *heroes = [[NSMutableArray<IJTSuperHeroModel*> alloc] init];
    
    NSArray<NSString*>* favoritesHeroes = [IJTPersistenceCoordinator retrieveFavouriteSuperHerosOfUser];
    
    if (favoritesHeroes.count == 0) {
    
        [self.delegate favoritesDataSource:self heroes:[heroes copy]];
    
    } else {
    
        for (NSString * heroId in favoritesHeroes) {
        
            [IJTNetworkLayer.sharedInstance requestHeroById:heroId completionHandler:^(IJTSuperHeroModel *hero) {
            
                [heroes addObject:hero];
                
                if (heroes.count == favoritesHeroes.count) {
                
                    [self.delegate favoritesDataSource:self heroes:[heroes copy]];
                }
            }];
        }
    }
}

@end
