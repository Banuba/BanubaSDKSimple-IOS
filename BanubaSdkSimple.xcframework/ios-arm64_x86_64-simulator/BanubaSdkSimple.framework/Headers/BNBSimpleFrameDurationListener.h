// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from effect_player.djinni

#import <Foundation/Foundation.h>


/** Callback interface to receive FPS timings. */
@protocol BNBSimpleFrameDurationListener

/** FPS information about recognition engine. */
- (void)onRecognizerFrameDurationChanged:(float)instant
                                averaged:(float)averaged;

/**
 * FPS information about camera images push.
 * @see EffectPlayer.pushFrame
 */
- (void)onCameraFrameDurationChanged:(float)instant
                            averaged:(float)averaged;

/** FPS of Effect Player drawing. */
- (void)onRenderFrameDurationChanged:(float)instant
                            averaged:(float)averaged;

@end
