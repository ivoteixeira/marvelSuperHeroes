//
//  IJTNetworkLayer+Event.m
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 15/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTNetworkLayer+Event.h"
#import "UIKit/UIKit.h"

@interface IJTNetworkLayer()

- (void)performRequestForUrl:(NSString*)url completionHandler:(void (^)(NSDictionary *dict))completionHandler;

@end

static NSString * const kEventsUrl = @"/%@/events";

static NSString * const kData = @"data";
static NSString * const kResults = @"results";

@implementation IJTNetworkLayer (Event)

- (void)retrieveEventsForHero:(IJTSuperHeroModel *)hero completionHandler:(void(^)(NSArray<IJTEventModel*>*))completionHandler {
    
    NSString *url = [NSString stringWithFormat:kEventsUrl, hero.identifier];
    
    [self performRequestForUrl:url completionHandler:^(NSDictionary *dict) {
        
        NSArray *events = [self parseEventDict:dict];
        
        completionHandler(events);
    }];
}

- (NSArray*)parseEventDict:(NSDictionary*)dict {
    
    NSMutableArray *events = [[NSMutableArray<IJTEventModel*> alloc] init];
    
    id data_info = [dict objectForKey:kData];
    id result = [data_info objectForKey:kResults];
    
    for (NSDictionary* value in result) {
        
        IJTEventModel *event = [[IJTEventModel alloc] initWithDictionary:value];
        
        [events addObject:event];
    }
    
    return [events copy];
}

@end
