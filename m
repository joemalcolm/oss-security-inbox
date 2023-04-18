X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/04/18/11
Message-ID: <CAGUWgD88WiJwryGFt9hQe1rEpLX2PKb=ms-8iONvQ2qhDgtigA@mail.gmail.com>
Date: Tue, 18 Apr 2023 15:59:17 +0300
From: Georgi Guninski <gguninski@...il.com>
To: oss-security@...ts.openwall.com
Subject: Checking existence of firewalled web servers in Firefox via iframe.onload
Content-Type: text/plain; charset=utf-8

In short in Firefox 112, it is possible to check existence
of firewalled web servers. This doesn't work in Chrome and Chromium 112
for me.

If user A has tcp connection to web server B, then in the
following html:

<iframe src="http://B" onload="load()" onerror="alert('error')" id="i1" />

the javascript function load() will get executed if B serves
valid document to A's browser and will not be executed otherwise.

This work for both http and https, and for http it is allowed
B to be IP address. Under some configurations of Apache2,
it serves http despite having https configured.

In some sense, this is close to nmap via javascript in a browser.

Potential privacy implication is when the attacker guess the
range of firewalled IPs and check them all in a loop.

For online test:
https://j.ludost.net/onload1.html

-- 
guninski:  https://j.ludost.net/resumegg.pdf
