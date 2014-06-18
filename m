X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/06/18/14
Message-ID: <CAOy4VzeHz9k8OMqNhpojZKb2_76mNw2j1P9_2qaaqJs2j5YyKg@mail.gmail.com>
Date: Wed, 18 Jun 2014 06:45:37 -0700
From: David Tomaschik <david@...temoverlord.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request: Parameter Injection in jCryption 3.0
Content-Type: text/plain; charset=utf-8

jCryption 3.0 suffers from a parameter injection vulnerability due to
passing an attacker-controlled string to PHP's proc_open function.  Though
the PHP code is not distributed as a library, it is presented as a
copy-and-paste server side implementation to match the jQuery module, and
sites that have done so, or have left the jcryption.php file on their
server, are vulnerable.  This vulnerability (at least) allows an attacker
to read arbitrary files, including the RSA private key used by jCryption.

jCryption 3.0.1 fixes the issue and is available at
http://www.jcryption.org/.  Details are in the advisory on my blog:
https://systemoverlord.com/blog/2014/06/18/parameter-injection-in-jcryption/

-- 
David Tomaschik
OpenPGP: 0x5DEA789B
http://systemoverlord.com
david@...temoverlord.com

