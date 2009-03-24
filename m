X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/03/24/5
Message-ID: <Pine.GSO.4.51.0903241804070.18572@faron.mitre.org>
Date: Tue, 24 Mar 2009 18:10:02 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
Subject: Re: Lua 5.1.4
Content-Type: text/plain; charset=utf-8


Note that the typical CVE criterion for flagging language-interpreter bugs
is that they should be exploitable/reachable through the language API in
reasonable scenarios for the application.  Otherwise, it's the application
developer attacking himself/herself.  I know nothing about Lua so can't
interpret items like #6 and #8, whereas you could imagine malicious input
being processed by unpack().

- Steve
