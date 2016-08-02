X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/08/02/4
Message-ID: <20160802082351.560@usenet.piggo.com>
Date: Tue, 2 Aug 2016 06:26:37 +0000 (UTC)
From: Sébastien Delafond <seb@...ian.org>
To: oss-security@...ts.openwall.com
Cc: mongodb-user@...glegroups.com
Subject: Re: CVE request: mongodb: world-readable .dbshell history file
Content-Type: text/plain; charset=utf-8

On 2016-08-01, Grant Ridder <shortdudey123@...il.com> wrote:
> FWIW, the vendor has closed
> https://jira.mongodb.org/browse/SERVER-25335 with "Works as
> Designed"

Whatever the umask value is, an application should apply proper
permissions on files deemed sensitive. For instance, ssh-keygen(1)
will never create a world-readable private key, regardless of what the
umask is.

Cheers,

--Seb


