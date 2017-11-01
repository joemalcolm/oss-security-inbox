X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1423" "Wednesday" "1" "November" "2017" "09:53:06" "+0100" "Jan =?utf-8?B?UG9rb3Juw70=?=" "jpokorny@redhat.com" "<20171101085306.GF14183@redhat.com>" "41" "Re: [oss-security] Fw: Security risk of vim swap files" "^Date:" nil nil "11" "2017110108:53:06" "[oss-security] Fw: Security risk of vim swap files" (number mark "        jpokorny@red Nov  1   41/1423  " thread-indent "\"Re: [oss-security] Fw: Security risk of vim swap files\"\n") "<CANO=Ty3-SjDC5=Dq3s19GxY4fwjJEah2-fbNAEp4bpGDUXOGfg@mail.gmail.com>" ("<20171031132352.2df6d2ad@pc1>" "<CANO=Ty3-SjDC5=Dq3s19GxY4fwjJEah2-fbNAEp4bpGDUXOGfg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7348 invoked by uid 550); 1 Nov 2017 09:16:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14212 invoked from network); 1 Nov 2017 08:53:21 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com E118B7E384
Authentication-Results: ext-mx04.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx04.extmail.prod.ext.phx2.redhat.com; spf=fail smtp.mailfrom=jpokorny@redhat.com
Message-ID: <20171101085306.GF14183@redhat.com>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20171031132352.2df6d2ad@pc1>
 <CANO=Ty3-SjDC5=Dq3s19GxY4fwjJEah2-fbNAEp4bpGDUXOGfg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="H4SyuGOnfnj3aJqJ"
Content-Disposition: inline
In-Reply-To: <CANO=Ty3-SjDC5=Dq3s19GxY4fwjJEah2-fbNAEp4bpGDUXOGfg@mail.gmail.com>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Wed, 01 Nov 2017 08:53:10 +0000 (UTC)
Date: Wed, 1 Nov 2017 09:53:06 +0100
From: Jan =?utf-8?Q?Pokorn=C3=BD?= <jpokorny@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com

--H4SyuGOnfnj3aJqJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 31/10/17 12:48 -0600, Kurt Seifried wrote:
> For example cat (and cpo and tar) work as expected:
>=20
> [...]
>=20
> [kseifrie@localhost vi]$ cat foo > bar

Just noting that cat has nothing to do with how the file born by the
means of output redirection gets created.  It's the responsibility
of the executing shell that supports such a concept in the first place.

--=20
Jan (Poki)

--H4SyuGOnfnj3aJqJ
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJZ+YtyAAoJEGG7sjqej43iKZEP/3FiOPMC3v8Vw6OcPdrEL55F
wVnkizqWWJZgqzv43+X6PIjcImgK2E0kqHSZ6s18+A8TtEnUmGYSE8LHodJ1lrFW
2pA4IUs8Wej7cjK4Y/jiWNtda3k5zTs9UF4McMVF0wLFgu1pBKU22+7oNaq7QpCz
wdaEU/h9smXIbi3u0Gamdvr5UF1AkIQEaWSAhsx8j4BekvqVtl8bpw27e2LSPUId
R07T6VPW+B4tCc7Ww+iP2dLucKrym8BAyQFVH5Nph3sSfLWTvz4rdMWihwHm67XE
sGf1qQXnK229NtRlT06HdZcxg/J/n+EAcYIBfiQ1Hj7Ud6c0MSCW6OmY20/m3rTp
Fp7xAbnX/MUAildcDnDj34J3m2NgZdfBr10bjTPIWOmKhpOC3xoc5KdNyuZKBpzr
e5jHbX4zdjoohdTdIPhVxJj22uJ1W3N2uhZZo5KgPQqFykzH6+JSHDjvr/QAkPrH
Cro1S7uZgbr2/YPSCVihW8eZYfISdi2kTnBynoarNsgPc+ZswoSzD5RpuiLNq64r
AXfQ4y3a8cyQoagbn00iExABMGmaCQZNNvyv8bsa9rYGNKZKePrwp+BZz41KfasC
Sd2UH+rpENupMgA4RIQUHj/esfheQMIqnUuyTagZsSiF2oLtpC2FgrvCzVPQZe+F
EoebIuCO6bBaruw+ju/G
=0AiD
-----END PGP SIGNATURE-----

--H4SyuGOnfnj3aJqJ--
