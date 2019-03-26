X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/03/26/1
Message-ID: <CAMufup7EbK05JeNsHsCv-XJY-33bXLZO_3bLGQNvK3mT_QOJyg@mail.gmail.com>
Date: Tue, 26 Mar 2019 22:41:29 +0100
From: Juan Pablo Santos Rodríguez <juanpablo.santos@...il.com>
To: oss-security@...ts.openwall.com
Subject: [CVE-2019-0224] Apache JSPWiki Cross-site scripting vulnerability
Content-Type: text/plain; charset=utf-8

[CVEID]:CVE-2019-0224
[PRODUCT]:Apache JSPWiki
[VERSION]:Apache JSPWiki 2.9.0 to 2.11.0.M2
[PROBLEMTYPE]:Cross-site scripting vulnerability
[REFERENCES]:https://jspwiki-wiki.apache.org/Wiki.jsp?page=CVE-2019-0224
[DESCRIPTION]: A carefully crafted URL could execute javascript on another
user's session. No information could be saved on the server or jspwiki
database, nor would an attacker be able to execute js on someone else's
browser; only on it's own browser.

