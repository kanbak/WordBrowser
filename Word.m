//
//  Word.m
//  WordBrowser
//
//  Created by Umut Kanbak on 7/24/13.
//  Copyright (c) 2013 Umut Kanbak. All rights reserved.
//

#import "Word.h"

@implementation Word
@synthesize name;
@synthesize definition;
@synthesize synonyms;

-(Word*) initWithName:(NSString*)aName andDefinition:(NSString*)aDefinition{
    Word *newWord = [Word new];
    newWord.name= aName;
    newWord.definition=aDefinition;
    return newWord;}

@end
