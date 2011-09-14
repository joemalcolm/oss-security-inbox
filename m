X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/09/14/5
Message-ID: <17328238.1261288.1316024384673.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Wed, 14 Sep 2011 14:19:44 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: Gerald Combs <gerald@...eshark.org>, cve-assign@...re.org
Subject: Re: CVE Request: Multiple issues fixed in wireshark 1.6.2
Content-Type: text/plain; charset=utf-8

----- Original Message -----

> 2. Wireshark Lua script execution vulnerability
> http://www.wireshark.org/security/wnpa-sec-2011-15.html
> https://bugzilla.redhat.com/show_bug.cgi?id=737784

Use CVE-2011-3360 for the above.


Are the below worth assigning CVE ids to? The advisory seems to suggest
they are crash only fixes. Do those deserve CVE IDs? I know we've been
fairly generous with wireshark in the past, but I'm wondering if we need to
draw a line somewhere.

> 
> 1, Wireshark CSN.1 dissector vulnerability
> http://www.wireshark.org/security/wnpa-sec-2011-16.html
> https://bugzilla.redhat.com/show_bug.cgi?id=737783
> 
> 3. Wireshark buffer exception handling vulnerability
> http://www.wireshark.org/security/wnpa-sec-2011-14.html
> https://bugzilla.redhat.com/show_bug.cgi?id=737785
> 
> 4. Wireshark OpenSafety dissector vulnerability
> http://www.wireshark.org/security/wnpa-sec-2011-12.html
> https://bugzilla.redhat.com/show_bug.cgi?id=737787
> 

Thanks.

-- 
    JB
