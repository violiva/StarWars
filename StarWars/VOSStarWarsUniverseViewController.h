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

@import UIKit;
#import "VOSStarWarsUniverse.h"

@interface VOSStarWarsUniverseViewController : UITableViewController

-(id) initWithModel: (VOSStarWarsUniverse *) model
              style:(UITableViewStyle) style;

@end
