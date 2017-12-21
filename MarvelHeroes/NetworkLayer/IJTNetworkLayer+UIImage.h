//
//  IJTNetworkLayer+UIImage.h
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 16/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTNetworkLayer.h"
#import <UIKit/UIKit.h>
#import "IJTNetworkLayer.h"

@interface IJTNetworkLayer (UIImage)

+ (void)downloadImageWithURL:(NSString *)url completionHandler:(void(^)(UIImage *image))completionHandler;

@end
