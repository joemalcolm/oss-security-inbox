Received: (qmail 17908 invoked by uid 550); 29 Dec 2022 17:46:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15834 invoked from network); 29 Dec 2022 17:45:00 -0000
Date: Thu, 29 Dec 2022 18:44:47 +0100
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20221229174447.p9Q13%steffen@sdaoden.eu>
In-Reply-To: <b31213da-5ea2-d1f8-dcb2-2917b787ce89@oracle.com>
References: <Y6SJDbKBk471KE4k@p183> <Y6TUJcr/IHrsTE0W@codewreck.org>
 <1a1963aa1036ba07@orthanc.ca> <20221228152458.6xyksrxunukjrtzx@mutt-hbsd>
 <Y6xzIR9P+a6uaaEx@itl-email>
 <b31213da-5ea2-d1f8-dcb2-2917b787ce89@oracle.com>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-383-g2889cb06b9
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] [patch] proc.5: tell how to parse
 /proc/*/stat correctly

Alan Coopersmith wrote in
 <b31213da-5ea2-d1f8-dcb2-2917b787ce89@oracle.com>:
 |On 12/28/22 08:47, Demi Marie Obenour wrote:
 |> A binary format would be even better.  No risk of ambiguity.
 |
 |That is how the Solaris (and now illumos) /proc has always worked - fewer
 |parsing problems, but you need to use tools to handle the contents, not
 |just cat/less/etc.
 |
 |https://docs.oracle.com/cd/E88353_01/html/E37852/proc-5.html

I personally find it highly beneficial to grasp informations meant
for human consumption with UNIX text tools.
..And still blinded by Pike's "just make it a string".

If you have an FS="\0" compatible awk(1) (not nawk, not busybox
awk (yet)) it is very easy to parse such text files.

P.S.: CBOR .. if you want JSON.  (The NetBSD folks got that long
before it was hip, where i saw it first.)

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
