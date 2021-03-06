/*
 * Copyright 2010-2014 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

#import "AWSMobileAnalyticsErrorUtils.h"

@implementation AWSMobileAnalyticsErrorUtils

+(NSError *) errorWithDomain:(NSString *) theDomain
             withDescription:(NSString *) theDescription
               withErrorCode:(int) theErrorCode
{
    NSString *desc = NSLocalizedString(theDescription, @"");
    NSDictionary *userInfo = @{ NSLocalizedDescriptionKey : desc };
    return [NSError errorWithDomain:theDomain
                               code:theErrorCode
                           userInfo:userInfo];
}

+(BOOL) safeSetError:(NSError **)theProvidedError withError:(NSError *)theError
{
    if(theProvidedError)
    {
        *theProvidedError = theError;
        return YES;
    }
    
    return NO;
}

@end
