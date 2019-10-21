#import "AudioServicePlugin.h"
#import "AudioBackgroundServicePlugin.h"
#import "AudioPlayerNotification.h"

AVPlayerItem *playerItem;

@interface AudioServicePlugin()

@property(nonatomic, strong) AudioPlayerNotification *musicPlayer;
@end

@implementation AudioServicePlugin

FlutterMethodChannel *_channelAudioService;

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
    FlutterMethodChannel* channel = [FlutterMethodChannel
                                     methodChannelWithName:@"ryanheise.com/audioService"
                                     binaryMessenger:[registrar messenger]];
    _channelAudioService = channel;
    AudioServicePlugin* instance = [[AudioServicePlugin alloc] init];
    [registrar addMethodCallDelegate:instance channel:channel];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleAudioChangeMedia:) name:MEDIA_ACTION_CHANGE_STATE object:nil];
    }
    return self;
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
    NSLog(@"AudioService method : %@, args: %@", call.method, call.arguments);
//    if (!self.musicPlayer) {
//        self.musicPlayer = [AudioPlayerNotification sharedInstance];
//    }
    if ([@"connect" isEqualToString:call.method]) {
        result(nil);
    } else if ([@"start" isEqualToString:call.method]) {
//        [AudioPlayerNotification initSession];
        result(nil);
    } else if ([@"play" isEqualToString:call.method]) {
        [[NSNotificationCenter defaultCenter] postNotificationName:MEDIA_ACTION_PLAY object:nil userInfo:nil];
        result(nil);
    } else if ([@"pause" isEqualToString:call.method]) {
        [[NSNotificationCenter defaultCenter] postNotificationName:MEDIA_ACTION_PAUSE object:nil userInfo:nil];
        result(nil);
    } else if ([@"stop" isEqualToString:call.method]) {
        [[NSNotificationCenter defaultCenter] postNotificationName:MEDIA_ACTION_STOP object:nil userInfo:nil];
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
    } else if ([@"ready" isEqualToString:call.method]) {
        result(nil);
    } else if ([@"changeMediaItem" isEqualToString:call.method]) {
        [[NSNotificationCenter defaultCenter] postNotificationName:MEDIA_ACTION_CHANGE_ITEM object:nil userInfo:call.arguments];
        result(nil);
    } else {
        result(FlutterMethodNotImplemented);
    }
}

- (void)handleAudioChangeMedia:(NSNotification*)note {
    [_channelAudioService invokeMethod:@"onPlaybackStateChanged" arguments:[note.userInfo objectForKey:@"data"]];
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


@end
