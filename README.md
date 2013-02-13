# Localytics

Simple wrapper for Localytics

## Using the Localytics

* Download from http://www.localytics.com/docs/iphone-integration/

``` objective-c
#import "LocalyticsSession.h"
#import "Localytics.h"

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    startLocalytics(@"91466843fc3f11366e3f8fb-494eaede-7374-11e2-2f0c-008e703cf207");
    
    return YES;
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    [[LocalyticsSession sharedLocalyticsSession] close];
    [[LocalyticsSession sharedLocalyticsSession] upload];
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    [[LocalyticsSession sharedLocalyticsSession] resume];
    [[LocalyticsSession sharedLocalyticsSession] upload];
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    [[LocalyticsSession sharedLocalyticsSession] close];
}

```