//
//  VOSCharacterViewController.m
//  StarWars
//
//  Created by Vicente Oliva de la Serna on 12/1/15.
//  Copyright (c) 2015 Vicente Oliva de la Serna. All rights reserved.
//

#import "VOSCharacterViewController.h"
#import "CafPlayer.h"
#import "VOSWikiViewController.h"

@implementation VOSCharacterViewController

-(id) initWithModel: (VOSStarWarsCharacter *) model{
    if (self = [super initWithNibName: nil
                               bundle: nil ]){
        _model = model;
        self.title = model.alias;
        

        UIImage* anImage1 = [UIImage imageNamed:@"hand61.png"];
        UIImage* anImage2 = [UIImage imageNamed:@"mobilephone15.png"];

        [self setTabBarItem:[[UITabBarItem alloc] initWithTitle:self.model.alias
                                                          image: anImage2  // icono sin seleccionar
                                                  selectedImage:anImage1]];

    }
    return self;
}

-(void) viewWillAppear:(BOOL) animated{
    [super viewWillAppear:animated];

    // sincronizamos el modelo con la vista
    [self syncWithModel];
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
    self.player = [CafPlayer cafPlayer];
    [self.player playSoundData:self.model.soundData];

}

-(IBAction)displayWikipedia:(id)sender{
    // crear un wikiVC
    VOSWikiViewController * wikiVC = [[VOSWikiViewController alloc] initWithModel:self.model];
    
    // pushearlo
    [self.navigationController pushViewController:wikiVC animated:YES];
    
}

#pragma mark - <UISplitViewControllerDelegate>
-(void) splitViewController:(UISplitViewController *)svc willChangeToDisplayMode:(UISplitViewControllerDisplayMode)displayMode{
    
    if (displayMode == UISplitViewControllerDisplayModePrimaryHidden) {
        
        // Hay que poner el botón en mi barra de navegación
        self.navigationItem.rightBarButtonItem = svc.displayModeButtonItem;
        
    }else if (displayMode == UISplitViewControllerDisplayModeAllVisible){
        
        // Hay que quitar el botón de la barra de navegación
        self.navigationItem.rightBarButtonItem = nil;
    }
}

#pragma mark - VOSStarWarsUniverseViewControllerDelegate
-(void) starWarsUniverseViewController:(VOSStarWarsUniverseViewController *)uVC didSelectCharacter:(VOSStarWarsCharacter *)character{
    
    // me dicen que cambie el modelo
    self.model = character;
    [self syncWithModel];
}

#pragma mark - Utils
-(void) syncWithModel{
    self.photoView.image = self.model.photo;
    self.title = self.model.alias;
}






@end
