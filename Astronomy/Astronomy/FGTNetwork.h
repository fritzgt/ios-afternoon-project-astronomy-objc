//
//  FGTNetwork.h
//  Astronomy
//
//  Created by FGT MAC on 7/12/21.
//

#import <Foundation/Foundation.h>
@class FGTMartialSol;

NS_ASSUME_NONNULL_BEGIN

NS_SWIFT_NAME(Network)
@interface FGTNetwork : NSObject



- (void)fetchDataFor:(NSInteger)sol completion:(void(^)(NSArray<FGTMartialSol *>*, NSError* error))completion;


@end

NS_ASSUME_NONNULL_END
