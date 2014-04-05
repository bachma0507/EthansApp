//
//  movieAppDelegate.m
//  EthansApp
//
//  Created by Barry on 3/30/14.
//  Copyright (c) 2014 Barry Julien. All rights reserved.
//

#import "movieAppDelegate.h"
#import <AudioToolbox/AudioToolbox.h>


@implementation movieAppDelegate
@synthesize window;

- (void)startupAnimationDone:(NSString *)animationID finished:(NSNumber *)finished context:(void *)context {
    [splashView removeFromSuperview];
    
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    NSURL *fileURL = [NSURL URLWithString:@"/System/Library/Audio/UISounds/New/Choo_Choo.caf"]; // see list below
    SystemSoundID soundID;
    AudioServicesCreateSystemSoundID((__bridge_retained CFURLRef)fileURL,&soundID);
    AudioServicesPlaySystemSound(soundID);
    
    [window makeKeyAndVisible];
    
    splashView = [[UIImageView alloc] initWithFrame:CGRectMake(0,0,window.frame.size.width,window.frame.size.height)];
    splashView.image = [UIImage imageNamed:@"launch640x960"];
    [window addSubview:splashView];
    [window bringSubviewToFront:splashView];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:5.0];
    [UIView setAnimationTransition:UIViewAnimationTransitionNone forView:window cache:YES];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(startupAnimationDone:finished:context:)];
    splashView.alpha = 0.0;
    [UIView commitAnimations];
    
    //set an anchor point on the image view so it opens from the left
    //splashView.layer.anchorPoint = CGPointMake(0, 0.5);
    
    //reset the image view frame
    //splashView.frame = CGRectMake(0,0,window.frame.size.width,window.frame.size.height);
    
    //animate the open
//    [UIView animateWithDuration:1.0
//                          delay:0.6
//                        //options:(UIViewAnimationCurveEaseOut)
//                    options:(UIViewAnimationOptionCurveEaseOut)
//                     animations:^{
//                         
//                         splashView.layer.transform = CATransform3DRotate(CATransform3DIdentity, -M_PI_2, 0, 1, 0);
//                     } completion:^(BOOL finished){
//                         
//                         //remove that imageview from the view
//                         [splashView removeFromSuperview];
//                     }];
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
