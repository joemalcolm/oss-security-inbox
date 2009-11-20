X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/11/20/7
Message-Id: <200911201946.15129.eren@pardus.org.tr>
Date: Fri, 20 Nov 2009 19:46:14 +0200
From: Eren Türkay <eren@...dus.org.tr>
To: oss-security@...ts.openwall.com
Cc: Thomas Biege <thomas@...e.de>
Subject: Re: CVE request: php 5.3.1 update
Content-Type: text/plain; charset=utf-8

On Friday 20 November 2009 12:41:50 pm Thomas Biege wrote:
> * Added "max_file_uploads" INI directive, which can be set to limit the
> number of file uploads per-request to 20 by default, to prevent possible
> DOS via temporary file exhaustion.

Bogdan Calin disclosed the details about that vulnerability on full-disclosure 
mailing list. He didn't disclosed his script but I wrote a PoC that works like 
a charm. It makes DoS possible for any server that runs PHP within 1 minute 
with a few requests.

Additionally, this vulnerability affects 5.2.11. I guess all products before 
PHP 5.3.1 are vulnerable.

I think this deserves CVE Id. Any ideas?
