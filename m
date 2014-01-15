X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/01/15/2
Message-ID: <CABLZJbySd2f+VR8cPwgJQHuaabKiAe5mTsRfX7aLBKxcxweXcQ@mail.gmail.com>
Date: Wed, 15 Jan 2014 07:23:53 +0100
From: Maksymilian A <max@...t.cx>
To: security curmudgeon <jericho@...rition.org>
Cc: oss-security@...ts.openwall.com
Subject: Re: CVE Request: Apache Archiva Remote Command Execution 0day
Content-Type: text/plain; charset=utf-8

Thanks. Last Archiva version 1.3.6 (7 January 2014) is unpatched. This is
the same vendor for Archiva and Struts. Why is it still not patched? Good
question for Apache.

Maksymilian Arciemowicz
http://cxsecurity.com/

2014/1/15 security curmudgeon <jericho@...rition.org>

>
> : Please assign CVE for Apache Archiva 0day
> : : http://cxsecurity.com/issue/WLB-2014010087
>
> From that link:
>
> Apache Archiva use Apache Struts2:
>  "In Struts 2 before 2.3.15.1 the information following "action:",
> "redirect:" or "redirectAction:" is not properly sanitized. Since said
> information will be evaluated as OGNL expression against the value stack,
> this introduces the possibility to inject server side code."
>
> References:
>
> http://struts.apache.org/release/2.3.x/docs/s2-016.html
>
>
>
> ^ All that is CVE-2013-2251.
>
>
>

