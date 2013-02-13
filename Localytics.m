//
//  Localytics.m
//  Trigon
//
//  Created by Spiros Gerokostas on 2/13/13.
//  Copyright (c) 2013 Spiros Gerokostas. All rights reserved.
//

#import "Localytics.h"

void startLocalytics(NSString *key)
{
#if LOCALYTICS_ENABLED
    [[LocalyticsSession sharedLocalyticsSession] startSession:key];
#endif
}

void closeLocalytics()
{
#if LOCALYTICS_ENABLED
    [[LocalyticsSession sharedLocalyticsSession] close];
#endif
}

void uploadLocalytics()
{
#if LOCALYTICS_ENABLED
    [[LocalyticsSession sharedLocalyticsSession] upload];
#endif
}

void resumeLocalytics()
{
#if LOCALYTICS_ENABLED
    [[LocalyticsSession sharedLocalyticsSession] resume];
#endif
}



