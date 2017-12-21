//
//  IJTHeroesListingCell+Configuration.h
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 16/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTHeroesListingCell.h"

@interface IJTHeroesListingCell (Configuration) 

- (void)configureCellWithHero:(IJTSuperHeroModel*)hero;
- (void)configureAsFavoriteCell;
@end
