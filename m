X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/02/10/9
Message-ID: <54DA1580.8070102@upv.es>
Date: Tue, 10 Feb 2015 15:28:16 +0100
From: Hector Marco <hecmargi@....es>
To: cve-assign@...re.org
CC: oss-security@...ts.openwall.com
Subject: Re: Re: CVE-Request -- Google Email App 4.2.2 remote denial of service
Content-Type: text/plain; charset=utf-8



El 09/02/15 a las 22:40, cve-assign@...re.org escribió:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
>> A bug in the stock Google email application
>
> Is the source code and fix in 4.2.2.0400 the same as in:
>
>    https://src.chromium.org/viewvc/blink?revision=152293&view=revision
>
> ? If so, then it is an open-source vulnerability, and can have one
> CVE-2013-#### ID assigned here, even if the relevant HTTPParsers.cpp code
> is also bundled in one or more closed-source products.
>
> If it is independent source code that happens to have the same
> attack vector (the attack vector in
> http://hmarco.org/bugs/google_email_app_4.2.2_denial_of_service.html
> appears to be identical to the attack vector in the
> https://src.chromium.org/viewvc/blink/trunk/LayoutTests/http/tests/misc/resources/nearly-empty-content-disposition.php
> test), then revision 152293 could probably have a separate new
> CVE-2013-#### ID.

It is a different source code and fix. The source code is available in:

https://android.googlesource.com/platform/packages/apps/Email

Note that the HTTPParsers.cpp is the file which parses the headers but 
in the Email App this is done by the MimeUtility.java.

It seems that the Chromium bug is very similar to the Email one, but I 
think the attack vector is different since in the first case, it can be 
exploited by sending an email and in the second case by visiting a website.


Regards,
Hector Marco.
