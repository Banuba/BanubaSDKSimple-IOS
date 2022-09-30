#import <Foundation/Foundation.h>

@interface BNBSimpleEffectManager : NSObject

/** set different render surfaces. Can be treated as void* */
- (void)setRenderSurface:(int64_t)surfacePtr;

@end
