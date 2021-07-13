//
//  FGTMartialSol.m
//  Astronomy
//
//  Created by FGT MAC on 7/12/21.
//

#import "FGTMartialSol.h"

@implementation FGTMartialSol


- (instancetype)initWithRoverID:(nonnull NSNumber *) roverID
                       fullName:(nonnull NSString *)fullName
                         imgSrc:(nonnull NSString *)imgSrc
                      earthDate:(nonnull NSString *)earthDate{
    
    self = [super init];
    if(self){
        _roverID = roverID;
        _fullName = [fullName copy];
        _imgSrc = [imgSrc copy];
        _earthDate = [earthDate copy];
    }
    
    return self;
}

-(nonnull instancetype)initWithDictionary:(nonnull NSDictionary *)dictionary
{
//    NSDictionary *photos = [dictionary objectForKey:@"photos"];
//    if(![photos isKindOfClass:NSDictionary.class]) return nil;
//
    NSDictionary *camera = [dictionary objectForKey:@"camera"];
    if(![camera isKindOfClass:NSDictionary.class]) return nil;
    
    NSNumber *roverID = [camera objectForKey:@"rover_id"];
    if(![roverID isKindOfClass: NSNumber.class])return nil;
    
    NSString *cameraName = [camera objectForKey:@"full_name"];
    if(![cameraName isKindOfClass:NSString.class]) return nil;
    
    
    NSString *imgSrc = [dictionary objectForKey:@"img_src"];
    if(![imgSrc isKindOfClass:NSString.class]) return nil;
    
    NSString *earthDate = [dictionary objectForKey:@"earth_date"];
    if(![earthDate isKindOfClass:NSString.class]) return nil;
    
    return [self initWithRoverID: roverID
                        fullName: cameraName
                          imgSrc: imgSrc
                       earthDate: earthDate];
    
 
}
@end
