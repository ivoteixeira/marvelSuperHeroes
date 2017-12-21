//
//  IJTHeroDetailedView+Configuration.m
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 05/12/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTHeroDetailedView+Configuration.h"
#import "IJTCache.h"

@implementation IJTHeroDetailedView (Configuration)


- (void)configureHeroDetailedView:(IJTSuperHeroModel*)hero {
    
    self.superHeroImageView.image = [IJTCache retrieveImageFromCache:hero.photoUrl];
    self.superHeroNameLabel.text = hero.name;
    self.superHeroDescription.text = hero.short_description;
    
}

@end
