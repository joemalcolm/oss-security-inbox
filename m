X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/08/25/5
Message-ID: <886744ab-08e1-4602-98a0-828cea1cda17@oracle.com>
Date: Tue, 25 Aug 2020 12:22:35 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Cc: "X.Org Security Team" <xorg-security@...ts.x.org>
Subject: Re: X.Org server security advisory: August 25, 2020
Content-Type: text/plain; charset=utf-8

On 8/25/20 8:37 AM, Matthieu Herrb wrote:
> * CVE-2020-1436 / ZDI CAN 11574 XRecordRegisterClients Integer Underflow
> 
> An integer underflow exist in the handler for the CreateRegister
> request of the X record extension.

This entry was missing a digit in the CVE id, the correct id was listed
in the later half:

> commit 24acad216aa0fc2ac451c67b2b86db057a032050
> 
>      Fix XRecordRegisterClients() Integer underflow
> 
>      CVE-2020-14362 ZDI-CAN-11574

These advisories have also now been published on the X.Org security page at
https://www.x.org/wiki/Development/Security/

-- 
	-Alan Coopersmith-              alan.coopersmith@...cle.com
	  X.Org Security Response Team - xorg-security@...ts.x.org

