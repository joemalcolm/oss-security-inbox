X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/06/09/3
Message-ID: <Pine.GSO.4.64.1006091544190.15053@faron.mitre.org>
Date: Wed, 9 Jun 2010 15:47:42 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
Subject: Re: [oCERT-2010-001] multiple http client unexpected download filename vulnerability
Content-Type: text/plain; charset=utf-8


On Wed, 9 Jun 2010, Marcus Meissner wrote:

> On Mon, May 17, 2010 at 01:03:22PM +0100, Daniele Bianco wrote:
>>
>> #2010-001 multiple http client unexpected download filename vulnerability
>>
>> Description:
>>
>> The lftp, wget and lwp-download applications are ftp/http clients and file
>> transfer tools supporting various network protocols. The lwp-download
>> script is shipped along with the libwww-perl library.
>
> Did anyone assign CVE ids for these?

Apologies to oCERT and everyone else for being so terrible at handling 
this.

CVE-2010-2251 - lftp
CVE-2010-2252 - wget 
CVE-2010-2253 - libwww-perl as used in lwp-download


- Steve
