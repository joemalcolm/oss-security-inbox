X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1583" "Monday" "6" "July" "2015" "19:17:03" "+0100" "John Haxby" "john.haxby@oracle.com" "<30F8C3A4-91C8-4043-B236-359D2D0E4A8B@oracle.com>" "32" "Re: [oss-security] How serious is undefined behavior?" nil nil nil "7" "2015070618:17:03" "[oss-security] How serious is undefined behavior?" (number mark "        john.haxby@o Jul  6   32/1583  " thread-indent "\"Re: [oss-security] How serious is undefined behavior?\"\n") "<20150706181734.2b0288ca@pc1>" ("<20150706181734.2b0288ca@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30189 invoked by uid 550); 6 Jul 2015 18:17:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30168 invoked from network); 6 Jul 2015 18:17:18 -0000
Content-Type: text/plain; charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
In-Reply-To: <20150706181734.2b0288ca@pc1>
Content-Transfer-Encoding: quoted-printable
Message-Id: <30F8C3A4-91C8-4043-B236-359D2D0E4A8B@oracle.com>
References: <20150706181734.2b0288ca@pc1>
X-Mailer: Apple Mail (2.2098)
X-Source-IP: userv0021.oracle.com [156.151.31.71]
Date: Mon, 6 Jul 2015 19:17:03 +0100
From: John Haxby <john.haxby@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] How serious is undefined behavior?
To: oss-security@lists.openwall.com


> On 6 Jul 2015, at 17:17, Hanno B=C3=B6ck <hanno@hboeck.de> wrote:
>=20
> However I wonder how practically relevant these issues are and also
> how much focus should be given to them. Do people have good examples
> where e.g. an invalid shift operation caused a real, severe security
> issue?
> Would people think it's a wise idea to put a lot of effort into testing
> applications with ubsan enabled and reporting all the bugs that pop up?
> (that would mean a lot of bugreports) Or would this be perceived as an
> annoying "that's a theoretical C language nitpick issue and not a real
> bug".

I don't have the example any more, but some years ago(*) we did have a prob=
lem because undefined behaviour on one compiler showed up differently on an=
other.  In our case it was a hard to track down bug because it wasn't parti=
cularly obvious that it was undefined.   We were similarly bitten when a ne=
w compiler changed the implementation of something else undefined.

And of course, the classic foo(a++, bar(a++)) crops up in one form or anoth=
er on a regular basis,  It may have been that that changed from one release=
 to another: one compiler evaluated all the arguments right to left, anothe=
r one evaluated the first few left to right (to go into registers) and the =
later ones right to left.  I forget, sorry.

Of course, most of the time these just result in peculiar bugs rather than =
exploitable security issues, but it's not too hard to come up with plausibl=
e cases that would lead to a failing security check.

jch

(*) OpenMail, if anyone wonders or cares.=
