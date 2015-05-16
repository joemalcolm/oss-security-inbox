X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4893" "Saturday" "16" "May" "2015" "12:58:12" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20150516125812.22c2523d@pc1>" "127" "[oss-security] about this openssh heap overflow" nil nil nil "5" "2015051610:58:12" "[oss-security] about this openssh heap overflow" (number mark "        hanno@hboeck May 16  127/4893  " thread-indent "\"[oss-security] about this openssh heap overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23606 invoked by uid 550); 16 May 2015 10:57:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23568 invoked from network); 16 May 2015 10:57:47 -0000
Message-ID: <20150516125812.22c2523d@pc1>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.27; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-32552-1431773855-0001-2"
Date: Sat, 16 May 2015 12:58:12 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] about this openssh heap overflow
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-32552-1431773855-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

Quick background story: I started a while ago to develop a solution to
use american fuzzy lop with networking input. I did so by creating a
library to be preloaded with LD_PRELOAD that would intercept some
functions to simulate a network connection and pass data from a file.

This is trickier than it sounds and doesn't really work yet, but I
managed to use this to fuzz the ssh client handshake. In combination
with address sanitizer this turned up a read heap overflow. I reported
this to openssh's damien miller. He considered it not security relevant
and committed the fix to the public repo:
https://anongit.mindrot.org/openssh.git/commit/?id=3D77199d6ec8986d470487e6=
6f8ea8f4cf43d2e20c

With that it was public, but nobody noticed. Until today someone
proposed a very similar approach to network fuzzing on the afl mailing
list and I answered that I was working on this and briefly mentioned
the ssh overflow:
https://groups.google.com/d/msg/afl-users/gahT13i4zG4/I2jdwpyG3W4J

Now this is making rounds on twitter, so I thought I'd publish all
details. I just pasted below what I reported to openssh.

As this is only a read overflow it likely is not exploitable in any
way, but itsec history has shown that often enough when people think
something is not exploitable they were wrong.

If this makes you nervous apply the patch linked above (which will just
remove the length argument from the function) or this shorter patch
which will just fix the wrong function cal:

--- openssh-6.8p1/compat.c	2015-03-17 06:49:20.000000000 +0100
+++ openssh-6.8p1-fix/compat.c	2015-05-03 17:51:32.251293388 +0200
@@ -229,7 +229,7 @@
 	buffer_init(&b);
 	tmp =3D orig_prop =3D xstrdup(proposal);
 	while ((cp =3D strsep(&tmp, ",")) !=3D NULL) {
-		if (match_pattern_list(cp, filter, strlen(cp), 0) !=3D 1) {
+		if (match_pattern_list(cp, filter, strlen(filter), 0) !=3D 1) {
 			if (buffer_len(&b) > 0)
 				buffer_append(&b, ",", 1);
 			buffer_append(&b, cp, strlen(cp));



-------------------------------

I think I found a bug in ssh, maybe security relevant.

It's surprisingly easy to reproduce:
* Compile latest openssh 6.8p1 with address sanitizer (./configure
  CFLAGS=3D"-fsanitize=3Daddress" LDFLAGS=3D"-fsanitize=3Daddress"; make)
* Run this netcat-command:
echo "SSH-2.0-OpenSSH_6.5"|nc -l -p 22
* ssh to it: ./ssh 127.0.0.1

I'm not entirely sure when and why this is triggered, doesn't work
against a real ssh server (I assume something with the version number
and not answering after the inital banner to the client)

However, here is why it causes an invalid memory access:
In combat.c there is this call for the function match_pattern_list in
line 232:
		if (match_pattern_list(cp, filter, strlen(cp), 0) !=3D 1)
{

The function definition (match.c, line 120):
match_pattern_list(const char *string, const char *pattern, u_int len,

Looking at the function (match.c, line 141/142) we have this:
		for (subi =3D 0;
		    i < len && subi < sizeof(sub) - 1 && pattern[i] !=3D
',';

		    subi++, i++)

It will iterate over pattern with length len. pattern is the second
parameter passed. But in the function call len is given as the length
of the first parameter. So they don't match and this will cause a
buffer overflow if cp is longer than filter.

So the function call really should be:
		if (match_pattern_list(cp, filter, strlen(filter), 0) !=3D
1) {

Right? (Not 100% sure if I got everything what's happening here...)
See attached patch. Will also attach an address sanitizer stack trace
(for reasons unknown to me this stack trace only appears if I compile
openssh with afl + asan, not with asan alone)


--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-32552-1431773855-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJVVyLEAAoJEKWIAHK7tR5CbiQQAJwuQd2xpFyEkrsLGBa9+bgP
Y5gwUGsvZ4zZrXBq58vi2Vn+ZsSpfCXtaJbbgHvzaJBVbAbBvPDvpRu6/Nqu4DS2
l8v6ufaqBzMI0abxrVMOhA8y8y8KI1CMhfjEd5J7uxO/uj1nA5M47Ol5qaBH1mbe
I0YuhMJQg7G8n7RiWy0YurKXqkTSZsL5v6+HbIpW4X1r63otbnhxjzsAFnIDXgAb
UJtKDF5/ak1CBH0BtPDWWGRztDg4gCrwHKEGZAeL9WShKWV5JkxaBwb09LREk9uC
sDMjBs1cMi3dlEsbOwJZ6Ej/eSnQ+1BZ49S5cTc3IwfOG3Gef8cJctOMblOhlEVI
yFSkNFSAhXl7q3wosswtwnIFQoXXYsalzd655JBXLePDea64XSUi1v3Xu0oKgg9m
zeh4Ez7L5UliQBlCKsnKGmJh24Wtqngp8K13kU9NNWRHKjAPCm618jjsLaeJcZxl
PnolYXZlZVRv3fhXdb854b168qQFoccaLJMaQ4Ht76KvvSubZp49ZGYmyApIg9QQ
QAmdx30jnRiKNq4F/x+dTV5DD2XRBvcpxQ9XVNDP4Ja14tw29L7C2GZwVIhe7rDv
mlP/FTTK6pqoUBB+iUaf2jI98eHzhFuvb1Y0zfE4kdxwe7pewsz5l80HKqL5jlbd
dmvOnSydIXi2CEN5A947
=RynS
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-32552-1431773855-0001-2--
