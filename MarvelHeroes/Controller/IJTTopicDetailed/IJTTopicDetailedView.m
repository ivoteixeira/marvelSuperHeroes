//
//  IJTTopicDetailedView.m
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 21/12/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTTopicDetailedView.h"

@implementation IJTTopicDetailedView

static NSString * const kNoDescriptionTextViewText = @"";

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
    
    self.titleLabel.numberOfLines = 0;
    
}

- (void)configureSubviews {
    
    self.thumbnailImageView = [[UIImageView alloc] init];
    self.titleLabel = [[UILabel alloc] init];
    self.descriptionTextView = [[UITextView alloc] init];
    
}

- (void)addSubviews {
    
    [self addSubview:self.thumbnailImageView];
    [self addSubview:self.titleLabel];
    [self addSubview:self.descriptionTextView];
}

- (void)configureConstraints {
    
    [self.titleLabel setNumberOfLines:0];
    
    [self.thumbnailImageView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.titleLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.descriptionTextView setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [[self.thumbnailImageView.topAnchor constraintEqualToAnchor:self.topAnchor] setActive:YES];
    [[self.thumbnailImageView.leadingAnchor constraintEqualToAnchor:self.leadingAnchor] setActive:YES];
    [[self.thumbnailImageView.trailingAnchor constraintEqualToAnchor:self.trailingAnchor] setActive:YES];
    [[self.thumbnailImageView.heightAnchor constraintEqualToConstant:300] setActive:YES];
    
    [[self.titleLabel.topAnchor constraintEqualToAnchor:self.thumbnailImageView.bottomAnchor constant:10] setActive:YES];
    [[self.titleLabel.leadingAnchor constraintEqualToAnchor:self.leadingAnchor] setActive:YES];
    [[self.titleLabel.trailingAnchor constraintEqualToAnchor:self.trailingAnchor] setActive:YES];
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    
    [[self.descriptionTextView.topAnchor constraintEqualToAnchor:self.titleLabel.bottomAnchor constant:10] setActive:YES];
    [[self.descriptionTextView.leadingAnchor constraintEqualToAnchor:self.leadingAnchor] setActive:YES];
    [[self.descriptionTextView.trailingAnchor constraintEqualToAnchor:self.trailingAnchor] setActive:YES];
    [[self.descriptionTextView.bottomAnchor constraintEqualToAnchor:self.bottomAnchor]setActive:YES];
    self.descriptionTextView.textAlignment = NSTextAlignmentCenter;
    
}

- (void)setViewWithTitle:(NSString*)title andName:(NSString*)name andDescription:(NSString*)description {
    
    self.titleLabel.text = title;
    
    if ([description isKindOfClass:[NSNull class]]) {
        
        self.descriptionTextView.text = kNoDescriptionTextViewText;
        
    } else {
        
        self.descriptionTextView.text = description;
    }
}

- (void)setThumbnailImage:(UIImage *)thumbnailImage {
    self.thumbnailImageView.image = thumbnailImage;
}

@end
