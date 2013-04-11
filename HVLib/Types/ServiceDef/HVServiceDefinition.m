//
//  HVServiceDefinition.m
//  HVLib
//
//  Copyright (c) 2013 Microsoft Corporation. All rights reserved.
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
//

#import "HVCommon.h"
#import "HVServiceDefinition.h"

static const xmlChar* x_element_platform = XMLSTRINGCONST("platform");
static const xmlChar* x_element_shell = XMLSTRINGCONST("shell");

@implementation HVServiceDefinition

@synthesize platform = m_platform;
@synthesize shell = m_shell;

-(void)dealloc
{
    [m_platform release];
    [m_shell release];
    [super dealloc];
}

-(void)deserialize:(XReader *)reader
{
    HVDESERIALIZE_X(m_platform, x_element_platform, HVPlatformInfo);
    HVDESERIALIZE_X(m_shell, x_element_shell, HVShellInfo);
    HVDESERIALIZE_IGNORE(@"xml-method");
    HVDESERIALIZE_IGNORE(@"common-schema");
}

-(void)serialize:(XWriter *)writer
{
    HVSERIALIZE_X(m_platform, x_element_platform);
    HVSERIALIZE_X(m_shell, x_element_shell);
}

@end
