X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/09/29/2
Message-ID: <CAEFBov0z-zr4q=_srb3q7gq1-f1P6GBf78p8GYUj0DvsXVKLTw@mail.gmail.com>
Date: Tue, 29 Sep 2020 08:19:19 +0800
From: Fstark <f734222792@...il.com>
To: oss-security@...ts.openwall.com
Subject: libass ass_outline.c signed integer overflow
Content-Type: text/plain; charset=utf-8

In `ass_outline_construct`'s call to `outline_stroke` a signed integer
overflow happens *(undefined behaviour)*. On my machine signed overflow
happens to wrap around to a negative value, thus failing the assert.
https://github.com/libass/libass/issues/431

https://github.com/libass/libass/pull/432

