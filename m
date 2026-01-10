Received: (qmail 6109 invoked by uid 550); 10 Jan 2026 21:18:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16308 invoked from network); 10 Jan 2026 18:54:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hexsys.org;
	s=protonmail; t=1768071283; x=1768330483;
	bh=3oq8cc2Ld3SYg/qwwWDM/HFE8cPPjepajkry9CC+Htc=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=qO1XaCG9DCK/xXOnGbp3q7Dn9dXCIitXf59MLvZlud5H59S5CJeNYJ6qNMYc9EbYe
	 fEKn1Db2ADWTwa/9kK3X46XT8t3iFgMa6d2FSFaElg+BpIgo7OsVl9X72pk6ytzCCg
	 TLbNns9Ko8RupcUwL91whuboITnHubDdK+5FCbQXYIM+VQ9rKCO/+ph+KMTqwuxrui
	 xHy40WSxhiSdnykoie2rZ4V9CQMnisbcH/SQFBHzViNC3YJalBpOAFNZxho+sUOJxl
	 KgLdImHFggY3ooo8kIi0JRpKj6guqEq81SpSCse4i0GkpAwfzP1UZ8gGZm83cE30Oi
	 MY48bTudbhTtg==
Date: Sat, 10 Jan 2026 18:54:39 +0000
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
From: Ali Polatel <alip@hexsys.org>
Message-ID: <csi5RfKTpfkBN0IaWsbQqs8EuuE_i4k1bUK1bdqGu4HkTKazVuo1iSGK_d5--blDgnaI_r2AMnndDYFAbtrdJaethNnJF8DQgNqF3q5Ydyk=@hexsys.org>
Feedback-ID: 105281019:user:proton
X-Pm-Message-ID: cd9cfbbdeea5a229fa4114e8842d7767c9172a88
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha512; boundary="------46f362d48169abaeb2be541c2968dc4074b1d3a704a00907f9f2554a191a9239"; charset=utf-8
Subject: [oss-security] The Curious Case of Stack Pivot Detection

--------46f362d48169abaeb2be541c2968dc4074b1d3a704a00907f9f2554a191a9239
Content-Type: multipart/mixed;boundary=---------------------d59efc45a7e82d24c78feec26bd67866

-----------------------d59efc45a7e82d24c78feec26bd67866
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

Dear kind people,

I hope you're fine and healthy. The reason I am writing this mail is to sha=
re
a few of my experiments and research I've done to come up with a reasonable
stack pivot detection for the Syd kernel. TL;DR I have failed and I have le=
arned
a lot. I have also learned everyone is doing various levels of wrong and I =
have
yet to come up with a "correct" solution. Are we doing it wrong or are we a=
ttacking
the wrong link? Please discuss.

The obvious idea is to check if stack pointer points to a valid stack regio=
n at
various boundaries. This solution is so obvious you'd imagine even a 4-year=
-old
can come up with it, yet G**gle has a patent[1] on it. Curious (mis)use of =
software
patents where an entity patents the equation "foo < bar < baz". What do we =
do if
they go one step ahead and patent "<"? Use emoji for maths? Move to Mars?

Anyhow, this is not what I am here to discuss. OpenBSD does something simil=
ar
with MAP_STACK[2] and Windows 8 had a similar mitigation until someone demo=
nstrated
a trivial bypass[3]. Finding out this bypass was an important step forward =
for me so
I went ahead and rewrote it[4] for UNIX and verified it bypasses what Syd h=
ad
at the time and what OpenBSD has. This bypass is a simple improvement of wh=
at
OpenBSD regression tests have and involves a quick jumpback to the stack. F=
unnily
if you remove the printf in the intermediate stage of the bypass OpenBSD's =
SP check
at write(2) boundary will catch and kill you so keep it quiet as you bypass=
 this
delicate mitigation ;).

Another roadblock for the SP points to a stack region detection is in users=
pace
there's no clear definition of "stack". The stack of the main thread is han=
dled by
the kernel where everything is fine but thread stacks are typically your la=
nguage
runtime's business. As an example if you check the stack of a Go thread on =
Linux,
you'll most probably find the VMA is named " Go: heap". It may be the stack=
 for now,
but maybe it was not a bit ago or won't be a bit later. Asking Go devs to u=
se
MAP_STACK would probably be rejected because it breaks the whole model of h=
ow they
do multithreading...

I digged a bit deeper and found what I thought was an improvement at the ti=
me.
Why not check the frame pointer instead of the stack pointer? Why not both?
It was fairly easy to patch Syd for this so I got to testing. This way of d=
etection
is imho more reliable and less prone to bypassing however there's a big iss=
ue.
Both gcc and clang imply -fomit-frame-pointer with -O2 so you'll have a har=
d time
finding a binary in the wild these days that has frame pointers. If I were =
OpenBSD,
I'd compile the world with -fno-omit-frame-pointer and move on with my life=
 and I'd
humbly and kindly recommend them to do that in short of any better ideas.

