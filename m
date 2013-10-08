X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/10/08/5
Message-ID: <CAFA5uROtrEgNeN9=VP1pPbWGuAhCWoWbu2NsCq=qB+CZeT8uSw@mail.gmail.com>
Date: Tue, 8 Oct 2013 12:21:55 -0500
From: richard schneeman <richard.schneeman@...il.com>
To: oss-security@...ts.openwall.com
Subject: Vulnerability Reported in my Ruby Gem
Content-Type: text/plain; charset=utf-8

I'm interested in creating a CVE for this issue and came to this mailing
list from this link:
http://people.redhat.com/kseifrie/CVE-OpenSource-Request-HOWTO.html

I maintain the ruby gem 'wicked' (roughly 100k downloads). A vulnerability
has been reported allowing an attacker to read arbitrary files on a system.

All previously released versions are vulnerable. Version 1.0.1 has been
released with the problem patched.

Email: richard.schneeman@...il.com
Software Name: Wicked gem

Commit of fix:
https://github.com/schneems/wicked/commit/fe31bb2533fffc9d098c69ebeb7afc3b80509f53


Please let me know if you need more information or if this is the wrong
forum for this type of a request

--
Richard Schneeman

