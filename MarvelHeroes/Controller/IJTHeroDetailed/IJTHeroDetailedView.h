//
//  IJTHeroDetailedView.h
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 05/12/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IJTHeroDetailedView : UIView

@property (nonatomic, strong) UIImageView *superHeroImageView;
@property (nonatomic, strong) UILabel *superHeroNameLabel;
@property (nonatomic, strong) UILabel *superHeroDescription;
@property (nonatomic, strong) UITableView * tableView;

- (instancetype)init;

@end
