//
//  VOSStarWarsUniverseViewController.h
//  StarWars
//
//  Created by Vicente Oliva de la Serna on 14/1/15.
//  Copyright (c) 2015 Vicente Oliva de la Serna. All rights reserved.
//

// creamos constantes para definir qué sección es la de los rebeldes y cual es la de los imperiales

#define REBEL_SECTION 1
#define IMPERIAL_SECTION 0
#define CHARACTER_DID_CHANGE_NOTIFICATION_NAME @"CHARACTER"
#define CHARACTER_KEY @"CHARACTERKEY"

@import UIKit;
// #import "VOSStarWarsUniverse.h"

@class VOSStarWarsUniverseViewController;
@class VOSStarWarsUniverse;
@class VOSStarWarsCharacter;

@protocol VOSStarWarsUniverseViewControllerDelegate <NSObject>

// <#methods#>
@optional
-(void) starWarsUniverseViewController:(VOSStarWarsUniverseViewController *) uVC didSelectCharacter:(VOSStarWarsCharacter *) character;

-(void) starWarsUniverseViewController:(VOSStarWarsUniverseViewController *) uVC willSelectCharacter:(VOSStarWarsCharacter *) character;

@end


@interface VOSStarWarsUniverseViewController : UITableViewController <VOSStarWarsUniverseViewControllerDelegate>
@property (weak, nonatomic) id<VOSStarWarsUniverseViewControllerDelegate> delegate;

-(id) initWithModel: (VOSStarWarsUniverse *) model
              style:(UITableViewStyle) style;

@end

