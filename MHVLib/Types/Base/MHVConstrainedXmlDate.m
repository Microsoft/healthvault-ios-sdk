//
//  MHVConstrainedXmlDate.m
//  MHVLib
//
//  Copyright (c) 2017 Microsoft Corporation. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

#import "MHVCommon.h"
#import "MHVConstrainedXmlDate.h"

static NSString* const c_maxDate = @"9999-12-31T00:00:00";
static NSString* const c_maxDatePrefix = @"9999";

@implementation MHVConstrainedXmlDate

@synthesize value = m_value;

-(BOOL)isNull
{
    return (!m_value);
}

-(id)init
{
    return [self initWith:nil];
}

-(id) initWith:(NSDate *)value
{
    self = [super init];
    MHVCHECK_SELF;
    
    if (value)
    {
        m_value = value;
    }
    
    return self;
    
LError:
    MHVALLOC_FAIL;
}


-(NSString *) description
{
    return [self toString];
}

-(NSString *)toString
{
    return [self toStringWithFormat:@"%d"];
}

-(NSString *)toStringWithFormat:(NSString *)format
{
    if (!m_value)
    {
        return nil;
    }
    
    return [m_value toStringWithFormat:format];
}

-(void) serialize:(XWriter *)writer
{
    if (m_value)
    {
        [writer writeDate:m_value];
    }
    else
    {
        // Special magic value MHV uses to Remove this entry
        [writer writeText:c_maxDate];
    }
}

-(void) deserialize:(XReader *)reader
{
    NSString* text = [reader readString];
    
    if ([NSString isNilOrEmpty:text] || [text hasPrefix:c_maxDatePrefix])
    {
        m_value = nil;
        return;
    }

    NSDate* date = nil;
    if ([reader.converter tryString:text toDate:&date] && date)
    {
        m_value = date;
    }
}

+(MHVConstrainedXmlDate *)fromDate:(NSDate *)date
{
    return [[MHVConstrainedXmlDate alloc] initWith:date];
}

+(MHVConstrainedXmlDate *)nullDate
{
    return [[MHVConstrainedXmlDate alloc] init];
}
@end