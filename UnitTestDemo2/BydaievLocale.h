//
//  BydaievLocale.h
//  UnitTestDemo2
//
//  Created by Aleksandr Bydaiev on 3/16/17.
//  Copyright © 2017 Design and Test Lab. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BydaievLocale : NSObject

//shared exemplar of BydaievLocale

+(BydaievLocale*) shared;

//Return current locale. By default it call [NSLocale currentLocale]

@property(readonly) NSLocale *locale;

//Update current locale

-(void) updateLocale:(NSLocale*)locale;

@end
