//
//  NSString+NSString_Additions.m
//  PigLatin
//
//  Created by Auston Salvana on 7/3/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import "NSString+Additions.h"

@implementation NSString (Additions)

-(NSArray*)getLetters{
    NSMutableArray *characters = [[NSMutableArray alloc] initWithCapacity:self.length];
    for (int i=0; i < self.length; i++) {
        NSString *ichar  = [NSString stringWithFormat:@"%c", [self characterAtIndex:i]];
        [characters addObject:ichar];
    }
    return characters;
}

-(NSString*)stringByPigLatinization{
    NSMutableArray *words = [[self componentsSeparatedByString:@" "]mutableCopy];
    for (int i =0; i < words.count; i++) {
        NSString *word = words[i];
        NSArray *letters = [word getLetters];
        int count = 0;
        for (NSString *letter in letters) {
            if ([@"aeiou" rangeOfString:letter].location == NSNotFound) {
                count++;
            }
            else{
                break;
            }
        }
        NSString *firstConsonants = [word substringToIndex:count];
        word = [word substringFromIndex:count];
        word = [word stringByAppendingString:firstConsonants];
        word = [word stringByAppendingString:@"ay"];
        
        words[i] = word;
    }
    
    
    return [NSString stringFromArray:words];
}

+ (NSString *)stringFromArray:(NSArray *)words {
    NSString *temp = @"";
    
    for (NSString *word in words) {
        if ([words.firstObject isEqualToString:word]) {
            temp = [temp stringByAppendingString:word];
        } else {
            temp = [temp stringByAppendingFormat:@" %@", word];
        }
    }
    
    return temp;
}

@end
