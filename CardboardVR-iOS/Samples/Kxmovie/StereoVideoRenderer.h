//
//  StereoVideoRenderer.h
//  CardboardVR-iOS
//
//  Created by 星辰 on 16/2/2.
//  Copyright © 2016年 Peter Tribe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KxMovieGLView.h"
#import "CardboardSDK.h"

@class KxMovieDecoder;

extern NSString * const KxMovieParameterMinBufferedDuration;    // Float
extern NSString * const KxMovieParameterMaxBufferedDuration;    // Float
extern NSString * const KxMovieParameterDisableDeinterlacing;   // BOOL

@interface StereoVideoRenderer : UIViewController <StereoRendererDelegate>
    + (id) movieViewControllerWithContentPath: (NSString *) path
                                   parameters: (NSDictionary *) parameters;

    @property (nonatomic) BOOL playing;

    - (void) play;
    - (void) pause;
    @property (nonatomic) KxMovieGLView *cubeRenderer;
@end
