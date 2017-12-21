//
//  NetworkLayer+SuperHero.m
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 15/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTNetworkLayer+SuperHero.h"
#import "IJTAPIConstants.h"

@interface IJTNetworkLayer()

- (void)performRequestForUrl:(NSString*)url completionHandler:(void(^)(NSDictionary *dict))completionHandler;

@end

@implementation IJTNetworkLayer (SuperHero)

static NSString * const kData = @"data";
static NSString * const kResults = @"results";

- (void)requestsAllHeroes:(NSInteger)offset completionHandler:(void(^)(NSArray<IJTSuperHeroModel*>*))completionHandler {
    
    [self performRequestForUrl:[NSString stringWithFormat:@"offset=%ld", offset] completionHandler:^(NSDictionary *dict) {
        
        NSArray *heroes = [self parseSuperHeroesInfo:dict];
        
        completionHandler(heroes);
    }];
}

- (void)requestHeroById:(NSString*)heroId completionHandler:(void(^)(IJTSuperHeroModel*))completionHandler {
    
    [self performRequestForUrl:[@"/" stringByAppendingString:heroId] completionHandler:^(NSDictionary *dict) {
        
        IJTSuperHeroModel *hero = [self parseSingleSuperHeroInfo:dict];
        
        completionHandler(hero);
    }];
}

- (NSArray<IJTSuperHeroModel*>*)parseSuperHeroesInfo:(NSDictionary*)info {
    
    NSMutableArray *heroes = [[NSMutableArray<IJTSuperHeroModel*> alloc] init];
    
    id data_info = [info objectForKey:kData];
    id result = [data_info objectForKey:kResults];
    
    for (NSDictionary* value in result) {
        
        IJTSuperHeroModel *hero = [[IJTSuperHeroModel alloc] initWithJson:value];
        
        [heroes addObject:hero];
    }
    
    return [heroes copy];
}


- (IJTSuperHeroModel*)parseSingleSuperHeroInfo:(NSDictionary*)info {
    
    id data_info = [info objectForKey:@"data"];
    id result = [data_info objectForKey:@"results"];
    
    return [[IJTSuperHeroModel alloc] initWithJson:result[0]];
}

@end
