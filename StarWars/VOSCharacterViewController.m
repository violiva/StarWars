//
//  VOSCharacterViewController.m
//  StarWars
//
//  Created by Vicente Oliva de la Serna on 12/1/15.
//  Copyright (c) 2015 Vicente Oliva de la Serna. All rights reserved.
//

@import AudioToolbox;
#import "VOSCharacterViewController.h"
#import "CafPlayer.h"

@interface VOSCharacterViewController ()

@end

@implementation VOSCharacterViewController

-(id) initWithModel: (VOSStarWarsCharacter *) model{
    if (self = [super initWithNibName: nil
                               bundle: nil ]){
        _model = model;
        self.title = model.alias;
    }
    return self;
}

-(void) viewWillAppear:(BOOL) animated{
    [super viewWillAppear:animated];

    // sincronizamos el modelo con la vista
    self.photoView.image = self.model.photo;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions
-(IBAction)playSound:(id) sender{
//    NSLog(@"I am your father");
//
    self.player = [CafPlayer cafPlayer];
    [self.player playSoundData:self.model.soundData];

}


@end
