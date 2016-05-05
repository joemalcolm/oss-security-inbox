X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/05/05/17
Message-ID: <20160505133201.GA12142@eldamar.local>
Date: Thu, 5 May 2016 15:32:01 +0200
From: Salvatore Bonaccorso <carnil@...ian.org>
To: OSS Security Mailinglist <oss-security@...ts.openwall.com>
Subject: CVE Request: OpenAFS: OPENAFS-SA-2016-002 - various client functionality leak stack data onto the wire in the clear
Content-Type: text/plain; charset=utf-8

Hi

Can a CVE be assigned for the following (low severity) issue in the
OpenAFS implementation:

https://www.openafs.org/pages/security/#OPENAFS-SA-2016-002

> OPENAFS-SA-2016-002 - various client functionality leak stack data
> onto the wire in the clear
> 
> Several structures used as RPC arguments contain a mask field that
> indicates which other fields should be processed by the server. In
> some cases, fields not not indicated in the mask were transmitted over
> the network without being written to, exposing the previous contents
> of that memory. Both kernel stack and userspace stack data can be
> leaked. 

Full Text: https://www.openafs.org/pages/security/OPENAFS-SA-2016-002.txt

Patches:
https://www.openafs.org/pages/security/openafs-sa-2016-002.patch
https://www.openafs.org/pages/security/openafs-sa-2016-002-master.patch

Regards,
Salvatore
