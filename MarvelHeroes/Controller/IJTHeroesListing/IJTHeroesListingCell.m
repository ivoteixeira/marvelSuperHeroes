//
//  HLPCollectionViewCellCollectionViewCell.m
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 20/10/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTHeroesListingCell.h"
#import "IJTAPIConstants.h"

@implementation IJTHeroesListingCell 

- (void)prepareForReuse {
   
    [super prepareForReuse];

    self.superHeroNameLabel.text = @"" ;
    self.superHeroImageView.image = nil;
}

@end
