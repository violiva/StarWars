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
    // Alta en notificaciones
    NSNotificationCenter * nc = [NSNotificationCenter defaultCenter];
    [nc addObserver:self
           selector:@selector(notifyThatCharacterDidChange:)
               name:CHARACTER_DID_CHANGE_NOTIFICATION_NAME
             object:nil];
    
    // Asignamos el delegado
    self.browser.delegate = self;
    
    // sincronización modelo con la vista
    [self syncViewWithModel];
    
}
-(void) viewWillDisappear:(BOOL)animated  {
    [super viewWillDisappear:animated];
    
    // baja de las notificaciones
    NSNotificationCenter * nc = [NSNotificationCenter defaultCenter];
    [nc removeObserver:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIWebViewDelegate
-(void) webViewDidFinishLoad:(UIWebView *)webView{
    [self.activityView stopAnimating];
    self.activityView.hidden = YES;
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

#pragma mark - Notificacions
-(void)notifyThatCharacterDidChange:(NSNotification *) n{
    
    // Extrago el personaje
    VOSStarWarsCharacter * newModel = [n.userInfo objectForKey:CHARACTER_KEY];
    
    // cambiar mi modelo
    self.model = newModel;
    
    // sincronizar vistas con el modelo nuevo
    [self syncViewWithModel];
}

#pragma mark - Utils
-(void) syncViewWithModel{
    // Mostrar el activity
    self.activityView.hidden = NO;
    
    // empezar la animación
    [self.activityView startAnimating];
    
    // Cargar la URL
    NSURLRequest * r = [NSURLRequest requestWithURL:self.model.wikiPage];
    [self.browser loadRequest:r];
}

@end
