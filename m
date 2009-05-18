X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/05/18/4
Message-ID: <0905181944130.23125@mjc.redhat.com>
Date: Mon, 18 May 2009 19:50:54 +0100 (BST)
From: Mark J Cox <mjc@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: Two OpenSSL DTLS remote DoS
Content-Type: text/plain; charset=utf-8

Stephen Henson pointed out that there is one other DTLS issue that 
probably has security consequences too, and that backporting DTLS issues 
is probably not the right thing to do given the amount of change happening 
in the DTLS code to fix protocol errors etc:

CVE-2009-1379 DTLS fragment read after free DoS
http://rt.openssl.org/Ticket/Display.html?id=1923&user=guest&pass=guest

Mark
