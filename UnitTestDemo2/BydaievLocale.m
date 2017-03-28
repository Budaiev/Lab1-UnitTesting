//
//  BydaievLocale.m
//  UnitTestDemo2
//
//  Created by Aleksandr Bydaiev on 3/16/17.
//  Copyright © 2017 Design and Test Lab. All rights reserved.
//

#import "BydaievLocale.h"

@implementation BydaievLocale

static BydaievLocale *service = nil;

+ (BydaievLocale*) shared {
    @synchronized (self) {
        if (!service) {
            service = [BydaievLocale new];
        }
        return service;
    }
}

- (instancetype) init {
    self = [super init];
    if (self) {
        _locale = [NSLocale currentLocale];
    }
    return self;
}

- (void) updateLocale:(NSLocale *)locale {
    _locale = locale;
}




@end
