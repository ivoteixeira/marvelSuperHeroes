//
//  NetworkLayer+Comic.m
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 15/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTNetworkLayer+Comic.h"
#import "UIKit/UIKit.h"

@interface IJTNetworkLayer()

- (void)performRequestForUrl:(NSString*)url completionHandler:(void (^)(NSDictionary *dict))completionHandler;

@end

static NSString * const kComicsUrl = @"/%@/comics";

static NSString * const kData = @"data";
static NSString * const kResults = @"results";

@implementation IJTNetworkLayer (Comic)

- (void)retrieveComicsForHero:(IJTSuperHeroModel *)hero completionHandler:(void (^)(NSArray<IJTComicModel*>*))completionHandler {
    
    NSString *url = [NSString stringWithFormat:kComicsUrl, hero.identifier];
    
    [self performRequestForUrl:url completionHandler:^(NSDictionary *dict) {
       
      NSArray *comics = [self parseComicDict:dict];
        
        completionHandler([comics copy]);
    }];
}

- (NSArray *)parseComicDict:(NSDictionary*)dict {
    
    NSMutableArray *comics = [[NSMutableArray<IJTComicModel*> alloc] init];
   
    id data_info = [dict objectForKey:kData];
    id result = [data_info objectForKey:kResults];
    
    for (NSDictionary* value in result) {
    
        IJTComicModel *comic = [[IJTComicModel alloc] initWithDictionary:value];
        
        [comics addObject:comic];
    }

    return [comics copy];
}

@end
