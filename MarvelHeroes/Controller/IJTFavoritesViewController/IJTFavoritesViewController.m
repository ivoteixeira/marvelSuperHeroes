//
//  FavouritesCollectionViewController.m
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 25/10/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTFavoritesViewController.h"
#import "IJTHeroesListingCell.h"
#import "IJTAPIConstants.h"
#import "IJTFavoritesDataSource.h"
#import "IJTHeroesListingCell+Configuration.h"
#import "IJTActivityIndicatorController.h"

@interface IJTFavoritesViewController () <FavoritesDataSourceDelegate>

@property (nonatomic, strong) NSArray  *superHeroes;
@property (nonatomic, assign) NSInteger offset_value;
@property (nonatomic, strong) IJTFavoritesDataSource *dataSource;
@property (nonatomic, strong) UIActivityIndicatorView *activityView;

@end

static NSString * const kReuseIdentifier = @"default";
static NSString * const kNavBarTitle = @"Favorites";
static NSString * const kNoFavoritesLabelText = @" There's no Favorite Hero. Why ? ";

@implementation IJTFavoritesViewController

- (void)viewDidLoad {

    [super viewDidLoad];
    
    self.dataSource = [[IJTFavoritesDataSource alloc] init];
    
    self.dataSource.delegate = self;
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
    
    [self.collectionView registerClass:[IJTHeroesListingCell self] forCellWithReuseIdentifier:kReuseIdentifier];
    
    self.title = kNavBarTitle;
    
    self.activityView = [IJTActivityIndicatorController showActivityIndicator:self.collectionView];
    [self.dataSource retrieveFavouritesHeroes];
}


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return self.superHeroes.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    IJTHeroesListingCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kReuseIdentifier forIndexPath:indexPath];
    
    IJTSuperHeroModel *hero = self.superHeroes[indexPath.row];
    
    cell.superHero = hero;
    
    [cell configureCellWithHero:hero];
    
    [cell configureAsFavoriteCell];
    
    return cell;
}


- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionView *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    
    return 0;
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    
    return UIEdgeInsetsZero;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
   
    return 0;
}


- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    return  CGSizeMake(self.view.frame.size.width/3, (self.view.frame.size.height - self.view.safeAreaInsets.top)/3);
}

#pragma MARK: Requests

- (void)favoritesDataSource:(nonnull IJTFavoritesDataSource*)favoritesDataSource heroes:(nullable NSArray<IJTSuperHeroModel *> *)heroes {
    
    if (heroes.count > 0) {
        
         dispatch_sync(dispatch_get_main_queue(), ^{
             
             [IJTActivityIndicatorController stopActivityIndicator:self.activityView];
            
             if (self.superHeroes == nil) {
             
                 self.superHeroes = [[NSArray alloc] initWithArray:heroes];
             
             } else {
                 [self.superHeroes arrayByAddingObjectsFromArray:heroes];
             }
             
             [self.collectionView reloadData];
        });
        
    } else {
        
        [IJTActivityIndicatorController stopActivityIndicator:self.activityView];
        
       
        UILabel *label = [[UILabel alloc] init];
        [label setText:kNoFavoritesLabelText];
        [label setBackgroundColor:[UIColor clearColor]];
        [label setNumberOfLines:0];
        [label sizeToFit];
        
        [self.collectionView addSubview:label];
        [label setTranslatesAutoresizingMaskIntoConstraints:NO];
        [label.centerXAnchor constraintEqualToAnchor:self.collectionView.centerXAnchor].active = YES;
        [label.centerYAnchor constraintEqualToAnchor:self.collectionView.centerYAnchor].active = YES;
        [self.collectionView reloadData];
    }
}

@end
