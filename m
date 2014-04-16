X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/04/16/3
Message-ID: <CAH72vigsw+FgsAN8dds25=RaXmOp2hzTPGDG8g9+XS8bNJdNJw@mail.gmail.com>
Date: Wed, 16 Apr 2014 13:36:35 +0200
From: Źmicier Januszkiewicz <gauri@....by>
To: oss-security@...ts.openwall.com
Subject: libmms heap-based buffer overflow fix
Content-Type: text/plain; charset=utf-8

Hello list,

It seems libmms has fixed a buffer overflow in a recent 0.6.4 version
with the following commit.

http://sourceforge.net/p/libmms/code/ci/03bcfccc22919c72742b7338d02859962861e0e8

This may be triggered via an overly long line of a MMSH (MMS over
HTTP) server response, effectively overflowing the buffer which has a
static size (defined as BUF_SIZE, didn't check the actual numeric
value).

Please assign a CVE name for this, if there is none.

Kind regards,
Z.
