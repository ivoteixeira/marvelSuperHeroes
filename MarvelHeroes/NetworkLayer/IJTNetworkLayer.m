//
//  IJTNetworkLayer.m
//  MarvelHeroes
//
//  Created by Ivo João Serra Magalhães Teixeira on 10/11/2017.
//  Copyright © 2017 Ivo João Serra Magalhães Teixeira. All rights reserved.
//

#import "IJTNetworkLayer.h"

@interface IJTNetworkLayer ()

@property (nonatomic, copy) NSString *baseUrl;
@property (nonatomic, copy) NSString *apiKey;
@property (nonatomic, copy) NSString *hashCode;
@property (nonatomic, copy) NSString *timestamp;
@property (nonatomic, copy) NSString *characters;
@property (nonatomic, strong) NSURLSession *session;

@end

@implementation IJTNetworkLayer

+ (IJTNetworkLayer*)sharedInstance {
    
    static dispatch_once_t once;
    static IJTNetworkLayer* sharedInstance;
    
    dispatch_once(&once, ^ {
        
        sharedInstance = [[IJTNetworkLayer alloc] init];
    });
    
    return sharedInstance;
}

- (void)performRequestForUrl:(NSString*)url completionHandler:(void (^)(NSDictionary *dict))completionHandler {

    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];

    NSString *urlParsed = [self createFullUrlRequestFromUrl:url];
   
    [request setURL:[NSURL URLWithString:urlParsed]];
    [request setHTTPMethod:@"GET"];
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    [[session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        if (error == nil) {
            
            completionHandler([NSJSONSerialization JSONObjectWithData:data options:0 error:nil]);
        
        } else {
        
            completionHandler(nil);
        }
        
    }] resume];
}

- (NSString*)createFullUrlRequestFromUrl:(NSString*)url {
    
    
    NSString * defaultString = [self retrieveStringWithDefaultValues];
    
    if ([url containsString:@"offset"]) {
        
        return [[[self.config.baseUrl stringByAppendingString:defaultString] stringByAppendingString: @"&"] stringByAppendingString: url];
    
    } else {
        
        return [[self.config.baseUrl stringByAppendingString:url] stringByAppendingString:defaultString];
    }
    
}

- (NSString*)retrieveStringWithDefaultValues {
    
    return [[self.config.apiKey stringByAppendingString: self.config.hashKey] stringByAppendingString:self.config.timestamp];
}

@end
