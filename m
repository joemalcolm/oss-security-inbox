X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/11/20/5
Message-ID: <49255FCC.9020704@pardus.org.tr>
Date: Thu, 20 Nov 2008 15:02:04 +0200
From: Pınar Yanardağ <pinar@...dus.org.tr>
To: oss-security@...ts.openwall.com
Subject: CVE Request: imlib2
Content-Type: text/plain; charset=utf-8

 From Secunia [1]

----
*Description*:
A vulnerability has been discovered in imlib2, which can be exploited by 
malicious people to potentially compromise an application using the library.

The vulnerability is caused due to a pointer arithmetic error within the 
"load()" function provided by the XPM loader. This can be exploited to 
cause a heap-based buffer overflow via a specially crafted XPM file.

Successful exploitation may allow execution of arbitrary code.

The vulnerability is confirmed in version 1.4.2. Other versions may also 
be affected.
----

[1]: http://secunia.com/Advisories/32796

Can you assign a CVE please?

Cheers,

-- 
Pınar Yanardağ (a.k.a PINguAR)
http://pinguar.org
_____________________________

Pardus Security Team
http://security.pardus.org.tr


