//
//  UnitTestDemo2Tests.m
//  UnitTestDemo2Tests
//
//  Created by Aleksandr Bydaiev on 3/16/17.
//  Copyright © 2017 Design and Test Lab. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BydaievLocale.h"

@interface UnitTestDemo2Tests : XCTestCase

//@testable import emptyProjectUnitT

@end

@implementation UnitTestDemo2Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void) testDecimalSeparator {
    // Use XCTAssert and related functions to verify your tests produce the correct results.

    
    [[BydaievLocale shared] updateLocale:[NSLocale localeWithLocaleIdentifier:@"de_DE"]];
    
    
    NSNumberFormatter *formatter = [NSNumberFormatter new];
    formatter.numberStyle = NSNumberFormatterDecimalStyle;
    formatter.locale = BydaievLocale.shared.locale;
    
    NSNumber *testNumberDE = @2.7;
    
    
    XCTAssertTrue([[formatter stringFromNumber:testNumberDE] isEqualToString:@"2,7"],@"Ожидается разделитель - запятая, тк локаль Германии");
    
    
    [[BydaievLocale shared] updateLocale:[NSLocale localeWithLocaleIdentifier:@"en_US"]];
    
    NSNumber *testNumberUS = @3.9;

    formatter.locale = BydaievLocale.shared.locale;
    
    XCTAssertTrue([[formatter stringFromNumber:testNumberUS] isEqualToString:@"3.9"],@"Ожидается разделитель - точка, тк локаль Америки");


    
}

@end
