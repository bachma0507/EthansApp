//
//  movieViewController.m
//  EthansApp
//
//  Created by Barry on 3/30/14.
//  Copyright (c) 2014 Barry Julien. All rights reserved.
//

#import "movieViewController.h"
#import <AudioToolbox/AudioToolbox.h>

@interface movieViewController ()

@end

@implementation movieViewController
@synthesize moviePlayer;
@synthesize reflectionView, reflectionView4, reflectionView2, reflectionView3, reflectionView5, reflectionView6, reflectionView7, reflectionView8, reflectionView9;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    reflectionView.dynamic = NO;
    reflectionView.reflectionGap = 4;
    reflectionView.reflectionAlpha = 0.5;
    
    reflectionView2.dynamic = NO;
    reflectionView2.reflectionGap = 4;
    reflectionView2.reflectionAlpha = 0.5;
    
    reflectionView3.dynamic = NO;
    reflectionView3.reflectionGap = 4;
    reflectionView3.reflectionAlpha = 0.5;
    
    reflectionView4.dynamic = NO;
    reflectionView4.reflectionGap = 4;
    reflectionView4.reflectionAlpha = 0.5;
    
    reflectionView5.dynamic = NO;
    reflectionView5.reflectionGap = 4;
    reflectionView5.reflectionAlpha = 0.5;
    
    reflectionView6.dynamic = NO;
    reflectionView6.reflectionGap = 4;
    reflectionView6.reflectionAlpha = 0.5;
    
    reflectionView7.dynamic = NO;
    reflectionView7.reflectionGap = 4;
    reflectionView7.reflectionAlpha = 0.5;
    
    reflectionView8.dynamic = NO;
    reflectionView8.reflectionGap = 4;
    reflectionView8.reflectionAlpha = 0.5;
    
    reflectionView9.dynamic = NO;
    reflectionView9.reflectionGap = 4;
    reflectionView9.reflectionAlpha = 0.5;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) playMovie:(id)sender
{
    
    NSURL *fileURL = [NSURL URLWithString:@"/System/Library/Audio/UISounds/Tink.caf"]; // see list below
    SystemSoundID soundID;
    AudioServicesCreateSystemSoundID((__bridge_retained CFURLRef)fileURL,&soundID);
    AudioServicesPlaySystemSound(soundID);
    
    NSString *videoFile = [[NSBundle mainBundle] pathForResource:@"Adding_For_Toddlers" ofType:@"mp4"];
    
        //NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
                                             //pathForResource:@"Adding_For_Toddlers" ofType:@"MP4"]];
    
    if (videoFile) {
        NSURL *url = [NSURL fileURLWithPath:videoFile];
        NSError *error;
    
        moviePlayer =  [[MPMoviePlayerController alloc]
                        initWithContentURL:url];
        
        if (!error) {
            
            [[NSNotificationCenter defaultCenter] addObserver:self
                                                     selector:@selector(moviePlayBackDidFinish:)
                                                         name:MPMoviePlayerPlaybackDidFinishNotification
                                                       object:moviePlayer];
            
            moviePlayer.controlStyle = MPMovieControlStyleDefault;
            //moviePlayer.controlStyle = MPMovieControlStyleEmbedded;
            moviePlayer.shouldAutoplay = YES;
            [self.view addSubview:moviePlayer.view];
            [moviePlayer setFullscreen:YES animated:YES];
            
            [moviePlayer play];
        }
    }
        else {
            NSError *error;
            NSLog(@"Error occurred: %@", [error localizedDescription]);
        }
    
    
    //[moviePlayer play];
    
}

