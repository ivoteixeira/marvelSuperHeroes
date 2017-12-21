//
//  IJTNetworkLayer.h
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 10/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IJTNetworkLayerConfig.h"

@interface IJTNetworkLayer : NSObject

@property (nonatomic, strong) IJTNetworkLayerConfig *config;

+ (IJTNetworkLayer *)sharedInstance;

@end
