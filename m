X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1675" "Wednesday" "24" "February" "2016" "13:58:57" "-0700" "Eric Blake" "eblake@redhat.com" "<56CE1991.2030906@redhat.com>" "41" "Re: [oss-security] CVE Request: bash-completion: dequote command injection" "^Date:" nil nil "2" "2016022420:58:57" "[oss-security] CVE Request: bash-completion: dequote command injection" (number mark "        eblake@redha Feb 24   41/1675  " thread-indent "\"Re: [oss-security] CVE Request: bash-completion: dequote command injection\"\n") "<CAEr-gPHk8Q5dSh1rOmKiGEQ97X=JrAypPcVvv+NrzReuOHMoyg@mail.gmail.com>" ("<CAEr-gPHk8Q5dSh1rOmKiGEQ97X=JrAypPcVvv+NrzReuOHMoyg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5307 invoked by uid 550); 24 Feb 2016 20:59:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5268 invoked from network); 24 Feb 2016 20:59:12 -0000
References: <CAEr-gPHk8Q5dSh1rOmKiGEQ97X=JrAypPcVvv+NrzReuOHMoyg@mail.gmail.com>
Openpgp: url=http://people.redhat.com/eblake/eblake.gpg
Organization: Red Hat, Inc.
Message-ID: <56CE1991.2030906@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <CAEr-gPHk8Q5dSh1rOmKiGEQ97X=JrAypPcVvv+NrzReuOHMoyg@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="EcLFL5Cu0fIo9hleD3qpbwWH1W50FH0Fj"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Date: Wed, 24 Feb 2016 13:58:57 -0700
From: Eric Blake <eblake@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: bash-completion: dequote command
 injection
To: oss-security@lists.openwall.com

--EcLFL5Cu0fIo9hleD3qpbwWH1W50FH0Fj
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 02/24/2016 12:08 PM, Fernando Mu=C3=B1oz wrote:
> Marcelo Echeverria and Fernando Mu=C3=B1oz discovered that the dequote
> function included in bash-completion allows to execute arbitrary
> commands since it uses the eval function to call printf and perform
> the actual dequoting. bash-completion is included on Debian, Ubuntu
> OpenSuse [1] and probably other distros.

But what is the privilege escalation?  This is no different than
incorrectly using 'eval' in a shell script - you may have buggy code,
and have an easy-to-trigger bug, but if you can't escalate privileges,
how it is a CVE?

--=20
Eric Blake   eblake redhat com    +1-919-301-3266
Libvirt virtualization library http://libvirt.org


--EcLFL5Cu0fIo9hleD3qpbwWH1W50FH0Fj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2
Comment: Public key at http://people.redhat.com/eblake/eblake.gpg
Comment: Using GnuPG with Thunderbird - http://www.enigmail.net/

iQEcBAEBCAAGBQJWzhmSAAoJEKeha0olJ0NqLbYH/A61k0CN/yXtU2XZ3ufODF8U
529TNFwLAw8Z63yLlD8deIJhuepxcW5UsAK06DX4Zch+l7m9J0hNx1oNUe83IVJ8
3xSLG8eV9dDXVgZC6d7jYr7XSIkM90Lp+jTbqeg9WXe/FkTmv+SV7CJ7Nd6TqkII
fupunYEOpJf8ta7Lo71VW9n+UxQ+L0f4z9ofJRNnGngdeJIFTbs0AR2l2tnb7iSH
C5gJgpmwIkUth5lsNEikJCbT/zFKb4Z5HS6NlNM1oCMVnyyMowbboyr9hJOsFfD7
nEdMgFfYxxPgl0xJFPPEHtmN0AMvsX3m1upTpJK6USC3/PGvCyXx7XG39b5Cq+8=
=VVHU
-----END PGP SIGNATURE-----

--EcLFL5Cu0fIo9hleD3qpbwWH1W50FH0Fj--
