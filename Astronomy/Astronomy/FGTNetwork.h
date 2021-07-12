//
//  FGTNetwork.h
//  Astronomy
//
//  Created by FGT MAC on 7/12/21.
//

#import <Foundation/Foundation.h>
@class FGTMartialSol;

NS_ASSUME_NONNULL_BEGIN

@interface FGTNetwork : NSObject

+(void)fetchDataForSol:(int)sol completion:(void(^)(FGTMartialSol*, NSError* error))completion;

@end

NS_ASSUME_NONNULL_END
