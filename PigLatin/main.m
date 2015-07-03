//
//  main.m
//  PigLatin
//
//  Created by Auston Salvana on 7/3/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+Additions.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSString *str = @"aeious";
        [str stringByPigLatinization];
    }
    return 0;
}
