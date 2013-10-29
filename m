X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/10/29/3
Message-ID: <1383033188.3170.262.camel@banzai>
Date: Tue, 29 Oct 2013 08:53:08 +0100
From: Nicolas Grégoire <nicolas.gregoire@...rri.fr>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request: libxml2 external parsed entities issue
Content-Type: text/plain; charset=utf-8


> libxml has an API to disable external entity expansion.

Are you talking about using xmlSetExternalEntityLoader()?

It works, but changing the libxml default behavior to not being
vulnerable to XXE seems a good idea.

Cheers,
Nicolas

