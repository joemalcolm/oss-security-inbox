X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/04/19/7
Message-ID: <CAGUWgD9UDNkNMsixAnLcmS0OuWM0Btvx6fRbRr1OSk1UsXhy2g@mail.gmail.com>
Date: Wed, 19 Apr 2023 15:45:36 +0300
From: Georgi Guninski <gguninski@...il.com>
To: oss-security@...ts.openwall.com
Subject: Checking existence of firewalled URLs via javascript's script.onload
Content-Type: text/plain; charset=utf-8

There is minor information disclosure vulnerability similar
to nmap in browser.

It is possible to check the existence of firewalled URL U via
the following javascript in a browser:

<script src="U"
    onload="alert('Exists')"
    onerror="alert('Does not exist')">

This might have privacy implication on potentially
"semi-blind CSRF" (XXX does this makes sense?).

Works for me in Firefox, Chrome and Chromium 112.

I believe the issue won't be fixed because it will break
stuff in the mess called internet.

For online test:

https://www.guninski.com/onload2.html

-- 
guninski:  https://j.ludost.net/resumegg.pdf
