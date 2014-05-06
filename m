X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/05/06/5
Message-ID: <1399400488.23373.11.camel@banzai>
Date: Tue, 06 May 2014 20:21:28 +0200
From: Nicolas Grégoire <nicolas.gregoire@...rri.fr>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2014-0191 libxml2: external parameter entity loaded when entity substitution is disabled
Content-Type: text/plain; charset=utf-8

Hello,

> libxml2 [...] incorrectly performs entity substituton in the doctype
> prolog, even if the application using libxml2 disabled any entity
> substitution. 

I'm not sure that I understand this bug. Do you have a PoC?

Regards,
Nicolas Grégoire

