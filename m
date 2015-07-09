X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1870" "Thursday" "9" "July" "2015" "12:25:49" "+0200" "Jann Horn" "jann@thejh.net" "<20150709102450.GA3412@laptop.thejh.net>" "42" "Re: [oss-security] TR : CVE request for dash 0.5.7-3  x86-64 local buffer overflow" nil nil nil "7" "2015070910:25:49" "[oss-security] TR : CVE request for dash 0.5.7-3 x86-64 local buffer overflow" (number mark "        jann@thejh.n Jul  9   42/1870  " thread-indent "\"Re: [oss-security] TR : CVE request for dash 0.5.7-3  x86-64 local buffer overflow\"\n") "<F19FF46A5F9A584F817BC291F2EE2EBB519D23@server.exchange.local>" ("<F19FF46A5F9A584F817BC291F2EE2EBB5199AD@server.exchange.local>" "<F19FF46A5F9A584F817BC291F2EE2EBB519D23@server.exchange.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28451 invoked by uid 550); 9 Jul 2015 10:26:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28433 invoked from network); 9 Jul 2015 10:26:08 -0000
Message-ID: <20150709102450.GA3412@laptop.thejh.net>
References: <F19FF46A5F9A584F817BC291F2EE2EBB5199AD@server.exchange.local>
 <F19FF46A5F9A584F817BC291F2EE2EBB519D23@server.exchange.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="eAbsdosE1cNLO4uF"
Content-Disposition: inline
In-Reply-To: <F19FF46A5F9A584F817BC291F2EE2EBB519D23@server.exchange.local>
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Thu, 9 Jul 2015 12:25:49 +0200
From: Jann Horn <jann@thejh.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] TR : CVE request for dash 0.5.7-3  x86-64 local
 buffer overflow
To: oss-security@lists.openwall.com

--eAbsdosE1cNLO4uF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jul 06, 2015 at 12:58:07PM +0000, jean-marie.bourbon@armaturetech.com wrote:
> ==9241== Stack overflow in thread 1: can't grow stack to 0x7fe801ef8
> ==9241==
> ==9241== Process terminating with default action of signal 11 (SIGSEGV): dumping core
> [...]
> It appear that the binary has only the NoeXecutable protection (and ASLR) with an interesting buffer overflow... that's why I'd like to
> know how to make my small contribution on this subject.

That looks like a stack overflow to me, not a buffer overflow on the stack. (So in
X86 terms, the problem isn't that a pointer to the right of a buffer on a stack is
used, the problem is that the stack pointer was decremented past the *left* end of
the stack. To the left end of the stack of the main thread is a really big area of
unallocated memory, so you get a segfault.)

Are you sure this is a buffer overflow?

--eAbsdosE1cNLO4uF
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJVnkwtAAoJED4KNFJOeCOoMngQANmjrOHJn7Tep0VDjTxQA8kv
evybh7KyoBRTcteB+22p+Reccm7xVGoFKrt+B6DFnRcaTJPamx792WNJnY7r0te/
5xE7rSBiR7OsiuNJHH1/XzDIa/3Cj6vSYmEnW4xnYH7ClVK6iU1mWh1HgqG24197
wFHahUae+lb5BWo3GaGfR8INXB36UvQ6i3D5Lfuk4ibrenTxKqoJ2LRk0j4KCk8u
VQ1Vx8AG645yhDXIUx2u7oPHex4zamvLyK6uoDmV/vnv1e3DerrShcldU3lr7hCY
+WpAXHiA8fAAYKevmSQLpMsb+F11SReqCuTKY8UZ7feohIzRvHtKbvw8ozzJs1l5
FvEu7W23CBVviDqi1puGOU//AMChSQ2BgUeN8ViIB9c8KGB3fJAZpTPNEwz/iLWQ
U+7uSZc70J1Qx2r6ThAWFR6qYoghtHPD8HGFWbndibLtjQLQmAeLHHPibwUy1T3H
O+zCc+0hunfwiZtMJb7kOSrDsWLGWsQLi9TirZJSVhRNoT907BF9bIXjSByHlgp7
9eGV9PZtPmus86j4uPoDzdwKQEZT7XJunY/FTX+L5JGZF77sO51PFegQ7ag5ugM0
bB2HOz2QiIUidPmxX0Pj077GK2KwRBBZ/vnsLlsYfpaSWiWbOSvcIWu04DYvg3Oy
tMwLin4QyGTQ5ah0nMXo
=Y0KX
-----END PGP SIGNATURE-----

--eAbsdosE1cNLO4uF--
