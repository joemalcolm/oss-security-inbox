X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/09/01/3
Message-ID: <87od381eb8.fsf@mid.deneb.enyo.de>
Date: Mon, 01 Sep 2008 10:05:31 +0200
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: Re: GNU ed heap overflow
Content-Type: text/plain; charset=utf-8

* Tavis Ormandy:

> If you can specify an arbitrary filename, can't you execute commands
> anyway?
>
> $ ed '!ls>&2'
> bin   dev  home  lost+found  misc  net  proc  sbin     srv  tmp  var
> boot  etc  lib   media       mnt   opt  root  selinux  sys  usr
> 0

Interesting.  But this type of command execution is not possible with
"red", which suffers from the same overflow.
