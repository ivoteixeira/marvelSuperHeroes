//
//  IJTNetworkLayer+UIImage.m
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 16/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTNetworkLayer+UIImage.h"

@implementation IJTNetworkLayer (UIImage)

+ (void)downloadImageWithURL:(NSString *)url completionHandler:(void(^)(UIImage *image))completionHandler {
    
    NSURLSession *session = [NSURLSession sharedSession];
    
    [[session dataTaskWithURL:[NSURL URLWithString:url]
            completionHandler:^(NSData *data,
                                NSURLResponse *response,
                                NSError *error) {
                
                UIImage *image = [[UIImage alloc] initWithData:data];
                
                completionHandler(image);
                
            }] resume];
}

@end
