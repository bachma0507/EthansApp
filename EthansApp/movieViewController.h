//
//  movieViewController.h
//  EthansApp
//
//  Created by Barry on 3/30/14.
//  Copyright (c) 2014 Barry Julien. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import "ReflectionView.h"

@interface movieViewController : UIViewController
{
    MPMoviePlayerController *moviePlayer;
}
@property (strong, nonatomic) MPMoviePlayerController *moviePlayer;
@property (nonatomic, retain) IBOutlet ReflectionView *reflectionView;
@property (nonatomic, retain) IBOutlet ReflectionView *reflectionView2;
@property (nonatomic, retain) IBOutlet ReflectionView *reflectionView3;
@property (nonatomic, retain) IBOutlet ReflectionView *reflectionView4;
@property (nonatomic, retain) IBOutlet ReflectionView *reflectionView5;
@property (nonatomic, retain) IBOutlet ReflectionView *reflectionView6;
-(IBAction) playMovie:(id)sender;
-(IBAction) playMovie2:(id)sender;
-(IBAction) playMovie3:(id)sender;
-(IBAction) playMovie4:(id)sender;
-(IBAction) playMovie5:(id)sender;
-(IBAction) playMovie6:(id)sender;

@end
