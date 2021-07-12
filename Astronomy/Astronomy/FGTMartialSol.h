//
//  FGTMartialSol.h
//  Astronomy
//
//  Created by FGT MAC on 7/12/21.
//

#import <Foundation/Foundation.h>


NS_SWIFT_NAME(MartialSol)
@interface FGTMartialSol : NSObject

@property (nonatomic,readonly, nonnull) NSNumber *roverID;
@property (nonatomic,readonly, nonnull, copy) NSString *fullName;

@property (nonatomic,readonly, nonnull, copy) NSString *imgSrc;
@property (nonatomic,readonly, nonnull, copy) NSString *earthDate;

- (nonnull instancetype)initWithRoverID:(nonnull NSNumber *)roverID
                        fullName:(nonnull NSString *)fullName
                         imgSrc:(nonnull NSString *)imgSrc
                      earthDate:(nonnull NSString *)earthDate;

-(nonnull instancetype)initWithDictionary:(nonnull NSDictionary *)dictionary;

@end
