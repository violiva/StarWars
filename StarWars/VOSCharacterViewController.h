//
//  VOSCharacterViewController.h
//  StarWars
//
//  Created by Vicente Oliva de la Serna on 12/1/15.
//  Copyright (c) 2015 Vicente Oliva de la Serna. All rights reserved.
//

@import UIKit;
#import "VOSStarWarsCharacter.h"

@interface VOSCharacterViewController : UIViewController

@property (strong, nonatomic) VOSStarWarsCharacter * model;
@property (weak, nonatomic) IBOutlet UIImageView * photoView;

-(id) initWithModel: (VOSStarWarsCharacter *) model;

-(IBAction)playSound:(id) sender;
@end
