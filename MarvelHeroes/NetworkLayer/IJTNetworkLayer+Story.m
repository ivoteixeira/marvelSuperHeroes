//
//  IJTNetworkLayer+Story.m
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 15/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTNetworkLayer+Story.h"
#import "UIKit/UIKit.h"

@interface IJTNetworkLayer()

- (void)performRequestForUrl:(NSString*)url completionHandler:(void(^)(NSDictionary *dict))completionHandler;

@end

static NSString * const kStoriesUrl = @"/%@/stories";

static NSString * const kData = @"data";
static NSString * const kResults = @"results";

@implementation IJTNetworkLayer (Story)

- (void)retrieveStoriesForHero:(IJTSuperHeroModel *)hero completionHandler:(void (^)(NSArray<IJTStoryModel*>*))completionHandler {
    
    NSString *url = [NSString stringWithFormat:kStoriesUrl, hero.identifier];
    
    [self performRequestForUrl:url completionHandler:^(NSDictionary *dict) {
       
        NSArray *stories = [self parseStoryDict:dict];
       
        completionHandler(stories);
    }];
}

- (NSArray*)parseStoryDict:(NSDictionary*)dict {
    
    NSMutableArray *stories = [[NSMutableArray<IJTStoryModel*> alloc] init];
    
    id data_info = [dict objectForKey:kData];
    
    id result = [data_info objectForKey:kResults];
    
    for (NSDictionary* value in result) {
    
        IJTStoryModel *story = [[IJTStoryModel alloc] initWithDictionary:value];
        
        [stories addObject:story];
    }
    
    return [stories copy];
}

@end
