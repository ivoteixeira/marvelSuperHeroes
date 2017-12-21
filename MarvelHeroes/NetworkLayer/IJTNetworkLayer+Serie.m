//
//  IJTNetworkLayer+Serie.m
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 15/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTNetworkLayer+Serie.h"
#import "UIKit/UIKit.h"

@interface IJTNetworkLayer()

- (void)performRequestForUrl:(NSString*)url completionHandler:(void(^)(NSDictionary *dict))completionHandler;

@end

static NSString * const kSeriesUrl = @"/%@/series";

static NSString * const kData = @"data";
static NSString * const kResults = @"results";

@implementation IJTNetworkLayer (Serie)

- (void)retrieveSeriesForHero:(IJTSuperHeroModel *)hero completionHandler:(void(^)(NSArray<IJTSerieModel*>*))completionHandler {
    
    NSString * url = [NSString stringWithFormat:kSeriesUrl, hero.identifier];
    
    [self performRequestForUrl:url completionHandler:^(NSDictionary *dict) {
        
        NSArray *series = [self parseSerieDict:dict];
        
        completionHandler(series);
    }];
}

- (NSArray*)parseSerieDict:(NSDictionary*)dict {
    
    NSMutableArray *series = [[NSMutableArray<IJTSerieModel*> alloc] init];
    
    id data_info = [dict objectForKey:kData];
    id result = [data_info objectForKey:kResults];
    
    for (NSDictionary* value in result) {
        
        IJTSerieModel *serie = [[IJTSerieModel alloc] initWithDictionary:value];
        
        [series addObject:serie];
    }
    
    return [series copy];
}

@end
