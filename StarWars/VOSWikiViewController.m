//
//  VOSWikiViewController.m
//  StarWars
//
//  Created by Vicente Oliva de la Serna on 13/1/15.
//  Copyright (c) 2015 Vicente Oliva de la Serna. All rights reserved.
//

#import "VOSWikiViewController.h"

@implementation VOSWikiViewController

- (void)viewDidLoad {    // cargada en memoria pero no tiene propiedades de geometría
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


-(id) initWithModel:(VOSStarWarsCharacter *) model{
    if (self = [super initWithNibName:nil bundle:nil]){
        _model = model;
        self.title = @"Wikipedia";
    }
    return self;
}

-(void) viewWillAppear:(BOOL)animated{      // aqui ya existe la vista y tiene tamaño correcto
    [super viewWillAppear:animated];
    
    // Asignamos el delegado
    self.browser.delegate = self;
    
    // sincronización modelo con la vista
    [self.browser loadRequest:[NSURLRequest requestWithURL:self.model.wikiPage]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIWebViewDelegate
-(void) webViewDidFinishLoad:(UIWebView *)webView{
    [self.activityView stopAnimating];
}

// Si nos interesa limitar que la página web no pueda navegar a más enlaces, podemos limitar su funcionamiento modificando el comportamiento del delegado
-(BOOL) webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request
 navigationType:(UIWebViewNavigationType)navigationType{
    if ((navigationType == UIWebViewNavigationTypeLinkClicked) || (navigationType == UIWebViewNavigationTypeFormSubmitted) ){
        return NO;
    } else {
        return YES;
    }
}
@end
