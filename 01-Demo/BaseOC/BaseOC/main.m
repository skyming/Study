//
//  main.m
//  BaseOC
//
//  Created by skyming on 2018/3/30.
//  Copyright © 2018年 skyming. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "CustomObj.h"

void vmTest() {
    NSMutableSet *objs = [NSMutableSet new];
    @autoreleasepool {
        for (int i = 0; i < 1000; ++i) {
            CustomObj *obj = [CustomObj new];
            [objs addObject:obj];
        }
        sleep(100000);
    }
}

int main(int argc, char * argv[]) {
//    vmTest();
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}


