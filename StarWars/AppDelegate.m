//
//  AppDelegate.m
//  StarWars
//
//  Created by Vicente Oliva de la Serna on 12/1/15.
//  Copyright (c) 2015 Vicente Oliva de la Serna. All rights reserved.
//

#import "AppDelegate.h"
#import "VOSStarWarsCharacter.h"
#import "VOSCharacterViewController.h"
#import "VOSWikiViewController.h"

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // creamos una window que ocupe toda la pantalla. bounds es un CGRect de la pantalla principal ( CG es Core Grphics )
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible]; // hacer que esté visible y que tenga el foco, es decir que esté activa.
    
    NSURL * vaderURL = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/Darth_Vader"];
    NSBundle *  bundle = [NSBundle mainBundle];
    NSURL * soundURL = [bundle URLForResource:@"vader"
                                withExtension:@"caf"];
    NSData * vaderSound = [NSData dataWithContentsOfURL:soundURL];
    UIImage * vaderImage = [UIImage imageNamed:@"darthVader.jpg"];
    
    // Creamos el modelo
    VOSStarWarsCharacter * vader = [VOSStarWarsCharacter starWarsCharacterWithName:@"Anakin Skywalker"
                                                                             alias:@"Darth Vader"
                                                                          wikiPage:vaderURL
                                                                             image:vaderImage
                                                                         soundData:vaderSound];
    // creamos los controladores
    VOSCharacterViewController * charVC = [[VOSCharacterViewController alloc] initWithModel:vader];
    
    // Creamos el combinador
    UINavigationController * navVC = [[ UINavigationController alloc] init];
    [navVC pushViewController:charVC animated:NO];
    
    // Lo asignamos como Root
    self.window.rootViewController = navVC;
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
