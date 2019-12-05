X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/12/05/6
Message-Id: <4BEB436C-9471-446E-9795-6B3AACEDDAB4@alchemistowl.org>
Date: Thu, 5 Dec 2019 12:04:45 +0100
From: Arrigo Triulzi <arrigo@...hemistowl.org>
To: oss-security@...ts.openwall.com
Subject: Re: Authentication vulnerabilities in OpenBSD
Content-Type: text/plain; charset=utf-8

On 5 Dec 2019, at 11:44, Georgi Guninski <gguninski@...il.com> wrote:
> 
> On Wed, Dec 4, 2019 at 10:51 PM Qualys Security Advisory <qsa@...lys.com> wrote:
>> 
>> 
>> Qualys Security Advisory
>> 
>> Authentication vulnerabilities in OpenBSD
>> 
> 
> openbsd doesn't count these as remote holes in default install, right?

By default OpenSMTPd listens only on localhost:25 and is not configured to offer SMTP AUTH

Arrigo

