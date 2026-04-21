X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/04/22/2
Message-ID: <87bjfcnh0n.fsf@gentoo.org>
Date: Tue, 21 Apr 2026 22:24:40 +0100
From: Sam James <sam@...too.org>
To: oss-security@...ts.openwall.com
Cc: Robert Rothenberg <rrwo@...nsec.org>
Subject: Re: CVE-2017-20230: Storable versions before 3.05 for Perl has a stack overflow
Content-Type: text/plain; charset=utf-8

Sam James <sam@...too.org> writes:

> Robert Rothenberg <rrwo@...nsec.org> writes:
>
>> ========================================================================
>> CVE-2017-20230                                       CPAN Security Group
>> ========================================================================
>>
>>         CVE ID:  CVE-2017-20230
>>   Distribution:  Storable
>>       Versions:  before 3.05
>>
>>       MetaCPAN:  https://metacpan.org/dist/Storable
>>       VCS Repo:  https://github.com/Perl/perl5/
>>
>>
>> Storable versions before 3.05 for Perl has a stack overflow
>>
>> Description
>> -----------
>> Storable versions before 3.05 for Perl has a stack overflow.
>>
>> The retrieve_hook function stored the length of the class name into a
>> signed integer but in read operations treated the length as unsigned.
>> This allowed an attacker to craft data that could trigger the overflow.
>
> I'm always suspicious by default of anything involving
> serialisation. The perldoc for Storable [0] says:
>> Do not accept Storable documents from untrusted sources! There is no
>> way to configure Storable so that it can be used safely to process untrusted data. 
>
> and later (between much other omitted text):
>> With the default setting of $Storable::flags = 6, creating or
>> destroying random objects, even renamed objects can be controlled by
>> an attacker.
>> See CVE-2015-1592 and its metasploit module.
>
> Is this vulnerability valid in light of that? Thanks.

In fact, the linked patch in the original message from Robert has in its
commit message:
> No CVE since p5p believes local Storable
> files are not exploitable.

Has the p5p policy changed on this? If so, could the perldoc be updated
please?

(My own view is that it should not change, of course.)

>
> [0] https://perldoc.perl.org/Storable#SECURITY-WARNING
>
>> [...]
>
> sam

Download attachment "signature.asc" of type "application/pgp-signature" (419 bytes)
