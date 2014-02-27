X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/02/27/12
Message-ID: <20140227173054.GO21958@suse.de>
Date: Thu, 27 Feb 2014 18:30:54 +0100
From: Marcus Meissner <meissner@...e.de>
To: OSS Security List <oss-security@...ts.openwall.com>
Subject: CVE Request?: konqueror - https uses all ciphers, even weak ones
Content-Type: text/plain; charset=utf-8

Hi,

I am wondering a bit ...

We received this bugreport for the KDE default webbrowser Konqueror:
https://bugzilla.novell.com/show_bug.cgi?id=865241

Basically https://www.howsmyssl.com reports that even the weak
EXPORT ciphera are in use by konqueror.

And yes, it is right...
DES40, RC2, DES_CBC  (single DES) ... should definitely not be used these days anymore.


Do you think use of export ciphers should get CVEs these days?

It does not seem intentional, konqueror just uses everything openssl has without
explicit filtering by default.

I also failed to find a module to configure the ciphers in the KDE configuration
module jungle.

Ciao, Marcus
