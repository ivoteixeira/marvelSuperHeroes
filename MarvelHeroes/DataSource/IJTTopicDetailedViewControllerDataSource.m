//
//  IJTTopicDetailedViewControllerDataSource.m
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 13/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTTopicDetailedViewControllerDataSource.h"
#import "IJTAPIConstants.h"
#import "IJTNetworkLayer+UIImage.h"
#import "IJTCache.h"

@implementation IJTTopicDetailedViewControllerDataSource

- (void)retrieveImageForThumbnail:(NSString*)url {
    
    [IJTNetworkLayer downloadImageWithURL:url completionHandler:^(UIImage *image) {
    
        [IJTCache saveImage:image inCacheForUrl:url];
        
        [self.delegate topicDetailedDataSource:self image:image];
    
    }];
}

@end