-(IBAction) playMovie2:(id)sender
{
    
    NSURL *fileURL = [NSURL URLWithString:@"/System/Library/Audio/UISounds/Tink.caf"]; // see list below
    SystemSoundID soundID;
    AudioServicesCreateSystemSoundID((__bridge_retained CFURLRef)fileURL,&soundID);
    AudioServicesPlaySystemSound(soundID);
    
    NSString *videoFile = [[NSBundle mainBundle] pathForResource:@"Toddlers_ Learn_Different_Objects" ofType:@"mp4"];
    
    //NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
    //pathForResource:@"Adding_For_Toddlers" ofType:@"MP4"]];
    
    if (videoFile) {
        NSURL *url = [NSURL fileURLWithPath:videoFile];
        NSError *error;
        
        moviePlayer =  [[MPMoviePlayerController alloc]
                        initWithContentURL:url];
        
        if (!error) {
            
            [[NSNotificationCenter defaultCenter] addObserver:self
                                                     selector:@selector(moviePlayBackDidFinish:)
                                                         name:MPMoviePlayerPlaybackDidFinishNotification
                                                       object:moviePlayer];
            
            moviePlayer.controlStyle = MPMovieControlStyleDefault;
            moviePlayer.shouldAutoplay = YES;
            [self.view addSubview:moviePlayer.view];
            [moviePlayer setFullscreen:YES animated:YES];
            
            [moviePlayer play];
        }
    }
    else {
        NSError *error;
        NSLog(@"Error occurred: %@", [error localizedDescription]);
    }
    
    
    //[moviePlayer play];
    
}

-(IBAction) playMovie3:(id)sender
{
    NSURL *fileURL = [NSURL URLWithString:@"/System/Library/Audio/UISounds/Tink.caf"]; // see list below
    SystemSoundID soundID;
    AudioServicesCreateSystemSoundID((__bridge_retained CFURLRef)fileURL,&soundID);
    AudioServicesPlaySystemSound(soundID);
    
    NSString *videoFile = [[NSBundle mainBundle] pathForResource:@"Learning_Animals" ofType:@"mp4"];
    
    //NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
    //pathForResource:@"Adding_For_Toddlers" ofType:@"MP4"]];
    
    if (videoFile) {
        NSURL *url = [NSURL fileURLWithPath:videoFile];
        NSError *error;
        
        moviePlayer =  [[MPMoviePlayerController alloc]
                        initWithContentURL:url];
        
        if (!error) {
            
            [[NSNotificationCenter defaultCenter] addObserver:self
                                                     selector:@selector(moviePlayBackDidFinish:)
                                                         name:MPMoviePlayerPlaybackDidFinishNotification
                                                       object:moviePlayer];
            
            moviePlayer.controlStyle = MPMovieControlStyleDefault;
            moviePlayer.shouldAutoplay = YES;
            [self.view addSubview:moviePlayer.view];
            [moviePlayer setFullscreen:YES animated:YES];
            
            [moviePlayer play];
        }
    }
    else {
        NSError *error;
        NSLog(@"Error occurred: %@", [error localizedDescription]);
    }
    
    
    //[moviePlayer play];
    
}

-(IBAction) playMovie4:(id)sender
{
    NSURL *fileURL = [NSURL URLWithString:@"/System/Library/Audio/UISounds/Tink.caf"]; // see list below
    SystemSoundID soundID;
    AudioServicesCreateSystemSoundID((__bridge_retained CFURLRef)fileURL,&soundID);
    AudioServicesPlaySystemSound(soundID);
    
    NSString *videoFile = [[NSBundle mainBundle] pathForResource:@"Count_to_20" ofType:@"mp4"];
    
    //NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
    //pathForResource:@"Adding_For_Toddlers" ofType:@"MP4"]];
    
    if (videoFile) {
        NSURL *url = [NSURL fileURLWithPath:videoFile];
        NSError *error;
        
        moviePlayer =  [[MPMoviePlayerController alloc]
                        initWithContentURL:url];
        
        if (!error) {
            
            [[NSNotificationCenter defaultCenter] addObserver:self
                                                     selector:@selector(moviePlayBackDidFinish:)
                                                         name:MPMoviePlayerPlaybackDidFinishNotification
                                                       object:moviePlayer];
            
            moviePlayer.controlStyle = MPMovieControlStyleDefault;
            moviePlayer.shouldAutoplay = YES;
            [self.view addSubview:moviePlayer.view];
            [moviePlayer setFullscreen:YES animated:YES];
            
            [moviePlayer play];
        }
    }
    else {
        NSError *error;
        NSLog(@"Error occurred: %@", [error localizedDescription]);
    }
    
    
    //[moviePlayer play];
    
}

