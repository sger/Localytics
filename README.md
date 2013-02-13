# Localytics

Simple wrapper for Localytics

## Using the Localytics

* Download from http://www.localytics.com/docs/iphone-integration/

``` objective-c
#import "LocalyticsSession.h"
#import "Localytics.h"

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    startLocalytics(@"key");
    
    return YES;
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    closeLocalytics();
    uploadLocalytics();
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    resumeLocalytics();
    uploadLocalytics()
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    closeLocalytics();
}

```