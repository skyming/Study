//
//  AppDelegate.m
//  BaseOC
//
//  Created by skyming on 2018/3/30.
//  Copyright © 2018年 skyming. All rights reserved.
//

#import "AppDelegate.h"
#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@interface Person : NSObject
{
    NSString *name;
}
-(void)setName:(NSString*)n;

@end

@implementation Person
-(void)setName:(NSString *)n
{
    name = n;
}
@end

@interface Teacher : Person

-(void)teach;

@end
@implementation Teacher
-(void)teach
{
    NSLog(@"我教数学");
}
@end

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    // 注意，底层实现，类对象调用先取 object_getClass （取类的metaClass），实例调用取 isa 指针。
    // 普通对象
    // [self nomalObjTest];
    
    // 类对象
    // [self nomalCalssTest];
    
    // 字符串测试
    [self stringTest];

    // 数组测试
    
    return YES;
}

- (void)arrayTest {
    id obj1 = [NSArray alloc];
    id obj2 = [NSMutableArray alloc];
    id obj3 = [obj1 init];
    id obj4 = [obj2 init];
    NSLog(@"%@",NSStringFromClass([obj1 class]));
    NSLog(@"%@",NSStringFromClass([obj2 class]));
    NSLog(@"%@",NSStringFromClass([obj3 class]));
    NSLog(@"%@",NSStringFromClass([obj4 class]));
    /*
     结果：
     2016-01-13 20:58:29.455 1fundation框架[2570:230724]  __NSPlaceholderArray
     2016-01-13 20:58:29.456 1fundation框架[2570:230724] __NSPlaceholderArray
     2016-01-13 20:58:29.457 1fundation框架[2570:230724] __NSArray0
     2016-01-13 20:58:29.457 1fundation框架[2570:230724] __NSArrayM
     */
}

- (void)stringTest {
    NSString *string0 = @"hello";
    NSString *string1 = @"helloworld";
    NSString *string2 = [[NSString alloc] initWithFormat:@":%@", @"helloworld"];
    NSString *string3 = [NSHomeDirectory() stringByAppendingPathComponent:string1];
    NSTextStorage *storage = [[NSTextStorage alloc] initWithString:string1];
    NSString *string4 = [storage string];
    
    NSLog(@"%@", [[string0 class] description]);
    NSLog(@"%@", [[string1 class] description]);
    NSLog(@"%@", [[string2 class] description]);
    NSLog(@"%@", [[string3 class] description]);
    NSLog(@"%@", [[string4 class] description]);
    
    if ([string0 isMemberOfClass:[NSString class]]) {
        NSLog(@"isMemberOfClass yes");
    }
    
    if ([string0 isKindOfClass:[NSString class]]) {
        NSLog(@"isKindOfClass yes");
    }
    /*
     2018-04-10 01:12:04.616592+0800 BaseOC[25581:4839165] __NSCFConstantString
     2018-04-10 01:12:04.616744+0800 BaseOC[25581:4839165] __NSCFConstantString
     2018-04-10 01:12:04.616840+0800 BaseOC[25581:4839165] __NSCFString
     2018-04-10 01:12:04.616945+0800 BaseOC[25581:4839165] NSPathStore2
     2018-04-10 01:12:04.617053+0800 BaseOC[25581:4839165] NSBigMutableString
     2018-04-10 01:12:04.617157+0800 BaseOC[25581:4839165] isKindOfClass yes
     */
}

// 普通对象测试
- (void)nomalObjTest {
    
    Person *person = [[Person alloc] init];
    Teacher *teacher = [[Teacher alloc] init];
    
    //YES
    if ([teacher isMemberOfClass:[Teacher class]]) {
        NSLog(@"teacher Teacher类的成员");
    }
    //NO
    if ([teacher isMemberOfClass:[Person class]]) {
        NSLog(@"teacher Person类的成员");
    }
    //NO
    if ([teacher isMemberOfClass:[NSObject class]]) {
        NSLog(@"teacher NSObject类的成员");
    }
    
    
    
    //YES
    if ([teacher isKindOfClass:[Teacher class]]) {
        NSLog(@"teacher 是 Teacher类或Teacher的子类");
    }
    //YES
    if ([teacher isKindOfClass:[Person class]]) {
        NSLog(@"teacher 是 Person类或Person的子类");
    }
    //YES
    if ([teacher isKindOfClass:[NSObject class]]) {
        NSLog(@"teacher 是 NSObject类或NSObject的子类");
    }

    
    
    //NO
    if ([person isKindOfClass:[Teacher class]]) {
        NSLog(@"person 是 Teacher类或Teacher的子类");
    }
    //YES
    if ([person isKindOfClass:[Person class]]) {
        NSLog(@"person 是 Person类或Person的子类");
    }
    //YES
    if ([person isKindOfClass:[NSObject class]]) {
        NSLog(@"person 是 NSObject类或NSObject的子类");
    }

}

// 普通类测试
- (void)nomalCalssTest {
    
    Class r0 = [object_getClass([Teacher class]) superclass];
    Class r1 = object_getClass([Person class]);
    NSLog(@"Teacher metaClass 父类 == Person metaClass %d",r0 == r1);
    
    Class x0 = object_getClass(object_getClass([Teacher class]));
    Class x1 = object_getClass(object_getClass([Person class]));
    NSLog(@"Teacher metaClass 父类 == Person metaClass 父类  %d",x0 == x1);
    
    //NO
    if ([[Teacher class] isMemberOfClass:[Teacher class]]) {
        NSLog(@"Teacher类 Teacher类的成员");
    }
    //NO
    if ([[Teacher class]  isMemberOfClass:[Person class]]) {
        NSLog(@"Teacher类 Person类的成员");
    }
    //NO
    if ([[Teacher class]  isMemberOfClass:[NSObject class]]) {
        NSLog(@"Teacher类 NSObject类的成员");
    }
    //NO
    if ([[NSObject class]  isMemberOfClass:[NSObject class]]) {
        NSLog(@"NSObject类 NSObject类的成员");
    }

    
    //NO
    if ([[Teacher class]  isKindOfClass:[Teacher class]]) {
        NSLog(@"Teacher类 是 Teacher类或Teacher的子类");
    }
    //NO
    if ([[Teacher class]  isKindOfClass:[Person class]]) {
        NSLog(@"Teacher类 是 Person类或Person的子类");
    }
    //YES
    if ([[Teacher class]  isKindOfClass:[NSObject class]]) {
        NSLog(@"Teacher类 是 NSObject类或NSObject的子类");
    }
    //YES
    if ([[NSObject class]  isKindOfClass:[NSObject class]]) {
        NSLog(@"NSObject类 是 NSObject类或NSObject的子类");
    }
}

//逆向反编译得到的源码
+ (BOOL) isKindOfClassITX:(Class)class
{
    Class r0 = object_getClass(self);
    while (1) {
        if (r0 == 0) {
            return 0;
        }else{
            NSLog(@"class->%@:%p",NSStringFromClass(class), class);
            NSLog(@"r0->%@:%p",NSStringFromClass(r0), r0);
            if (r0 != class) {
                r0 = [r0 superclass];
            }else{
                return 1;
            }
        }
    }
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
