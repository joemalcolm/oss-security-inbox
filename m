X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5511" "Saturday" "16" "May" "2015" "21:10:07" "+0000" "mancha" "mancha1@zoho.com" "<20150516211007.GA14372@zoho.com>" "132" "Re: [oss-security] about this openssh heap overflow" nil nil nil "5" "2015051621:10:07" "[oss-security] about this openssh heap overflow" (number mark "        mancha1@zoho May 16  132/5511  " thread-indent "\"Re: [oss-security] about this openssh heap overflow\"\n") "<20150516125812.22c2523d@pc1>" ("<20150516125812.22c2523d@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1840 invoked by uid 550); 16 May 2015 21:10:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1819 invoked from network); 16 May 2015 21:10:33 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; 
  s=zapps768; d=zoho.com; 
  h=date:from:to:subject:message-id:references:mime-version:content-type:in-reply-to; 
  b=KVf8FGFBtRH5CYHn0ZFWaqfMCU49M+AduYPugQyN4WjvkEyyNsVynrvghreDpC79mp17q1OeE2/4
    BuNQdufTBGiBpLNGl8xHfNE+FvIKkglnZslG62oTW+zYcrZRI7zc  
Message-ID: <20150516211007.GA14372@zoho.com>
References: <20150516125812.22c2523d@pc1>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="FL5UXtIhxfXey3p5"
Content-Disposition: inline
In-Reply-To: <20150516125812.22c2523d@pc1>
X-PGP-Key: http://hkps.pool.sks-keyservers.net/pks/lookup?op=vindex&search=0x25168eb24f0b22ac
X-PGP-FP: 56B7 100E F4D5 811C 8FEF  ADD1 2516 8EB2 4F0B 22AC
X-Zoho-Virus-Status: 1
Date: Sat, 16 May 2015 21:10:07 +0000
From: mancha <mancha1@zoho.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] about this openssh heap overflow
To: oss-security@lists.openwall.com

--FL5UXtIhxfXey3p5
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

So, we're dealing with an OOB *read* triggered by a crafted config. By
the way, if an attacker has write privileges to your config you have
bigger fish to fry.

Notices are already going up describing this as heap buffer overflow
with "high" risk. [1] Serves as a good reminder that context and
phrasing are critically important when publicly discussing bugs with
possible security impact in order to avoid tsunamis of
the-sky-is-falling posts & articles.

--mancha

[1] https://cxsecurity.com/issue/WLB-2015050105