-(IBAction) playMovie5:(id)sender
{
    NSURL *fileURL = [NSURL URLWithString:@"/System/Library/Audio/UISounds/Tink.caf"]; // see list below
    SystemSoundID soundID;
    AudioServicesCreateSystemSoundID((__bridge_retained CFURLRef)fileURL,&soundID);
    AudioServicesPlaySystemSound(soundID);
    
    NSString *videoFile = [[NSBundle mainBundle] pathForResource:@"Learning_Colors_Peggy" ofType:@"mp4"];
    
    //NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
    //pathForResource:@"Adding_For_Toddlers" ofType:@"MP4"]];
    
    if (videoFile) {
        NSURL *url = [NSURL fileURLWithPath:videoFile];
        NSError *error;
        
        moviePlayer =  [[MPMoviePlayerController alloc]
                        initWithContentURL:url];
        
        if (!error) {
            
            [[NSNotificationCenter defaultCenter] addObserver:self
                                                     selector:@selector(moviePlayBackDidFinish:)
                                                         name:MPMoviePlayerPlaybackDidFinishNotification
                                                       object:moviePlayer];
            
            moviePlayer.controlStyle = MPMovieControlStyleDefault;
            moviePlayer.shouldAutoplay = YES;
            [self.view addSubview:moviePlayer.view];
            [moviePlayer setFullscreen:YES animated:YES];
            
            [moviePlayer play];
        }
    }
    else {
        NSError *error;
        NSLog(@"Error occurred: %@", [error localizedDescription]);
    }
    
    
    //[moviePlayer play];
    
}

-(IBAction) playMovie6:(id)sender
{
    NSURL *fileURL = [NSURL URLWithString:@"/System/Library/Audio/UISounds/Tink.caf"]; // see list below
    SystemSoundID soundID;
    AudioServicesCreateSystemSoundID((__bridge_retained CFURLRef)fileURL,&soundID);
    AudioServicesPlaySystemSound(soundID);
    
    NSString *videoFile = [[NSBundle mainBundle] pathForResource:@"Learning_Colors_flying_spaceships" ofType:@"mp4"];
    
    //NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
    //pathForResource:@"Adding_For_Toddlers" ofType:@"MP4"]];
    
    if (videoFile) {
        NSURL *url = [NSURL fileURLWithPath:videoFile];
        NSError *error;
        
        moviePlayer =  [[MPMoviePlayerController alloc]
                        initWithContentURL:url];
        
        if (!error) {
            
            [[NSNotificationCenter defaultCenter] addObserver:self
                                                     selector:@selector(moviePlayBackDidFinish:)
                                                         name:MPMoviePlayerPlaybackDidFinishNotification
                                                       object:moviePlayer];
            
            moviePlayer.controlStyle = MPMovieControlStyleDefault;
            moviePlayer.shouldAutoplay = YES;
            [self.view addSubview:moviePlayer.view];
            [moviePlayer setFullscreen:YES animated:YES];
            
            [moviePlayer play];
        }
    }
    else {
        NSError *error;
        NSLog(@"Error occurred: %@", [error localizedDescription]);
    }
    
    
    //[moviePlayer play];
    
}

-(IBAction) playMovie7:(id)sender
{
    NSURL *fileURL = [NSURL URLWithString:@"/System/Library/Audio/UISounds/Tink.caf"]; // see list below
    SystemSoundID soundID;
    AudioServicesCreateSystemSoundID((__bridge_retained CFURLRef)fileURL,&soundID);
    AudioServicesPlaySystemSound(soundID);
    
    NSString *videoFile = [[NSBundle mainBundle] pathForResource:@"Learning_and_Adding_Fruit" ofType:@"mp4"];
    
    //NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
    //pathForResource:@"Adding_For_Toddlers" ofType:@"MP4"]];
    
    if (videoFile) {
        NSURL *url = [NSURL fileURLWithPath:videoFile];
        NSError *error;
        
        moviePlayer =  [[MPMoviePlayerController alloc]
                        initWithContentURL:url];
        
        if (!error) {
            
            [[NSNotificationCenter defaultCenter] addObserver:self
                                                     selector:@selector(moviePlayBackDidFinish:)
                                                         name:MPMoviePlayerPlaybackDidFinishNotification
                                                       object:moviePlayer];
            
            moviePlayer.controlStyle = MPMovieControlStyleDefault;
            moviePlayer.shouldAutoplay = YES;
            [self.view addSubview:moviePlayer.view];
            [moviePlayer setFullscreen:YES animated:YES];
            
            [moviePlayer play];
        }
    }
    else {
        NSError *error;
        NSLog(@"Error occurred: %@", [error localizedDescription]);
    }
    
    
    //[moviePlayer play];
    
}

