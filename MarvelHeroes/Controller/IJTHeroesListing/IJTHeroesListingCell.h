//
//  HLPCollectionViewCellCollectionViewCell.h
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 20/10/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IJTSuperHeroModel.h"


@protocol HLPCollectionViewCellDelegate<NSObject>

- (void)didFinishFetchImage:(UIImage *)image andKey:(NSString *)key;
- (void)addSuperHeroToFavorites:(IJTSuperHeroModel *)hero;
- (void)removeSuperHeroFromFavorites:(IJTSuperHeroModel *)hero;

@end

@interface IJTHeroesListingCell : UICollectionViewCell 

@property (nonatomic, strong) UIImageView *superHeroImageView;
@property (nonatomic, strong) UILabel *superHeroNameLabel;
@property (nonatomic, strong) UIButton *addToFavouritesButton;

@property (nonatomic, weak) id<HLPCollectionViewCellDelegate> cellDelegate;
@property (nonatomic, strong) IJTSuperHeroModel * superHero;

@end
