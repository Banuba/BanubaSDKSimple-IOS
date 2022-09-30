#import <Foundation/Foundation.h>

@interface BNBSimplePixelBuffer : NSObject
- (nonnull instancetype)initWithData:(nonnull NSData *)data
                               width:(int32_t)width
                              heigth:(int32_t)heigth;

@property (nonatomic, readonly, nonnull) NSData * data;

@property (nonatomic, readonly) int32_t width;

@property (nonatomic, readonly) int32_t heigth;

@end
