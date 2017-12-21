//
//  IJTPersistenceCoordinator.m
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 29/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTPersistenceCoordinator.h"


NSString * const kFavoritesKeyForUserDefaults = @"favouriteHeroes";

@implementation IJTPersistenceCoordinator

+ (NSArray<NSString*>*)retrieveFavouriteSuperHerosOfUser {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSArray <NSString*> * temporaryDefaultsArry = [[defaults objectForKey:kFavoritesKeyForUserDefaults] mutableCopy];
    
    if (!temporaryDefaultsArry) {
        
        temporaryDefaultsArry = [[NSArray alloc] init];
        
        [defaults setObject:temporaryDefaultsArry forKey:kFavoritesKeyForUserDefaults];
        
    }
    
    return [temporaryDefaultsArry copy];
}

+ (void)addSuperHeroToFavorites:(IJTSuperHeroModel*)hero {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSMutableArray <NSString*>* temporaryDefaultsArray = [[defaults objectForKey:kFavoritesKeyForUserDefaults] mutableCopy];
    
    if (!temporaryDefaultsArray) {
        
        temporaryDefaultsArray = [[NSMutableArray alloc] init];
        
        [defaults setObject:temporaryDefaultsArray forKey:kFavoritesKeyForUserDefaults];
    }
    
    [temporaryDefaultsArray addObject:hero.identifier];
    [defaults setObject:[temporaryDefaultsArray copy] forKey:kFavoritesKeyForUserDefaults];
}

+ (void)removeSuperHeroFromFavorites:(IJTSuperHeroModel*)hero {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSMutableArray <NSString* >* temporaryDefaultsArray = [[defaults objectForKey:kFavoritesKeyForUserDefaults] mutableCopy];
    
    if (!temporaryDefaultsArray) {
        
        temporaryDefaultsArray = [[NSMutableArray alloc] init];
        
        [defaults setObject:temporaryDefaultsArray forKey:kFavoritesKeyForUserDefaults];
    }
    
    [temporaryDefaultsArray removeObject:hero.identifier];
    [defaults setObject:[temporaryDefaultsArray copy] forKey:kFavoritesKeyForUserDefaults];
}

@end
