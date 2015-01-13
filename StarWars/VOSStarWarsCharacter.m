//
//  VOSStarWarsCharacter.m
//  StarWars
//
//  Created by Vicente Oliva de la Serna on 12/1/15.
//  Copyright (c) 2015 Vicente Oliva de la Serna. All rights reserved.
//

#import "VOSStarWarsCharacter.h"

@implementation VOSStarWarsCharacter

#pragma mark - Class Methods
+(instancetype) starWarsCharacterWithName:(NSString *) name
                                    alias:(NSString *) alias
                                 wikiPage:(NSURL *) url
                                    image:(UIImage *) photo
                                soundData:(NSData *) soundData{
    return [[self alloc] initWithName: name
                                alias: alias
                             wikiPage: url
                                image: photo
                            soundData: soundData ];
}

+(instancetype) starWarsCharacterWithAlias:(NSString *) alias
                                  wikiPage:(NSURL *) url
                                     image:(UIImage *) photo
                                 soundData:(NSData *) soundData{
    return [[self alloc] initWithAlias: alias
                              wikiPage: url
                                 image: photo
                             soundData: soundData];
}

#pragma mark - Init
-(id) initWithName:(NSString *) name
             alias:(NSString *) alias
          wikiPage:(NSURL *) url
             image:(UIImage *) photo
         soundData:(NSData *) soundData{
    if ( self = [super init]){
        _name = name;
        _alias = alias;
        _wikiPage = url;
        _photo = photo;
        _soundData = soundData;
    }
    return self;
}

// Inicializador de conveniencia, sin Nombre para los personajes que sólo tienen alias.
-(id) initWithAlias:(NSString *) alias
           wikiPage:(NSURL *) url
              image:(UIImage *) photo
          soundData:(NSData *) soundData{
    return [self initWithName: nil
                        alias: alias
                     wikiPage: url
                        image: photo
                    soundData: soundData];
}
@end
