X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/03/01/8
Message-ID: <a901d6be-4e2f-bc3f-c817-79fc362b142e@canonical.com>
Date: Wed, 1 Mar 2023 10:55:05 -0500
From: Marc Deslauriers <marc.deslauriers@...onical.com>
To: oss-security@...ts.openwall.com
Subject: Re: sudo: double free with per-command chroot sudoers rules
Content-Type: text/plain; charset=utf-8

On 2023-03-01 10:11, Todd C. Miller wrote:
> On Tue, 28 Feb 2023 19:55:43 -0600, John Helmert III wrote:
> 
>> Has a CVE been requeested?
> 
> No, and I don't plan on requesting one.  As far as I can tell, this
> doesn't actually affect any users.
> 
>   - todd

Well, it looks like CVE-2023-27320 already got assigned to this issue.

https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2023-27320

Marc.
