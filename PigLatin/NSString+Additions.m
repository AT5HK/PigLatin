//
//  NSString+NSString_Additions.m
//  PigLatin
//
//  Created by Auston Salvana on 7/3/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import "NSString+Additions.h"

@implementation NSString (Additions)


-(NSString*)stringByPigLatinization{
    NSCharacterSet *set = [NSCharacterSet characterSetWithCharactersInString:@"a, e, i, o, u, y"];
    NSMutableArray *holder = [NSMutableArray array];
    
    if ([self.lowercaseString rangeOfCharacterFromSet:set].length) {
        NSMutableArray *arrayStr = [[self componentsSeparatedByString:@" "]mutableCopy];
        for (NSString *character in arrayStr) {
            if ([character rangeOfCharacterFromSet:set].length) {
                [arrayStr removeObject:character];
            }
            break;
        }
    }
    return self;
}

@end