-(IBAction) playMovie8:(id)sender
{
    NSURL *fileURL = [NSURL URLWithString:@"/System/Library/Audio/UISounds/Tink.caf"]; // see list below
    SystemSoundID soundID;
    AudioServicesCreateSystemSoundID((__bridge_retained CFURLRef)fileURL,&soundID);
    AudioServicesPlaySystemSound(soundID);
    
    NSString *videoFile = [[NSBundle mainBundle] pathForResource:@"The_Letter_A" ofType:@"mp4"];
    
    //NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
    //pathForResource:@"Adding_For_Toddlers" ofType:@"MP4"]];
    
    if (videoFile) {
        NSURL *url = [NSURL fileURLWithPath:videoFile];
        NSError *error;
        
        moviePlayer =  [[MPMoviePlayerController alloc]
                        initWithContentURL:url];
        
        if (!error) {
            
            [[NSNotificationCenter defaultCenter] addObserver:self
                                                     selector:@selector(moviePlayBackDidFinish:)
                                                         name:MPMoviePlayerPlaybackDidFinishNotification
                                                       object:moviePlayer];
            
            moviePlayer.controlStyle = MPMovieControlStyleDefault;
            moviePlayer.shouldAutoplay = YES;
            [self.view addSubview:moviePlayer.view];
            [moviePlayer setFullscreen:YES animated:YES];
            
            [moviePlayer play];
        }
    }
    else {
        NSError *error;
        NSLog(@"Error occurred: %@", [error localizedDescription]);
    }
    
    
    //[moviePlayer play];
    
}

-(IBAction) playMovie9:(id)sender
{
    NSURL *fileURL = [NSURL URLWithString:@"/System/Library/Audio/UISounds/Tink.caf"]; // see list below
    SystemSoundID soundID;
    AudioServicesCreateSystemSoundID((__bridge_retained CFURLRef)fileURL,&soundID);
    AudioServicesPlaySystemSound(soundID);
    
    NSString *videoFile = [[NSBundle mainBundle] pathForResource:@"The_Letter_B" ofType:@"mp4"];
    
    //NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
    //pathForResource:@"Adding_For_Toddlers" ofType:@"MP4"]];
    
    if (videoFile) {
        NSURL *url = [NSURL fileURLWithPath:videoFile];
        NSError *error;
        
        moviePlayer =  [[MPMoviePlayerController alloc]
                        initWithContentURL:url];
        
        if (!error) {
            
            [[NSNotificationCenter defaultCenter] addObserver:self
                                                     selector:@selector(moviePlayBackDidFinish:)
                                                         name:MPMoviePlayerPlaybackDidFinishNotification
                                                       object:moviePlayer];
            
            moviePlayer.controlStyle = MPMovieControlStyleDefault;
            moviePlayer.shouldAutoplay = YES;
            [self.view addSubview:moviePlayer.view];
            [moviePlayer setFullscreen:YES animated:YES];
            
            [moviePlayer play];
        }
    }
    else {
        NSError *error;
        NSLog(@"Error occurred: %@", [error localizedDescription]);
    }
    
    
    //[moviePlayer play];
    
}

- (void) moviePlayBackDidFinish:(NSNotification*)notification {
    MPMoviePlayerController *player = [notification object];
    [[NSNotificationCenter defaultCenter]
     removeObserver:self
     name:MPMoviePlayerPlaybackDidFinishNotification
     object:player];
    
    if ([player
         respondsToSelector:@selector(setFullscreen:animated:)])
    {
        [player.view removeFromSuperview];
    }
}


@end
