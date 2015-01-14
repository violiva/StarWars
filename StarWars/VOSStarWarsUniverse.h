//
//  VOSStarWarsUniverse.h
//  StarWars
//
//  Created by Vicente Oliva de la Serna on 14/1/15.
//  Copyright (c) 2015 Vicente Oliva de la Serna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VOSStarWarsCharacter.h"

@interface VOSStarWarsUniverse : NSObject

@property (readonly, nonatomic) NSUInteger imperialCount;
@property (readonly, nonatomic) NSUInteger rebelCount;

-(VOSStarWarsCharacter *) rebelCharacterAtIndex:(NSUInteger) index;
-(VOSStarWarsCharacter *) imperialCharacterAtIndex:(NSUInteger) index;

@end
