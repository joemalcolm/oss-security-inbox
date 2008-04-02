X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/04/02/4
Message-ID: <874pakm4nd.fsf@mid.deneb.enyo.de>
Date: Wed, 02 Apr 2008 21:35:18 +0200
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE request: openssh "ForceCommand" improperly implemented
Content-Type: text/plain; charset=utf-8

* Jonathan Smith:

> It looks to be a rather minor issue since ~/.ssh/rc is usually 0600 and
> ~/.ssh is usually 0700.

We need to check how this interacts with scponly and rssh. 8-(
