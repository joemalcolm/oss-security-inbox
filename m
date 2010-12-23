X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/12/23/3
Message-ID: <AANLkTimSmkNY1YUXW_h=_g2OdwTQ0vHoWoFU1BRDD7hv@mail.gmail.com>
Date: Fri, 24 Dec 2010 01:54:09 +1100
From: dave b <db.pub.mail@...il.com>
To: oss-security <oss-security@...ts.openwall.com>
Cc: "Steven M. Christey" <coley@...us.mitre.org>, Nicolas Sebrecht <nicolas.s-dev@...oste.net>,  Johannes Stezenbach <js@...21.net>, Christoph Höger <choeger@...tu-berlin.de>,  John Goerzen <jgoerzen@...plete.org>
Subject: Re: CVE Request -- OfflineIMAP -- 1), failed to validate remote SSL server certificate 2), allows SSLv2 protocol
Content-Type: text/plain; charset=utf-8

>  II), Allows SSLv2 protocol
>
>  Description:
>  In commit:
>  [4]
> https://github.com/nicolas33/offlineimap/commit/4f57b94e2333c37c5a7251fc88dfeda9bc0b226a
>
>  when SSL server certificate validation support was added
>  to OfflineIMAP it was still possible to use SSL v2 protocol
>  version. Version 2 of SSL protocol version is known
>  to be prone to multiple deficiencies, each of them
>  having security implications (to mention some of them):
>  [5] http://en.wikipedia.org/wiki/Secure_Sockets_Layer#Security
>
>  Thus SSLv2 protocol version should be disabled in OfflineIMAP.

As I understand it this is only an issue if the openssl installed on
the system has sslv2 enabled. So those using openssl 1.0 and above
would not be subject to the second bug.

--
I do desire we may be better strangers.		-- William Shakespeare, "As
You Like It"
