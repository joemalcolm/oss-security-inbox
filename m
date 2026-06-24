X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/24/5
Message-ID: <9e583856-456f-4eca-b2d3-f9cc8a1fd0ec@web.de>
Date: Wed, 24 Jun 2026 19:11:29 +0200
From: Rolf Reintjes <rolf.reintjes@....de>
To: oss-security@...ts.openwall.com
Subject: Re: Squid CVE-2026-47729 and CVE-2026-50012
Content-Type: text/plain; charset=utf-8

Am 24.06.2026 um 11:38 schrieb Christian Fischer:
> Hello,
> 
> On 6/22/26 8:35 AM, Salvatore Bonaccorso wrote:
>> Hi Amos,
>>
>> On Mon, Jun 15, 2026 at 11:26:10PM +1200, Amos Jeffries wrote:
>>> On 12/06/2026 20:21, Amos Jeffries wrote:
>>>> Hi all,
>>>>
>>>> Squid 7.6 release contains fixes for and releases the embargo on
>>>> CVE-2026-47729 and CVE-2026-50012.
>>>>
>>>
>>> Apologies, this first one (CVE-2026-47729) embargo is over, but the 
>>> fix will
>>> actually be in Squid 7.7.
>>>
>>>>
>>>> CVE-2026-47729
>>>>
>>>> Due to a Improper Validation of Syntactic Correctness of Input
>>>> bug, Squid is vulnerable to a Out-of-bounds Read
>>>> attack against the FTP gateway.
>>>>
>>>> This problem allows a trusted client to perform an Out-of-Bounds
>>>> Read from random unrelated transactions when accessing a
>>>> misbehaving FTP server through Squid's gateway feature.
>>>>
>>>> <https://github.com/squid-cache/squid/
>>>> commit/865a131c7d557e68c965043d98c2eccae26deef8.patch>
>>
>> I'm slightly confused about this. The referenced fix is in 7.6. Can
>> you point us to the correct fix in 7.7 for CVE-2026-47729?
>>
>> At least
>> https://github.com/squid-cache/squid/ 
>> commit/865a131c7d557e68c965043d98c2eccae26deef8
>> matches as well the followup from Alan.
>>
> 
> Official advisories for both CVEs seems to be available now:
> - https://github.com/squid-cache/squid/security/advisories/GHSA-8c37- 
> pxjq-qwrg
> - https://github.com/squid-cache/squid/security/advisories/ 
> GHSA-5vmx-9x64-9284
> 
> For CVE-2026-47729 the advisory now also lists versions < 7.6 as fixed 
> not < 7.7.

I think >= 7.6 would be correct.
