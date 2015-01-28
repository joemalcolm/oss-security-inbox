X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/01/28/1
Message-ID: <20150128000036.GB21997@localhost.localdomain>
Date: Tue, 27 Jan 2015 16:00:36 -0800
From: Qualys Security Advisory <qsa@...lys.com>
To: endrazine <endrazine@...il.com>
Cc: oss-security@...ts.openwall.com
Subject: Re: GHOST gethostbyname() heap overflow in glibc (CVE-2015-0235)
Content-Type: text/plain; charset=utf-8

On Tue, Jan 27, 2015 at 02:03:10PM -0800, endrazine wrote:
> There is an obvious stack overflow in Qualys' GHOST.c poc : the name buffer
> is 10 bytes long and 900+ bytes of data are copied to it. This is

???

-- 
QSA
