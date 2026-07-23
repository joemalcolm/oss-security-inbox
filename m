X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/23/1
Message-ID: <20260723082004.24796276@hboeck.de>
Date: Thu, 23 Jul 2026 08:20:04 +0200
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: Serendipity blog software security fixes in 2.6.1 (Username takeover, XSS, ...)
Content-Type: text/plain; charset=utf-8

Hi,

From the release notes of Serendipity 2.6.1, a PHP-based open source
blog system:

"It has been a while that we had to publish a security release. But this
is one. After the 2.6.0 release, multiple security reports were
submitted via Github's system. Not all of them were valid according to
our criteria, but some turned out to be legitimate reports. These
security reports will be released soon, but boil down to:

 * A critical bug in the username logic, allowing existing usernames to
   be duplicated and to capture the rights of existing accounts
   (@DevVaibhav07)
 * A XSS injection vector on the search page, the search term was not
   properly (or rather, twice) escaped (@hutsbotnet)
 * An outdated blacklist for downloads into the media library, making
   network resources available that ought to be blocked. (@riodrwn)
 * An open redirect in exit.php when the trackexit plugin was installed
   and the blog used for URL redirects via an option in the plugin
   (@DevVaibhav07) 
[...]"

Source:
https://github.com/s9y/Serendipity/releases/tag/2.6.1

-- 
Hanno Böck - Independent security researcher
https://itsec.hboeck.de/
https://badkeys.info/
