//
//  AudioBackgroundServicePlugin.m
//  audio_service
//
//  Created by Chuong Vu Duy on 7/30/19.
//

#import "AudioBackgroundServicePlugin.h"

@implementation AudioBackgroundServicePlugin

+ (void)registerWithRegistrar:(nonnull NSObject<FlutterPluginRegistrar> *)registrar {
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
    if ([@"getPlatformVersion" isEqualToString:call.method]) {
        result([@"ready " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
    } else if ([@"ready" isEqualToString:call.method]) {
        result(nil);
    } else if ([@"start" isEqualToString:call.method]) {
        result(nil);
    } else if ([@"play" isEqualToString:call.method]) {
        result(nil);
    } else if ([@"pause" isEqualToString:call.method]) {
        result(nil);
    } else if ([@"stop" isEqualToString:call.method]) {
        result(nil);
    } else if ([@"setState" isEqualToString:call.method]) {
        result(nil);
    } else if ([@"seekTo" isEqualToString:call.method]) {
        result(nil);
    } else if ([@"skipToNext" isEqualToString:call.method]) {
        result(nil);
    } else if ([@"skipToPrevious" isEqualToString:call.method]) {
        result(nil);
    } else if ([@"isRunning" isEqualToString:call.method]) {
        result(nil);
    } else if ([@"disconnect" isEqualToString:call.method]) {
        result(nil);
    } else if ([@"prepare" isEqualToString:call.method]) {
        result(nil);
    } else if ([@"setMediaItem" isEqualToString:call.method]) {
        result(nil);
    } else {
        result(FlutterMethodNotImplemented);
    }
}


@end
