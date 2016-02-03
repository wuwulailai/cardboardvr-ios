//
//  StereoVideoViewController.m
//  CardboardVR-iOS
//
//  Created by 星辰 on 16/2/2.
//  Copyright © 2016年 Peter Tribe. All rights reserved.
//

#import "StereoVideoViewController.h"
#import "StereoVideoRenderer.h"

@interface StereoVideoViewController()

@property (nonatomic) StereoVideoRenderer *stereoVideoRenderer;

@end


@implementation StereoVideoViewController

- (instancetype)init
{
    self = [super init];
    if (!self) {return nil; }
    
    NSString *path = @"http://20160125.float.sandai.net/finalfiles/n1452763777053.flv";
    if (path.length<1 || !path) {
        return nil;
    }
    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
    
    
    // increase buffering for .wmv, it solves problem with delaying audio frames
    if ([path.pathExtension isEqualToString:@"wmv"])
        parameters[KxMovieParameterMinBufferedDuration] = @(5.0);
    
    // disable deinterlacing for iPhone, because it's complex operation can cause stuttering
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
        parameters[KxMovieParameterDisableDeinterlacing] = @(YES);
    
    self.stereoVideoRenderer = [StereoVideoRenderer movieViewControllerWithContentPath:path
                                                                            parameters:parameters];
    self.stereoRendererDelegate = self.stereoVideoRenderer;
    return self;
}
@end