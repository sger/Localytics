//
//  Localytics.h
//  Trigon
//
//  Created by Spiros Gerokostas on 2/13/13.
//  Copyright (c) 2013 Spiros Gerokostas. All rights reserved.
//

#ifndef LOCALYTICS_ENABLED
#define LOCALYTICS_ENABLED (!DEBUG && !TARGET_IPHONE_SIMULATOR)
#endif

#if LOCALYTICS_ENABLED
#import "LocalyticsSession.h"
#endif

void startLocalytics(NSString *key);

