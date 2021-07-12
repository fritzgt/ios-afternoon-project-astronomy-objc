//
//  FGTMartialSol.m
//  Astronomy
//
//  Created by FGT MAC on 7/12/21.
//

#import "FGTMartialSol.h"

@implementation FGTMartialSol


- (instancetype)initWithRoverID:(nonnull NSNumber *)roverID
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
    
    
    return [self initWithRoverID:@34
                        fullName:@""
                          imgSrc:@""
                       earthDate:@""];
}
@end
