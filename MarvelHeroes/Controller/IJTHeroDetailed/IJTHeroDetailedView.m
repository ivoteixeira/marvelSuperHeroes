//
//  IJTHeroDetailedView.m
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 05/12/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTHeroDetailedView.h"

@implementation IJTHeroDetailedView

- (instancetype)init {
    
    self = [super init];
    
    if (self) {
        
        [self configureView];
    }
    
    return self;
}


- (void)configureView {
    
    [self configureSubviews];
    [self addSubviews];
    [self configureConstraints];
    
    [self setBackgroundColor:[UIColor whiteColor]];
    
    self.superHeroNameLabel.numberOfLines = 0;
    self.superHeroDescription.numberOfLines = 0;

}

- (void)configureSubviews {
    
    self.tableView = [[UITableView alloc] init];
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    
    self.superHeroImageView = [[UIImageView alloc] init];
    self.superHeroNameLabel = [[UILabel alloc] init];
    self.superHeroDescription = [[UILabel alloc] init];

}

- (void)addSubviews {
    
    [self addSubview:self.superHeroImageView];
    [self addSubview:self.superHeroNameLabel];
    [self addSubview:self.superHeroDescription];
    [self addSubview:self.tableView];
}


- (void)configureConstraints {
    
    [self.superHeroImageView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.superHeroNameLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.superHeroDescription setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.tableView setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [[self.superHeroImageView.topAnchor constraintEqualToAnchor:self.safeAreaLayoutGuide.topAnchor] setActive:YES];
    [[self.superHeroImageView.leadingAnchor constraintEqualToAnchor:self.leadingAnchor] setActive:YES];
    [[self.superHeroImageView.trailingAnchor constraintEqualToAnchor:self.trailingAnchor] setActive:YES];
    [[self.superHeroImageView.heightAnchor constraintEqualToConstant:[UIScreen mainScreen].bounds.size.height * 0.3] setActive:YES];
    
    [[self.superHeroNameLabel.topAnchor constraintEqualToAnchor:self.superHeroImageView.bottomAnchor constant:10] setActive:YES];
    [[self.superHeroNameLabel.leadingAnchor constraintEqualToAnchor:self.leadingAnchor] setActive:YES];
    [[self.superHeroNameLabel.trailingAnchor constraintEqualToAnchor:self.trailingAnchor] setActive:YES];
    self.superHeroNameLabel.textAlignment = NSTextAlignmentCenter;
    
    [[self.superHeroDescription.topAnchor constraintEqualToAnchor:self.superHeroNameLabel.bottomAnchor constant:10] setActive:YES];
    [[self.superHeroDescription.leadingAnchor constraintEqualToAnchor:self.leadingAnchor] setActive:YES];
    [[self.superHeroDescription.trailingAnchor constraintEqualToAnchor:self.trailingAnchor] setActive:YES];
    self.superHeroDescription.textAlignment = NSTextAlignmentCenter;
    
    [[self.tableView.topAnchor constraintEqualToAnchor:self.superHeroDescription.bottomAnchor constant:10] setActive:YES];
    [[self.tableView.leadingAnchor constraintEqualToAnchor:self.leadingAnchor] setActive:YES];
    [[self.tableView.trailingAnchor constraintEqualToAnchor:self.trailingAnchor] setActive:YES];
    [[self.tableView.bottomAnchor constraintEqualToAnchor:self.bottomAnchor constant:10] setActive:YES];
    
}

@end
