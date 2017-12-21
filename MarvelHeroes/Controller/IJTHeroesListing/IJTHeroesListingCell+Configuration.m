//
//  IJTHeroesListingCell+Configuration.m
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 16/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTHeroesListingCell+Configuration.h"
#import "IJTPersistenceCoordinator.h"
#import "IJTNetworkLayer+UIImage.h"
#import "IJTCache.h"
#import "IJTActivityIndicatorController.h"

NSString * const kInFavoritesIcon = @"favorites_logo";
NSString * const kNotInFavoritesIcon = @"not_favorites_logo";

@implementation IJTHeroesListingCell (Configuration)

- (void)configureCellWithHero:(IJTSuperHeroModel*)hero {
    
    self.superHeroImageView = [[UIImageView alloc] init];
    self.superHeroNameLabel = [[UILabel alloc] init];
    self.addToFavouritesButton = [[UIButton alloc] init];
    
    [self configureView];
    
    self.superHero = hero;
    
    self.superHeroNameLabel.text = hero.name;
    
    UIImage *imageFromCache = [IJTCache retrieveImageFromCache:hero.photoUrl];
    
    if (imageFromCache == nil) {
        
        UIActivityIndicatorView* activityView = [IJTActivityIndicatorController showActivityIndicator:self.contentView];
        
        [IJTNetworkLayer downloadImageWithURL:hero.photoUrl completionHandler:^(UIImage *image) {
            
            dispatch_sync(dispatch_get_main_queue(), ^{
                
                [IJTCache saveImage:image inCacheForUrl:hero.photoUrl];
                
                [activityView removeFromSuperview];
                
                self.superHeroImageView.image = image;
                
                [self checkIfIsFavorite:hero];
            });
        }];
        
        } else {
            
             self.superHeroImageView.image = imageFromCache;
            
            [self checkIfIsFavorite:hero];
        }
}

- (void)configureAsFavoriteCell {
    
    self.userInteractionEnabled = false;
    [self.addToFavouritesButton setHidden:true];
}

- (void)checkIfIsFavorite:(IJTSuperHeroModel*)hero {
    
    NSArray<NSString*>* favorites = [IJTPersistenceCoordinator retrieveFavouriteSuperHerosOfUser];
    
    if (self.superHeroImageView.image != nil) {
        
        [self.cellDelegate didFinishFetchImage:self.superHeroImageView.image andKey:hero.name];
    }
    
    if ([favorites containsObject:self.superHero.identifier]) {
    
        [self.addToFavouritesButton setBackgroundImage:[UIImage imageNamed:kInFavoritesIcon] forState:UIControlStateNormal];
        
    } else {
        
        [self.addToFavouritesButton setBackgroundImage:[UIImage imageNamed:kNotInFavoritesIcon] forState:UIControlStateNormal];
    }
}

- (void)configureView {
    
    [self.contentView addSubview:self.superHeroImageView];
    [self.contentView addSubview:self.superHeroNameLabel];
    [self.contentView addSubview:self.addToFavouritesButton];
    
    [self setClipsToBounds:YES];
    
    [self.superHeroImageView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.superHeroNameLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.addToFavouritesButton setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [[self.superHeroImageView.topAnchor constraintEqualToAnchor:self.contentView.topAnchor] setActive:YES];
    [[self.superHeroImageView.leadingAnchor constraintEqualToAnchor:self.contentView.leadingAnchor] setActive:YES];
    [[self.superHeroImageView.trailingAnchor constraintEqualToAnchor:self.contentView.trailingAnchor] setActive:YES];
    [[self.superHeroImageView.heightAnchor constraintEqualToConstant:self.contentView.frame.size.height*0.85] setActive:YES];
    [[self.superHeroImageView.bottomAnchor constraintEqualToAnchor:self.superHeroNameLabel.topAnchor] setActive:YES];
    
    [[self.superHeroNameLabel.leadingAnchor constraintEqualToAnchor:self.contentView.leadingAnchor] setActive:YES];
    [[self.superHeroNameLabel.trailingAnchor constraintEqualToAnchor:self.contentView.trailingAnchor] setActive:YES];
    [[self.superHeroNameLabel.bottomAnchor constraintEqualToAnchor:self.contentView.bottomAnchor] setActive:YES];
    
    [self.superHeroNameLabel setBackgroundColor:[UIColor redColor]];
    [self.superHeroNameLabel setTextColor:[UIColor whiteColor]];
    [self.superHeroNameLabel setTextAlignment:NSTextAlignmentCenter];
    self.superHeroNameLabel.adjustsFontSizeToFitWidth =YES;
    [self.superHeroNameLabel setNumberOfLines:0];
    
    [[self.addToFavouritesButton.topAnchor constraintEqualToAnchor:self.contentView.topAnchor constant:5] setActive:YES];
    [[self.addToFavouritesButton.trailingAnchor constraintEqualToAnchor:self.contentView.trailingAnchor constant:-10] setActive:YES];
    [[self.addToFavouritesButton.heightAnchor constraintEqualToConstant:self.contentView.frame.size.width * 0.20] setActive:YES];
    [[self.addToFavouritesButton.widthAnchor constraintEqualToAnchor:self.addToFavouritesButton.heightAnchor multiplier:1] setActive:YES];
    [self.addToFavouritesButton addTarget:self action:@selector(didPressAddToFavouritesButton:) forControlEvents:UIControlEventTouchUpInside];
    
    self.superHeroImageView.contentMode = UIViewContentModeScaleAspectFill;
}

- (IBAction)didPressAddToFavouritesButton:(id)sender {
    
    NSArray<NSString*>* favoritesHeroes = [IJTPersistenceCoordinator retrieveFavouriteSuperHerosOfUser];
    
    if ([favoritesHeroes containsObject: self.superHero.identifier]) {
    
        [self.cellDelegate removeSuperHeroFromFavorites:self.superHero];
        [self setNotInFavoritesImage];
        
    } else {
        
        [self.cellDelegate addSuperHeroToFavorites:self.superHero];
        [self setInFavoritesImage];
    }
}

- (void)setInFavoritesImage {
    
    [self.addToFavouritesButton setBackgroundImage:[UIImage imageNamed:kInFavoritesIcon] forState:UIControlStateNormal];
}

- (void)setNotInFavoritesImage {
   
    [self.addToFavouritesButton setBackgroundImage:[UIImage imageNamed:kNotInFavoritesIcon] forState:UIControlStateNormal];
}

@end
