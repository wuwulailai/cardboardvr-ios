//
//  StereoMovieViewController.h
//  CardboardVR-iOS
//
//  Created by 星辰 on 16/2/2.
//  Copyright © 2016年 Peter Tribe. All rights reserved.
//

#import <UIKit/UIKit.h>

extern NSString * const KxMovieParameterMinBufferedDuration;    // Float
extern NSString * const KxMovieParameterMaxBufferedDuration;    // Float
extern NSString * const KxMovieParameterDisableDeinterlacing;   // BOOL

@interface StereoMovieViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@end
