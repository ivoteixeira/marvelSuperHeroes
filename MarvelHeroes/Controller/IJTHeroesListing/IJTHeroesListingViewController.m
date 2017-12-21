//
//  HLPCollectionViewController.m
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 19/10/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTHeroesListingViewController.h"
#import "IJTSuperHeroModel.h"
#import "IJTHeroDetailedViewController.h"
#import "IJTFavoritesViewController.h"
#import "IJTPushAnimator.h"
#import "IJTPersistenceCoordinator.h"
#import "IJTHeroesListingDataSource.h"
#import "IJTHeroesListingCell+Configuration.h"
#import "IJTCache.h"

@interface IJTHeroesListingViewController () <MarvelHeroesDatasourceDelegate,UISearchBarDelegate, HLPCollectionViewCellDelegate, UINavigationControllerDelegate>

@property (nonatomic, strong) UISearchBar *searchBar;
@property (nonatomic, strong) UIBarButtonItem *addSearchBarButton;
@property (nonatomic, strong) UIBarButtonItem *favouritesButton;
@property (nonatomic, strong) IJTHeroesListingDataSource *dataSource;

@property (nonatomic, assign) BOOL isSearching;
@property (nonatomic, assign) NSInteger offset_value;
@property (nonatomic, assign) BOOL isRequesting;

@property (nonatomic, strong) NSArray *superHeroes;
@property (nonatomic, strong) NSArray *superHeroesWhileSearching;
@property (nonatomic, strong) NSDictionary *superHeroesPhotos;

@end

static NSString * const reuseIdentifier = @"default";
static NSString * const navBarTitle = @"MARVEL";
static NSTimeInterval const kAnimationDuration = 0.60;

@implementation IJTHeroesListingViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.dataSource = [[IJTHeroesListingDataSource alloc] init];
    self.dataSource.delegate = self;
    
    [self.collectionView setBackgroundColor:[UIColor whiteColor]];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationController.delegate = self;
    self.navigationController.navigationBar.topItem.title = navBarTitle;
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    self.searchBar = [[UISearchBar alloc] init];
    self.searchBar.delegate = self;
    
    [self.collectionView registerClass:[IJTHeroesListingCell self] forCellWithReuseIdentifier:reuseIdentifier];
    
    self.isSearching = NO;
    self.isRequesting = NO;
    self.offset_value = 0;
    
    [self returnAllUsers];
}

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    [self createSearchButton];
    [self createFavouritesButton];
    [self addNavBarRightButtons];
    
    if (self.isSearching == YES) {
        
        [self addSearchBar:nil];
    }
}

#pragma mark <UIChanges>

- (void) createSearchButton {
    
    UIImage* icon = [UIImage imageNamed:@"search_icon"];
    
    self.addSearchBarButton = [[UIBarButtonItem alloc] init];
    self.addSearchBarButton = [[UIBarButtonItem alloc]
                         initWithTitle:@""
                         style:UIBarButtonItemStylePlain
                         target:self
                         action:@selector(addSearchBar:)];
    [self.addSearchBarButton setBackgroundImage:icon forState:normal barMetrics:UIBarMetricsDefault];
}

- (void) createFavouritesButton {
    
    UIImage* icon = [UIImage imageNamed:@"favoritesTab_logo"];
    
    self.favouritesButton = [[UIBarButtonItem alloc]
                               initWithTitle:@""
                               style:UIBarButtonItemStylePlain
                               target:self
                               action:@selector(goToFavourites:)];
    [self.favouritesButton setBackgroundImage:icon forState:normal barMetrics:UIBarMetricsDefault];
}


- (IBAction)goToFavourites:(id)sender {
    
    UICollectionViewFlowLayout *layout=[[UICollectionViewFlowLayout alloc] init];
    
    IJTFavoritesViewController *favouritesViewController = [[IJTFavoritesViewController alloc] initWithCollectionViewLayout:layout];
    
    favouritesViewController.view.backgroundColor = [UIColor whiteColor];
    
    [self.navigationController pushViewController:favouritesViewController animated:true];
}

- (IBAction)addSearchBar:(id)sender {
    
    self.isSearching = YES;
    
    [UIView animateWithDuration:kAnimationDuration animations:^{
        
        [self.navigationController.navigationBar addSubview:self.searchBar];
        
        [self.searchBar setTranslatesAutoresizingMaskIntoConstraints:NO];
        [self.searchBar.leadingAnchor constraintEqualToAnchor:self.navigationController.navigationBar.leadingAnchor constant:20].active = YES;
        [self.searchBar.trailingAnchor constraintEqualToAnchor:self.navigationController.navigationBar.trailingAnchor constant:-10].active = YES;
        [self.searchBar.bottomAnchor constraintEqualToAnchor:self.navigationController.navigationBar.bottomAnchor constant:-5].active = YES;
        [self.searchBar.heightAnchor constraintEqualToConstant:44].active = YES;
        
        self.searchBar.showsCancelButton = true;
        
        [self.searchBar becomeFirstResponder];
   
        self.addSearchBarButton.title = @"";
        self.favouritesButton.title = @"";
        
        self.navigationItem.rightBarButtonItems = nil;
        
    }];
}


- (void)addNavBarRightButtons {
    
     self.navigationItem.rightBarButtonItems = [NSArray arrayWithObjects:self.favouritesButton, self.addSearchBarButton, nil];
}

- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar {
    
    [UIView animateWithDuration: kAnimationDuration animations:^{
       
        [self.searchBar removeFromSuperview];
        [self createSearchButton];
        [self createFavouritesButton];
        [self addNavBarRightButtons];
    }];
    
    self.isSearching = false;
    
    [self.collectionView reloadData];
}



- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText {

    if ([searchText compare:@""] == 0) {

        self.isSearching = false;

    } else {
        
        self.isSearching = true;
        
        self.superHeroesWhileSearching = [[NSArray alloc] init];
        
        for (IJTSuperHeroModel *hero in self.superHeroes) {
        
            if ([[hero.name lowercaseString] containsString:[searchText lowercaseString]]) {
                NSMutableArray *heroTemp = [[NSMutableArray alloc] init];
                [ heroTemp addObject:hero];
                self.superHeroesWhileSearching  = [self.superHeroesWhileSearching arrayByAddingObjectsFromArray:heroTemp];
                
            }
        }
    }
    
   [self.collectionView reloadData];
}


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {

    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    if (self.isSearching == true) {
        
        return self.superHeroesWhileSearching.count;
    
    } else {
        
        return self.superHeroes.count;
    }
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    
    IJTHeroesListingCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    cell = [cell init];
    
    if (self.isSearching == true) {
       
        IJTSuperHeroModel *hero = self.superHeroesWhileSearching[indexPath.row];
        
        [cell configureCellWithHero:hero];
    } else {
        
        IJTSuperHeroModel *hero = self.superHeroes[indexPath.row];
        [cell configureCellWithHero:hero];
    }

    cell.cellDelegate = self;
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    if (self.isSearching == true) {
        
        IJTHeroDetailedViewController *heroDetailed = [[IJTHeroDetailedViewController alloc] initWithHero:self.superHeroesWhileSearching[indexPath.row]];
        
        [self.navigationController pushViewController:heroDetailed animated:true];
    }
    
    else {
        
        IJTHeroDetailedViewController *heroDetailed = [[IJTHeroDetailedViewController alloc] initWithHero:self.superHeroesWhileSearching[indexPath.row]];
        
        [self.navigationController pushViewController:heroDetailed animated:true];
    }
    

    [UIView animateWithDuration:kAnimationDuration animations:^{
        
        [self.searchBar removeFromSuperview];
    }];
 
}
    

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    
    CGFloat bottomEdge = scrollView.contentSize.height + scrollView.contentInset.bottom - scrollView.bounds.size.height;
    
    if (scrollView.contentOffset.y >= bottomEdge) {
        
        [self returnAllUsers];
    }
    
}


- (CGFloat)collectionView:(UICollectionView *)collectionView layout:  (UICollectionView *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return 0;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 0;
}


- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(self.view.frame.size.width /3 , (self.view.frame.size.height -  self.view.safeAreaInsets.top) /3);

}


#pragma mark Requests


- (void) returnAllUsers {
    if (self.isRequesting) {
        
        return;
    }
    self.isRequesting = true;
    [_dataSource requestsAllHeroes:self.offset_value];
}



#pragma mark <Delegates>

- (void)didFinishFetchImage:(UIImage *)image andKey:(NSString *)key {
    NSMutableArray *tempPhoto = [[NSMutableArray alloc] init];
    [tempPhoto setValue: image forKey:key];
    self.superHeroesPhotos = [self.superHeroesPhotos dictionaryWithValuesForKeys:tempPhoto];
}

- (void)addSuperHeroToFavorites:(IJTSuperHeroModel *)hero {
    [IJTPersistenceCoordinator addSuperHeroToFavorites:hero];
}

- (void) removeSuperHeroFromFavorites:(IJTSuperHeroModel *)hero {
    [IJTPersistenceCoordinator removeSuperHeroFromFavorites:hero];
}

- (id<UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController
                                animationControllerForOperation:(UINavigationControllerOperation)operation
                                fromViewController:(UIViewController*)fromVC
                                toViewController:(UIViewController*)toVC
{
    if (operation == UINavigationControllerOperationPush)
        
        if ([toVC isKindOfClass:[IJTFavoritesViewController class]]) {
        
            return nil;
        }
        
        return [[IJTPushAnimator alloc] init];
    
    return nil;
}

#pragma mark - MarvelHeroesDatasourceDelegate

- (void)marvelHeroesDatasource:(nonnull IJTHeroesListingDataSource *)marvelHeroesDatasource
                        heroes:(nullable NSArray<IJTSuperHeroModel *> *)heroes {
 
   
    if (self.superHeroes == nil) {
        
        self.superHeroes = [[NSArray alloc] initWithArray: heroes];
   
    } else {
        
        self.superHeroes = [self.superHeroes arrayByAddingObjectsFromArray:heroes];
    }
    
    if (self.superHeroesWhileSearching == nil) {
        
          self.superHeroesWhileSearching= [[NSArray alloc] initWithArray: heroes];
        
    } else {
        
         self.superHeroesWhileSearching = [self.superHeroesWhileSearching arrayByAddingObjectsFromArray:heroes];
    }
    
    [self.collectionView reloadData];
        
    self.isRequesting = false;
    self.offset_value += 20;
    
   
    
}

@end




