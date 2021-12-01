X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/12/01/3
Message-ID: <73c78b13-5086-02eb-a496-4367a5712949@caret.be>
Date: Wed, 1 Dec 2021 12:52:18 +0100
From: Jens Timmerman <jens@...et.be>
To: oss-security@...ts.openwall.com
Subject: Re: IMA gadgets
Content-Type: text/plain; charset=utf-8


On 11/30/21 22:27, Grant Taylor wrote:
>
>> This means an attacker can turn any binary into a SUID binary. The 
>> signatures do not cover these file attributes, so they will still 
>> verify.
>
> It may be possible to add SUID and / or capabilities to a signed file. 
> But I have to question how such a questionable non-SUID binary would 
> be given a signature in the first place?  Or asked another why, why 
> would a questionable file be given a IMA signature in the first place? 


An attacker doesn't need to SUID a questionable binary, just any binary 
that would then allow to execute commands. e.g. /usr/bin/bash  or less 
obvious but still obvious perl, python, vim, sudoedit,  and 100's of 
other default tools that could be used to an attackers advantage once 
they are SUID.

