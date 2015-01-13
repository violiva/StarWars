//
//  VOSWikiViewController.h
//  StarWars
//
//  Created by Vicente Oliva de la Serna on 13/1/15.
//  Copyright (c) 2015 Vicente Oliva de la Serna. All rights reserved.
//

@import UIKit;
#import "VOSStarWarsCharacter.h"

@interface VOSWikiViewController : UIViewController <UIWebViewDelegate>

@property (strong, nonatomic) VOSStarWarsCharacter * model;
@property (weak, nonatomic) IBOutlet UIWebView * browser;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView * activityView;

-(id) initWithModel:(VOSStarWarsCharacter *) model;


@end
