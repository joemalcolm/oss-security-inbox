X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/09/26/26
Message-ID: <CAPu-DQoUvnUkXQ0F=kc4Mpa8=+3K_3X1dMf8v=+=MBPAGo0DoA@mail.gmail.com>
Date: Fri, 26 Sep 2014 18:06:45 +0100
From: Gennady Kupava <gennady.kupava@...il.com>
To: oss-security@...ts.openwall.com
Subject: Fwd: CVE-2014-6271: remote code execution through bash
Content-Type: text/plain; charset=utf-8

The way how bash exports functions is really scary:

1. You can set both variable and export function with same name.
$ f () { a; }
$ export -f f
$ export f=3
$ echo $f
3
$ ksh
$ cat /proc/$$/environ|xargs -0 -n1|grep -w f
f=3
f=() {  a
$ echo $f
3

SUS says storing two environment varianles with same name is undefined
behavour:
http://pubs.opengroup.org/onlinepubs/7908799/xbd/envvar.html

2. Bash partially hides environment variable holding function:
$ f () { a; }
$ export -f f
$ echo $f
[ nothing ]

Both things above look like good grounds for hackers.

Gennady

