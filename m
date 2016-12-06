X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/12/06/5
Message-ID: <20161206125628.g46mnllue6akwt5p@lorien.valinor.li>
Date: Tue, 6 Dec 2016 13:56:28 +0100
From: Salvatore Bonaccorso <carnil@...ian.org>
To: OSS Security Mailinglist <oss-security@...ts.openwall.com>
Cc: Scott Kitterman <scott@...terman.com>
Subject: CVE Request: html5lib: potential cross-site scripting vulnerablity: quote attributes that need escaping in legacy browsers
Content-Type: text/plain; charset=utf-8

Hi

As found in
https://www.sourceclear.com/registry/security/cross-site-scripting-xss-/python/sid-3068/fix
html5lib fixed a cross-site scripting vulnerability in upstream
version 0.99999999 with commit 

https://github.com/html5lib/html5lib-python/commit/9b8d8eb5afbc066b7fac9390f5ec75e5e8a7cab7

References:

https://github.com/html5lib/html5lib-python/issues/11
https://github.com/html5lib/html5lib-python/issues/12

Question about the CVE assignment for html5lib was raised as well in
https://github.com/mozilla/bleach/issues/229

Could you please assign a CVE to identify this issue?

Regards,
Salvatore