Now, my tests showed me another problem. Stack pivotting is not as unusual =
and as
malicious as you think. In fact, various programs make use of it in arguabl=
y weird
ways to achieve their goals. One example is Firefox's crashhelper, bash, ga=
wk, ceph,
... I can easily come up with dozens more if I enable this mitigation and b=
uild Exherbo
packages under Syd as we proudly enable package testing by default. So even=
 if you'd come
up with a reliable, efficient way to detect stack pivot, you're gonna have =
loads of false
positives to manage. Good luck.

Finally, after I ended my experiments and reverted[5] Syd's stack pivot det=
ection. I
came across LKRG's README[6] incidentally which mentions validating the sta=
ck pointer
with "pCFI", their version of coarse-grained CFI, which also seems to check=
 the
frame pointer[7] against the stack. I'd be curious to know whether there's =
any added
mechanism to detect stack pivot when the binary is compiled without frame p=
ointers when
the frame pointer is reused by compiler for different purposes.

Best regards,
Ali Polatel

[1]: https://patents.google.com/patent/US10853480B2/en
[2]: https://isopenbsdsecu.re/mitigations/map_stack/
[3]: https://archive.ph/xS2Fl#selection-13.0-243.52
[4]: https://gitlab.exherbo.org/sydbox/sydbox/-/blob/main/dev/stackpivot-ju=
mpback-bypass.c
[5]: https://gitlab.exherbo.org/sydbox/sydbox/-/commit/f03db6c677ddf5dbf87a=
deb6bd5efb0677869104
[6]: https://github.com/lkrg-org/lkrg/blob/b8b1418a6c1e7229cdf3dfa020fcc494=
5e108d83/README#L505
[7]: https://github.com/lkrg-org/lkrg/blob/b8b1418a6c1e7229cdf3dfa020fcc494=
5e108d83/src/modules/exploit_detection/p_exploit_detection.c#L1585-L1591=

-----------------------d59efc45a7e82d24c78feec26bd67866
Content-Type: application/pgp-keys; filename="publickey - alip@hexsys.org - 0xC22DA9DE.asc"; name="publickey - alip@hexsys.org - 0xC22DA9DE.asc"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="publickey - alip@hexsys.org - 0xC22DA9DE.asc"; name="publickey - alip@hexsys.org - 0xC22DA9DE.asc"

LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tCgp4ak1FWmdRSmRSWUpLd1lCQkFI
YVJ3OEJBUWRBbjlaVnJMbi9tclpseThqTE9qVklwTmRWSXhTSVZ4WmUKL2ZDeDZpcTNPM1hOSVdG
c2FYQkFhR1Y0YzNsekxtOXlaeUE4WVd4cGNFQm9aWGh6ZVhNdWIzSm5Qc0tNCkJCQVdDZ0ErQllK
bUJBbDFCQXNKQndnSmtCY2phUTFHWTNTNkF4VUlDZ1FXQUFJQkFoa0JBcHNEQWg0QgpGaUVFd2ky
cDNrbUo2K2VhOUErdEZ5TnBEVVpqZExvQUFFaDlBUUNVRlB2YytPL1FzYzdpVDF0STcvMTAKakJW
aklPa2xyL01DU2lzZ2w0SzRqQUQvZkRaejVuVStqbzBmcjh3QXNLdFU0M1UrVWd5alVuNHhuczVQ
CnVzcFViZy9PT0FSbUJBbDFFZ29yQmdFRUFaZFZBUVVCQVFkQXFrait2ejdsbjQyNmhmQS9wSWZz
elJKbQpWWHpLc1VJOWJQd3dqZEdQUlNRREFRZ0h3bmdFR0JZS0FDb0ZnbVlFQ1hVSmtCY2phUTFH
WTNTNkFwc00KRmlFRXdpMnAza21KNitlYTlBK3RGeU5wRFVaamRMb0FBTHNMQVAwWUVEUkw1OVdi
UndSTFdpN0RlRjY2ClRCSzZtdmZGeG5maG9rM3JKSU1lWXdFQTZGNi85c1J6SzJqbExCRk9kbHlu
ZGdZbEpxUFVpZk1CZGU5ego2QkZFY1FnPQo9NFhXSgotLS0tLUVORCBQR1AgUFVCTElDIEtFWSBC
TE9DSy0tLS0tCg==

-----------------------d59efc45a7e82d24c78feec26bd67866--

--------46f362d48169abaeb2be541c2968dc4074b1d3a704a00907f9f2554a191a9239
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wrsEARYKAG0FgmlioFYJEBcjaQ1GY3S6RRQAAAAAABwAIHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmfOm/MpVlYHS2EVo9FdtU64NdzXItXrDFzciKsJ
xFp4nRYhBMItqd5JievnmvQPrRcjaQ1GY3S6AACQ5gD7B2ORyJgs19mCmJox
mED+O1ZWVW5N4zoPx24K6SDqsoYA/2fRupxV8pYHvhxNTOYibdRcGPj8clXh
ajjcSz84AOoP
=7d+r
-----END PGP SIGNATURE-----


--------46f362d48169abaeb2be541c2968dc4074b1d3a704a00907f9f2554a191a9239--

