#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface SBSimpleVideoWriter : NSObject

@property (assign, nonatomic, readonly) CMTime recorderVideoDuration;

- (instancetype)initWithCaptureSize:(CGSize)size;
- (void)pushAudioSampleBuffer:(CMSampleBufferRef)buffer;
- (void)pushVideoSampleBuffer:(CVPixelBufferRef)buffer;

- (void)prepareInputs:(NSURL *)fileUrl;
- (void)startCapturingScreenWithUrl:(NSURL *)fileUrl
                           progress:(void(^)(CMTime))progress
                         completion:(void(^)(BOOL, NSError *))completionHandler;

- (void)startCapturingScreenWithProgress:(void(^)(CMTime))progress
                              completion:(void(^)(BOOL, NSError *))completionHandler;
- (void)stopCapturing;
- (void)discardCapturing;
+ (BOOL)isEnoughDiskSpaceForRecording;

@end
