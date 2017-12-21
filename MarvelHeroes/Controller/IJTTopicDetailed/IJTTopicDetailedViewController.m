//
//  TopicDetailedViewController.m
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 24/10/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTTopicDetailedViewController.h"
#import "IJTAPIConstants.h"
#import "IJTTopicDetailedViewControllerDataSource.h"
#import "IJTActivityIndicatorController.h"
#import "IJTTopicDetailedView.h"

@interface IJTTopicDetailedViewController () <TopicDetailedDataSourceDelegate>

@property (nonatomic, strong) IJTTopicDetailedViewControllerDataSource *dataSource;

@property (nonatomic, strong) UIActivityIndicatorView* activityView;

@property (nonatomic, strong) IJTTopicDetailedView *topicDetailedView;

@end

static NSString * const kNoDescriptionTextViewText = @"";

@implementation IJTTopicDetailedViewController

- (void) loadView {
    
    self.topicDetailedView = [[IJTTopicDetailedView alloc] init];
    self.view = self.topicDetailedView;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.dataSource = [[IJTTopicDetailedViewControllerDataSource alloc] init];
    
    self.dataSource.delegate = self;
    
    [self addInfoToLabels];
    [self requestThumbnails];
}

- (void)addInfoToLabels {

    if ([self.topic isEqualToString:kSeries]) {
       
        [self.topicDetailedView setViewWithTitle:self.serie.name andName:self.serie.name andDescription:self.serie.long_description];
    }
    
    if ([self.topic isEqualToString:kStories]) {
    
        [self.topicDetailedView setViewWithTitle:self.story.name andName:self.story.name andDescription:self.story.long_description];
    }
    
    if ([self.topic isEqualToString:kEvents]) {
    
        [self.topicDetailedView setViewWithTitle:self.event.name andName:self.event.name andDescription:self.event.long_description];
    }
    
    if ([self.topic isEqualToString:kComics]) {
        
        [self.topicDetailedView setViewWithTitle:self.comic.name andName:self.comic.name andDescription:self.comic.long_description];
    }
    
}

- (void)requestThumbnails {
   
   
    if ([self.topic isEqualToString:kSeries]) {
        
        [self.dataSource retrieveImageForThumbnail:self.serie.thumbnail];
    }
    
    if ([self.topic isEqualToString:kStories]) {
    
        [self.dataSource retrieveImageForThumbnail:self.story.thumbnail];
    }
    
    if ([self.topic isEqualToString:kEvents]) {
        
        [self.dataSource retrieveImageForThumbnail:self.event.thumbnail];
    }
    
    if ([self.topic isEqualToString:kComics]) {
    
        [self.dataSource retrieveImageForThumbnail:self.comic.thumbnail];
    }
    
}

- (void)topicDetailedDataSource:(nonnull IJTTopicDetailedViewControllerDataSource*)topicDetailedDataSource image:(nullable UIImage*)image {
   
    dispatch_sync(dispatch_get_main_queue(), ^{
    
        [IJTActivityIndicatorController stopActivityIndicator:self.activityView];
        [self.topicDetailedView setThumbnailImage:image];
    });
}

@end
