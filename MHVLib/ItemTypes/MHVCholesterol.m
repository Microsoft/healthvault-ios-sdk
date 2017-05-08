//
//  MHVCholesterol.m
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
// See the License for the specifi

#import "MHVCommon.h"
#import "MHVCholesterol.h"

static NSString* const c_typeid = @"796c186f-b874-471c-8468-3eeff73bf66e";
static NSString* const c_typename = @"cholesterol-profile";

static NSString* const c_element_when = @"when";
static NSString* const c_element_ldl = @"ldl";
static NSString* const c_element_hdl = @"hdl";
static NSString* const c_element_total = @"total-cholesterol";
static NSString* const c_element_triglycerides = @"triglyceride";

double const c_cholesterolMolarMass = 386.6;  // g/mol
double const c_triglyceridesMolarMass = 885.7; // g/mol

@interface MHVCholesterol (MHVPrivate)

-(double) cholesterolInMmolPerLiter:(MHVPositiveInt *) value;
-(int) cholesterolMgDLFromMmolPerLiter:(double) value;

@end

@implementation MHVCholesterol

@synthesize when = m_date;
@synthesize ldl = m_ldl;
@synthesize hdl = m_hdl;
@synthesize total = m_total;
@synthesize triglycerides = m_triglycerides;

-(NSDate *)getDate
{
    return [m_date toDate];
}

-(NSDate *)getDateForCalendar:(NSCalendar *)calendar
{
    return [m_date toDateForCalendar:calendar];
}

-(int)ldlValue
{
    return (m_ldl) ? m_ldl.value : -1;
}

-(void)setLdlValue:(int)ldl
{
    MHVENSURE(m_ldl, MHVPositiveInt);
    m_ldl.value = ldl;
}

-(int) hdlValue
{
    return (m_hdl) ? m_hdl.value : -1;
}

-(void)setHdlValue:(int)hdl
{
    MHVENSURE(m_hdl, MHVPositiveInt);
    m_hdl.value = hdl;        
}

-(int) triglyceridesValue
{
    return (m_triglycerides) ? m_triglycerides.value : -1;
}

-(void)setTriglyceridesValue:(int)triglycerides
{
    MHVENSURE(m_triglycerides, MHVPositiveInt);
    m_triglycerides.value = triglycerides;       
}

-(int)totalValue
{
    return (m_total) ? m_total.value : -1;
}

-(void)setTotalValue:(int)total
{
    MHVENSURE(m_total, MHVPositiveInt);
    m_total.value = total;
}

-(double)ldlValueMmolPerLiter
{
    return [self cholesterolInMmolPerLiter:m_ldl];
}

-(void)setLdlValueMmolPerLiter:(double)ldlValueMmolPerLiter
{
    self.ldlValue = [self cholesterolMgDLFromMmolPerLiter:ldlValueMmolPerLiter];
}

-(double)hdlValueMmolPerLiter
{
    return [self cholesterolInMmolPerLiter:m_hdl];
}

-(void)setHdlValueMmolPerLiter:(double)hdlValueMmolPerLiter
{
    self.hdlValue = [self cholesterolMgDLFromMmolPerLiter:hdlValueMmolPerLiter];
}

-(double)totalValueMmolPerLiter
{
    return [self cholesterolInMmolPerLiter:m_total];
}

-(void)setTotalValueMmolPerLiter:(double)totalValueMmolPerLiter
{
    self.totalValue = [self cholesterolMgDLFromMmolPerLiter:totalValueMmolPerLiter];
}

-(double)triglyceridesValueMmolPerLiter
{
    return (m_triglycerides) ? (mgDLToMmolPerL(m_triglycerides.value, c_triglyceridesMolarMass)) : NAN;
}

-(void)setTriglyceridesValueMmolPerLiter:(double)triglyceridesValueMmolPerLiter
{
    self.triglyceridesValue = mmolPerLToMgDL(triglyceridesValueMmolPerLiter, c_triglyceridesMolarMass);
}

-(NSString *)description
{
    return [self toString];
}

-(NSString *)toString
{
    return [self toStringWithFormat:@"%d/%d"];
}

-(NSString *)toStringWithFormat:(NSString *)format
{
    return [NSString localizedStringWithFormat:format, self.ldlValue, self.hdlValue];
}


-(MHVClientResult *)validate
{
    MHVVALIDATE_BEGIN
    
    MHVVALIDATE(m_date, MHVClientError_InvalidCholesterol);
    MHVVALIDATE_OPTIONAL(m_ldl);
    MHVVALIDATE_OPTIONAL(m_hdl);
    MHVVALIDATE_OPTIONAL(m_total);
    MHVVALIDATE_OPTIONAL(m_triglycerides);
    
    MHVVALIDATE_SUCCESS
}

-(void)serialize:(XWriter *)writer
{
    [writer writeElement:c_element_when content:m_date];
    [writer writeElement:c_element_ldl content:m_ldl];
    [writer writeElement:c_element_hdl content:m_hdl];
    [writer writeElement:c_element_total content:m_total];
    [writer writeElement:c_element_triglycerides content:m_triglycerides];
}

-(void)deserialize:(XReader *)reader
{
    m_date = [reader readElement:c_element_when asClass:[MHVDate class]];
    m_ldl = [reader readElement:c_element_ldl asClass:[MHVPositiveInt class]];
    m_hdl = [reader readElement:c_element_hdl asClass:[MHVPositiveInt class]];
    m_total = [reader readElement:c_element_total asClass:[MHVPositiveInt class]];
    m_triglycerides = [reader readElement:c_element_triglycerides asClass:[MHVPositiveInt class]];    
}

+(NSString *)typeID
{
    return c_typeid;
}

+(NSString *) XRootElement
{
    return c_typename;
}

+(MHVItem *) newItem
{
    return [[MHVItem alloc] initWithType:[MHVCholesterol typeID]];
}

-(NSString *)typeName
{
    return NSLocalizedString(@"Cholesterol", @"Cholesterol Type Name");
}

@end

@implementation MHVCholesterol (MHVPrivate)

-(double)cholesterolInMmolPerLiter:(MHVPositiveInt *)value
{
    if (!value)
    {
        return NAN;
    }
    
    return mgDLToMmolPerL(value.value, c_cholesterolMolarMass);
}

-(int)cholesterolMgDLFromMmolPerLiter:(double)value
{
    return round(mmolPerLToMgDL(value, c_cholesterolMolarMass));
}

@end