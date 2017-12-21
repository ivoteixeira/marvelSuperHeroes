//
//  IJTNetworkLayerConfig.h
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 21/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IJTNetworkLayerConfig : NSObject

@property (nonatomic, copy) NSString* baseUrl;
@property (nonatomic, copy) NSString* apiKey;
@property (nonatomic, copy) NSString* hashKey;
@property (nonatomic, copy) NSString* timestamp;

- (id)initFromJson;

@end
