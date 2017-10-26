//
//  main.m
//  HelloWorld
//
//  Created by CSCI 5737 on 9/13/17.
//  Copyright © 2017 CSCI 5737. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    //@autorelease is an object where the memory allocated is automatically released after use
    //automatic release means decrementing the release count by 1 after use
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
