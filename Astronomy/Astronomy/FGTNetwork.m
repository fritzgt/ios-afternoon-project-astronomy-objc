//
//  FGTNetwork.m
//  Astronomy
//
//  Created by FGT MAC on 7/12/21.
//

#import "FGTNetwork.h"

@implementation FGTNetwork

+(void)fetchDataForSol:(int)sol completion:(void(^)(FGTMartialSol*, NSError* error))completion
{
    // https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1&api_key=DEMO_KEY
    
    NSURL *baseURL = [NSURL URLWithString:@"https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos"];
    NSString *apiKey = @"Ib3vWP7rd8VwdSiqmXPi3nbJhvBabOkvnujMxazW";
    
    NSURLComponents *components = [NSURLComponents componentsWithURL:baseURL resolvingAgainstBaseURL:YES];
    
    components.queryItems = @[
        [NSURLQueryItem queryItemWithName:@"sol" value: [NSString stringWithFormat:@"%d",sol]],
        [NSURLQueryItem queryItemWithName:@"api_key" value:apiKey]];
    
    NSURL *url = components.URL;
    
    [[NSURLSession.sharedSession dataTaskWithURL: url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        //Handle errors
        
        //Handle data parsing
        
        //Send completion in main queue 
    }]resume];
}

@end
