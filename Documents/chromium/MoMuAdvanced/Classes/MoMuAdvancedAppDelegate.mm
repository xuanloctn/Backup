//
//  MoMuAdvancedAppDelegate.m
//  MoMuAdvanced
//
//  Created by Jorge Herrera on 6/10/10.
//  Copyright Stanford 2010. All rights reserved.
//

#import "MoMuAdvancedAppDelegate.h"
#import "MainViewController.h"

@implementation MoMuAdvancedAppDelegate


@synthesize window;
@synthesize mainViewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
	MainViewController *aController = [[MainViewController alloc] initWithNibName:@"MainView" bundle:nil];
	self.mainViewController = aController;
	[aController release];
	
    mainViewController.view.frame = [UIScreen mainScreen].applicationFrame;
//	[window addSubview:[mainViewController view]];
    window.rootViewController = aController;
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [mainViewController release];
    [window release];
    [super dealloc];
}

@end