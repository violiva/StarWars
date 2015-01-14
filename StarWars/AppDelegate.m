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
    

    
    // Creamos el combinador
    UITabBarController * tabVC = [[UITabBarController alloc] init];
    [tabVC setViewControllers:[self arrayOfControllers]];
    
    // Lo asignamos como Root
    self.window.rootViewController = tabVC;
    
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


#pragma mark - Utils
-(NSArray *) arrayOfModels{
    // crear los personajes
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

    NSURL * c3poURL = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/C-3PO"];
    NSURL * c3poSoundURL = [bundle URLForResource:@"c3po"
                                withExtension:@"caf"];
    NSData * c3poSound = [NSData dataWithContentsOfURL:c3poSoundURL];
    UIImage * c3poImage = [UIImage imageNamed:@"c3po.jpg"];
    
    // Creamos el modelo
    VOSStarWarsCharacter * c3po = [VOSStarWarsCharacter starWarsCharacterWithAlias:@"C-3PO"
                                                                          wikiPage:c3poURL
                                                                             image:c3poImage
                                                                         soundData:c3poSound ];

    NSURL * r2d2URL = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/R2-D2"];
    NSURL * r2d2SoundURL = [bundle URLForResource:@"r2-d2"
                                    withExtension:@"caf"];
    NSData * r2d2Sound = [NSData dataWithContentsOfURL:r2d2SoundURL];
    UIImage * r2d2Image = [UIImage imageNamed:@"R2-D2.jpg"];
    
    // Creamos el modelo
    VOSStarWarsCharacter * r2d2 = [VOSStarWarsCharacter starWarsCharacterWithAlias:@"R2-D2"
                                                                          wikiPage:r2d2URL
                                                                             image:r2d2Image
                                                                         soundData:r2d2Sound ];

    NSURL * chewieURL = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/Chewbacca"];
    NSURL * chewieSoundURL = [bundle URLForResource:@"chewbacca"
                                    withExtension:@"caf"];
    NSData * chewieSound = [NSData dataWithContentsOfURL:chewieSoundURL];
    UIImage * chewieImage = [UIImage imageNamed:@"Chewbacca.jpg"];
    
    // Creamos el modelo
    VOSStarWarsCharacter * chewbacca = [VOSStarWarsCharacter starWarsCharacterWithAlias:@"Chewbacca"
                                                                          wikiPage:chewieURL
                                                                             image:chewieImage
                                                                         soundData:chewieSound ];

    NSURL * yodaURL = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/Yoda"];
    NSURL * yodaSoundURL = [bundle URLForResource:@"yoda"
                                      withExtension:@"caf"];
    NSData * yodaSound = [NSData dataWithContentsOfURL:yodaSoundURL];
    UIImage * yodaImage = [UIImage imageNamed:@"yoda.jpg"];
    
    // Creamos el modelo
    VOSStarWarsCharacter * yoda = [VOSStarWarsCharacter starWarsCharacterWithName:@"Minch Yoda"
                                                                            alias:@"Master Yoda"
                                                                         wikiPage:yodaURL
                                                                            image:yodaImage
                                                                        soundData:yodaSound];

    NSURL * palpatineURL = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/Palpatine"];
    NSURL * palpatineSoundURL = [bundle URLForResource:@"palpatine"
                                    withExtension:@"caf"];
    NSData * palpatineSound = [NSData dataWithContentsOfURL:palpatineSoundURL];
    UIImage * palpatineImage = [UIImage imageNamed:@"palpatine.jpg"];
    
    // Creamos el modelo
    VOSStarWarsCharacter * palpatine = [VOSStarWarsCharacter starWarsCharacterWithName:@"Palpatine"
                                                                            alias:@"Darth Sidious"
                                                                         wikiPage:palpatineURL
                                                                            image:palpatineImage
                                                                        soundData:palpatineSound];

    NSURL * tarkinURL = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/Grand_Moff_Tarkin"];
    NSURL * tarkinSoundURL = [bundle URLForResource:@"tarkin"
                                         withExtension:@"caf"];
    NSData * tarkinSound = [NSData dataWithContentsOfURL:tarkinSoundURL];
    UIImage * tarkinImage = [UIImage imageNamed:@"tarkin.jpg"];
    
    // Creamos el modelo
    VOSStarWarsCharacter * tarkin = [VOSStarWarsCharacter starWarsCharacterWithName:@"Wilhuf Tarkin"
                                                                                 alias:@"Grand Moff Tarkin"
                                                                              wikiPage:tarkinURL
                                                                                 image:tarkinImage
                                                                             soundData:tarkinSound];
    return @[vader, chewbacca, yoda, tarkin, c3po, r2d2, palpatine];

}
-(NSArray *) arrayOfControllers{
    NSArray * models = [self arrayOfModels];
    NSMutableArray * controllers = [NSMutableArray arrayWithCapacity:[models count]];
    
    // nos recorremos el array de modelos y por cada uno
    // creamos un controlador y lo metemos dentro de un
    // navigation y a ese se lo añadimos a controllers
    for ( VOSStarWarsCharacter * character in models){
        VOSCharacterViewController * charVC = [[ VOSCharacterViewController alloc] initWithModel:character];
        UINavigationController * navVC = [[UINavigationController alloc] initWithRootViewController:charVC];
        [controllers addObject:navVC];
    }
    return controllers;
}

@end