On Sat, May 16, 2015 at 12:58:12PM +0200, Hanno B=C3=B6ck wrote:
> Hi,
>=20
> Quick background story: I started a while ago to develop a solution to
> use american fuzzy lop with networking input. I did so by creating a
> library to be preloaded with LD_PRELOAD that would intercept some
> functions to simulate a network connection and pass data from a file.
>=20
> This is trickier than it sounds and doesn't really work yet, but I
> managed to use this to fuzz the ssh client handshake. In combination
> with address sanitizer this turned up a read heap overflow. I reported
> this to openssh's damien miller. He considered it not security
> relevant and committed the fix to the public repo:
> https://anongit.mindrot.org/openssh.git/commit/?id=3D77199d6ec8986d470487=
e66f8ea8f4cf43d2e20c
>=20
> With that it was public, but nobody noticed. Until today someone
> proposed a very similar approach to network fuzzing on the afl mailing
> list and I answered that I was working on this and briefly mentioned
> the ssh overflow:
> https://groups.google.com/d/msg/afl-users/gahT13i4zG4/I2jdwpyG3W4J
>=20
> Now this is making rounds on twitter, so I thought I'd publish all
> details. I just pasted below what I reported to openssh.
>=20
> As this is only a read overflow it likely is not exploitable in any
> way, but itsec history has shown that often enough when people think
> something is not exploitable they were wrong.
>=20
> If this makes you nervous apply the patch linked above (which will
> just remove the length argument from the function) or this shorter
> patch which will just fix the wrong function cal:
>=20
> --- openssh-6.8p1/compat.c	2015-03-17 06:49:20.000000000 +0100 +++
> openssh-6.8p1-fix/compat.c	2015-05-03 17:51:32.251293388 +0200 @@
> -229,7 +229,7 @@ buffer_init(&b); tmp =3D orig_prop =3D xstrdup(proposal);
> while ((cp =3D strsep(&tmp, ",")) !=3D NULL) { -		if
> (match_pattern_list(cp, filter, strlen(cp), 0) !=3D 1) { +
> if (match_pattern_list(cp, filter, strlen(filter), 0) !=3D 1) { if
> (buffer_len(&b) > 0) buffer_append(&b, ",", 1); buffer_append(&b, cp,
> strlen(cp));
>=20
>=20
>=20
> -------------------------------
>=20
> I think I found a bug in ssh, maybe security relevant.
>=20
> It's surprisingly easy to reproduce: * Compile latest openssh 6.8p1
> with address sanitizer (./configure CFLAGS=3D"-fsanitize=3Daddress"
> LDFLAGS=3D"-fsanitize=3Daddress"; make) * Run this netcat-command: echo
> "SSH-2.0-OpenSSH_6.5"|nc -l -p 22 * ssh to it: ./ssh 127.0.0.1
>=20
> I'm not entirely sure when and why this is triggered, doesn't work
> against a real ssh server (I assume something with the version number
> and not answering after the inital banner to the client)
>=20
> However, here is why it causes an invalid memory access: In combat.c
> there is this call for the function match_pattern_list in line 232: if
> (match_pattern_list(cp, filter, strlen(cp), 0) !=3D 1) {
>=20
> The function definition (match.c, line 120): match_pattern_list(const
> char *string, const char *pattern, u_int len,
>=20
> Looking at the function (match.c, line 141/142) we have this: for
> (subi =3D 0; i < len && subi < sizeof(sub) - 1 && pattern[i] !=3D ',';
>=20
> 		    subi++, i++)
>=20
> It will iterate over pattern with length len. pattern is the second
> parameter passed. But in the function call len is given as the length
> of the first parameter. So they don't match and this will cause a
> buffer overflow if cp is longer than filter.
>=20
> So the function call really should be: if (match_pattern_list(cp,
> filter, strlen(filter), 0) !=3D 1) {
>=20
> Right? (Not 100% sure if I got everything what's happening here...)
> See attached patch. Will also attach an address sanitizer stack trace
> (for reasons unknown to me this stack trace only appears if I compile
> openssh with afl + asan, not with asan alone)
>=20
>=20
> -- Hanno B=C3=B6ck http://hboeck.de/
>=20
> mail/jabber: hanno@hboeck.de GPG: BBB51E42



--FL5UXtIhxfXey3p5
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVV7IvAAoJEB4VYy8JqhaDBgQP/3PQLF7jO2P8q5T56x6sJt6T
LQc4VDgIkiW7bzP9DVOKpCbp/87ZbINEzXEWWStBLRHu8DJ89+fHXFGLwbtrVjBE
K2znx+9fGW/z/jxhBqMDRPyxlsVgyzUZawJ6rz8od8n8A/QoAshTx22t0mhdXt0O
ei/5Yk/g/trEx6/DA6m47YJRf6cQxq+uEMnesjFvnJu/Wmn0E+6pyDcZFdL+nyLq
eG33F/ua9pCVcSdJEskerAKSA8oVKRgGM0ucAuR/gvYXSV4SokA1OfpEK1CcvrAy
28v7UebN3OlK/mT3l0otv6g/CwcQHjgP+81Nl21wTrm9H9KDOwCRnqxJkBlPzWzn
sQg5RAouQb5n+DDjddOFUYOPkI4sbuyDRVUEK+O5lLK9djx/VlptwPCVLWkha0AP
x9P8vPDhHnD39SIQXSdlWU6d0x0x3WRx7Kn/xod9wptXudLj0Y+vAuxLBXE/YALX
kqCIcUMtFLPdRbN1fgjiJSxeqzWRn60q1ZGU1tByovjiqlP2T5f0AKaOxx+kVm0v
EyWS2WsPDHyP85xiPXrpP1MaEB0tt8koEx7BiR6j3llvDu2ejttwo1X0sKe8Uc0p
xLcOxk2ReQHthDR3ugns5j/zTiVGa6Rl4zDaCAscCQrJzl7BHydwMjZo34k9+SX9
dzzwXXIR7M8UgzrwqLjA
=fDGk
-----END PGP SIGNATURE-----

--FL5UXtIhxfXey3p5--

