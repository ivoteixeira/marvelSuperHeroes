//
//  IJTNetworkLayerConfig.m
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 21/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTNetworkLayerConfig.h"

static NSString * const kFileName = @"API";
static NSString * const kFileExtension = @"json";

static NSString * const kBaseUrl = @"baseUrl";
static NSString * const kApiKey = @"apiKey";
static NSString * const kHashKey = @"hashKey";
static NSString * const kTimestamp = @"timestamp";

@implementation IJTNetworkLayerConfig

- (id)initFromJson {
    
    if (self = [super init]) {
        
        NSString *path = [[NSBundle mainBundle] pathForResource:kFileName ofType:kFileExtension];
        NSData *data = [NSData dataWithContentsOfFile:path];
        NSDictionary* configDictionary = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
        
        self.baseUrl = configDictionary[kBaseUrl];
        self.apiKey = configDictionary[kApiKey];
        self.hashKey = configDictionary[kHashKey];
        self.timestamp = configDictionary[kTimestamp];
    }
    
    return self;
}

@end
