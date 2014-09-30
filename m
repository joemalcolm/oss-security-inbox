X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/09/30/20
Message-ID: <4E87864C-D4B8-4A4F-9AFB-513B1629ACEA@akamai.com>
Date: Tue, 30 Sep 2014 08:41:24 -0500
From: "Kobrin, Eric" <ekobrin@...mai.com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: Re: Healing the bash fork
Content-Type: text/plain; charset=utf-8

> "innocuous looking setuid program" made my day ;)

> We should take care not to blame all and everything to bash.

I don't find that blame is a useful tool for fixing security problems. What's more interesting to me is: what system components are in a position to help. If a change in bash can make a bunch of "innocuous looking setuid programs" not be  vectors for the import of malicious functions, let's do it.
