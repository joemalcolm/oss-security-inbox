X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/06/23/10
Message-ID: <CAHmME9pFsfuGgvY6pkAZPoJYXUzabqxiWbo54Qo7LufhJB-J1w@mail.gmail.com>
Date: Fri, 23 Jun 2017 22:53:56 +0200
From: "Jason A. Donenfeld" <Jason@...c4.com>
To: dhcpcd-discuss@...ples.name, Roy Marples <roy@...ples.name>
Cc: oss-security <oss-security@...ts.openwall.com>
Subject: Remotely exploitable crash in dhcpcd
Content-Type: text/plain; charset=utf-8

Hi Roy,

I found that by sending the same exact DHCP response to two different
DHCP requests on different interfaces, I was able to segfault dhcpcd.
The attached patch fixes the problem, though you might want to
investigate a bit further precisely why this is necessary.

Regards,
Jason

View attachment "dhcpcd-7.0.0-crash-fix.patch" of type "text/x-patch" (431 bytes)
