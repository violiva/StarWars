//
//  VOSStarWarsCharacter.h
//  StarWars
//
//  Created by Vicente Oliva de la Serna on 12/1/15.
//  Copyright (c) 2015 Vicente Oliva de la Serna. All rights reserved.
//

@import Foundation;
@import UIKit;

@interface VOSStarWarsCharacter : NSObject

@property (strong, nonatomic) NSString * name;
@property (strong, nonatomic) NSString * alias;
@property (strong, nonatomic) NSURL * wikiPage;
@property (strong, nonatomic) UIImage * photo;
@property (strong, nonatomic) NSData * soundData;

// Class metods
+(instancetype) starWarsCharacterWithName:(NSString *) name
                                    alias:(NSString *) alias
                                 wikiPage:(NSURL *) url
                                    image:(UIImage *) photo
                                soundData:(NSData *) soundData;

+(instancetype) starWarsCharacterWithAlias:(NSString *) alias
                                  wikiPage:(NSURL *) url
                                     image:(UIImage *) photo
                                 soundData:(NSData *) soundData;

// designated
-(id) initWithName:(NSString *) name
             alias:(NSString *) alias
          wikiPage:(NSURL *) url
             image:(UIImage *) photo
         soundData:(NSData *) soundData;

-(id) initWithAlias:(NSString *) alias
          wikiPage:(NSURL *) url
             image:(UIImage *) photo
         soundData:(NSData *) soundData;


@end
