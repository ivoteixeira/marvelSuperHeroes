//
//  IJTTopicDetailedViewControllerDataSource.h
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 13/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@class IJTTopicDetailedViewControllerDataSource;

@protocol TopicDetailedDataSourceDelegate

- (void)topicDetailedDataSource:(nonnull IJTTopicDetailedViewControllerDataSource*)topicDetailedDataSource image:(nullable UIImage*) image;

@end

@interface IJTTopicDetailedViewControllerDataSource : NSObject

@property (nonatomic, weak, nullable) id<TopicDetailedDataSourceDelegate> delegate;

- (void)retrieveImageForThumbnail:(NSString*_Nullable) url;

@end



