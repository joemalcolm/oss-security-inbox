Received: (qmail 32169 invoked by uid 550); 4 Feb 2023 12:27:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3982 invoked from network); 3 Feb 2023 23:19:47 -0000
Date: Sat, 04 Feb 2023 00:19:14 +0100
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: Helmut Grohne <helmut@subdivi.de>
Cc: oss-security@lists.openwall.com
Message-ID: <20230203231914.Vs2o_%steffen@sdaoden.eu>
In-Reply-To: <Y91yP6mYIZ+UXmgf@alf.mars>
References: <Y91yP6mYIZ+UXmgf@alf.mars>
Mail-Followup-To: Helmut Grohne <helmut@subdivi.de>,
 oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-403-gdc9ff6b368
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] sox: patches for old vulnerabilities

Hello.

Helmut Grohne wrote in
 <Y91yP6mYIZ+UXmgf@alf.mars>:
 |I am working on fixing known vulnerabilities in sox and since upstream
 |seems mostly dead (no commits in more than a year, no replies to bug
 |reports), I am posting my results here. My work on sox is compensated by
 |Freexian SARL.

Thank you for this work on sox!
But i was only wondering a bit, have you checked against the
[master] branch?  For example

  02-fix-resource-leak-hcom.patch
  03-fix-regression-in-CVE-2017-11358.patch
  04-fix-hcom-big-endian.patch#
  06-CVE-2021-33844.patch
and
  07-CVE-2021-3643.patch

do not apply against it, and he introduced functions like
dictvalid() to do things you seem to unroll differently?

The rest just apply fine, and 02- was needed here, 03- seemed an
unrolled dup, 04- in parts (stdint via sox.h, but overflow, sure),
it is too late to check the rest, 'will do tomorrow.
(I an maintaining an official contrib now private sox port for
CRUX Linux based upon 42b3557e13e0fe0 as of 20211029.)

Ciao!

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
