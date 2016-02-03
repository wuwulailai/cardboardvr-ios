//
//  AppDelegate.m
//  CardboardVR-iOS
//
//  Created by Peter Tribe on 2014-08-25.
//  Copyright (c) 2014 Peter Tribe. All rights reserved.
//

#import "AppDelegate.h"

#import "GLCubeViewController.h"
#import "CardboardViewController.h"
#import "StereoCubeViewController.h"
#import "TreasureViewController.h"

#import "KxMovieViewController.h"
#import "StereoVideoViewController.h"

@interface AppDelegate ()

@end


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

    // Non-stereo plain OpenGL example
//    GLCubeViewController *cardboardViewController = [GLCubeViewController new];

    // Stereo cube example (wip)
  // StereoCubeViewController *cardboardViewController = [StereoCubeViewController new];

    // Google's treasure example
    //TreasureViewController *cardboardViewController = [TreasureViewController new];
//    self.window.rootViewController = cardboardViewController;

    
    //播放
    NSString *path = @"http://20160125.float.sandai.net/finalfiles/n1452763777053.flv";
    if (path.length<1 || !path) {
        return NO;
    }
    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
    
    
    // increase buffering for .wmv, it solves problem with delaying audio frames
    if ([path.pathExtension isEqualToString:@"wmv"])
        parameters[KxMovieParameterMinBufferedDuration] = @(5.0);
    
    // disable deinterlacing for iPhone, because it's complex operation can cause stuttering
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
        parameters[KxMovieParameterDisableDeinterlacing] = @(YES);
    
    // disable buffering
    //parameters[KxMovieParameterMinBufferedDuration] = @(0.0f);
    //parameters[KxMovieParameterMaxBufferedDuration] = @(0.0f);
    
//   KxMovieViewController *vc = [KxMovieViewController movieViewControllerWithContentPath:path
//                                                                            parameters:parameters];
//    self.window.rootViewController = vc;
    StereoVideoViewController *cardboardVideoViewController = [StereoVideoViewController new];
    
    self.window.rootViewController = cardboardVideoViewController;
   
   
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
}

- (void)applicationWillTerminate:(UIApplication *)application
{
}

@end
