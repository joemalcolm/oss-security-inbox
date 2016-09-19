X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/09/19/13
Message-ID: <CANO=Ty2A-uvus0c_cMh3WR3VKP9-7L4oHtQ2M-P1EJ=dJwFaiQ@mail.gmail.com>
Date: Mon, 19 Sep 2016 14:39:11 -0600
From: Kurt Seifried <kseifried@...hat.com>
To: oss-security <oss-security@...ts.openwall.com>
Subject: Possible CVE for TLS protocol issue
Content-Type: text/plain; charset=utf-8

This was pointed out to me by mjc@:

https://kcitls.org/

TL;DR: if you can trick someone to install a client certificate you can
then spoof any future web site. Certainly not what we want from the people
issuing client certificates. It sounds like this is a protocol level
vulnerability affecting closed and Open Source vendors potentially, and it
is public so posting it here.

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@...hat.com

