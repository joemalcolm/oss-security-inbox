X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/08/25/10
Message-ID: <Pine.GSO.4.64.1008251954120.3520@faron.mitre.org>
Date: Wed, 25 Aug 2010 19:56:57 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security <oss-security@...ts.openwall.com>
Subject: Re: CVE request: VLC media player - DLL preloading vulnerability
Content-Type: text/plain; charset=utf-8


We will have one CVE per vulnerable application.  Yes, it's going to be 
very painful.  Roughly, the rationale is: "the product does not protect 
against a common configuration/behavior in its environment."

> VLC was exploitable by loading wintab32.dll, a component request by
> Qt, as shown in http://www.exploit-db.com/exploits/14750/

Use CVE-2010-3124


> There's another possibility with DMO.

Is this a distinct product outside of VLC, or is it just a different 
component / attack vector?


- Steve
