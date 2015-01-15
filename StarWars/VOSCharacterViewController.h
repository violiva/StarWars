//
//  VOSCharacterViewController.h
//  StarWars
//
//  Created by Vicente Oliva de la Serna on 12/1/15.
//  Copyright (c) 2015 Vicente Oliva de la Serna. All rights reserved.
//

@import UIKit;

#import "VOSStarWarsCharacter.h"
#import "CafPlayer.h"
#import "VOSStarWarsUniverseViewController.h"

@interface VOSCharacterViewController : UIViewController <UISplitViewControllerDelegate, VOSStarWarsUniverseViewControllerDelegate>

@property (strong, nonatomic) VOSStarWarsCharacter * model;
@property (weak, nonatomic) IBOutlet UIImageView * photoView;
@property (strong, nonatomic) CafPlayer * player;

-(id) initWithModel: (VOSStarWarsCharacter *) model;

-(IBAction)playSound:(id) sender;
-(IBAction)displayWikipedia:(id)sender;
@end
