X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/01/12/13
Message-Id: <8B21CEC4-A114-4E09-AE2F-5FF64DC9989F@oracle.com>
Date: Tue, 12 Jan 2021 19:10:07 +0000
From: John Haxby <john.haxby@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2020-28374: Linux SCSI target (LIO) unrestricted copy offload
Content-Type: text/plain; charset=utf-8



> On 12 Jan 2021, at 18:01, David Disseldorp <ddiss@...e.de> wrote:
> 
> ===============================================================================
> == Subject:     Linux SCSI target (LIO) unrestricted copy offload
> ==
> ==
> == CVE ID#:     CVE-2020-28374
> ==
> == Versions:    Linux: v3.12 and later
> ==              tcmu-runner: v1.3.0 and later
> ==
> == Summary:     An attacker with access to a LUN and knowledge of Unit Serial
> ==              Number assignments can read and write to any LIO backstore,
> ==              regardless of SCSI transport settings.
> ===============================================================================
> 

David -- did you mean to attach the patches you posted to linux-distros?

jch

Download attachment "signature.asc" of type "application/pgp-signature" (269 bytes)
