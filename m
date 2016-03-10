X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2138" "Thursday" "10" "March" "2016" "03:16:36" "-0800" "Steve Beattie" "steve@nxnw.org" "<20160310111636.GA15133@nxnw.org>" "59" "Re: [oss-security] CVE Request: Linux Kernel: Linux netfilter IPT_SO_SET_REPLACE memory corruption" nil nil nil "3" "2016031011:16:36" "[oss-security] CVE Request: Linux Kernel: Linux netfilter IPT_SO_SET_REPLACE memory corruption" (number mark "U       steve@nxnw.o Mar 10   59/2138  " thread-indent "\"Re: [oss-security] CVE Request: Linux Kernel: Linux netfilter IPT_SO_SET_REPLACE memory corruption\"\n") "<20160310092549.GB4470@suse.de>" ("<20160310092549.GB4470@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9284 invoked by uid 550); 10 Mar 2016 11:16:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9263 invoked from network); 10 Mar 2016 11:16:51 -0000
Date: Thu, 10 Mar 2016 03:16:36 -0800
From: Steve Beattie <steve@nxnw.org>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <20160310111636.GA15133@nxnw.org>
References: <20160310092549.GB4470@suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ikeVEW9yuYc//A+q"
Content-Disposition: inline
In-Reply-To: <20160310092549.GB4470@suse.de>
Organization: North by Northwest Consolidated Industries, LLC
X-Paranoia: Greetings CIA, FBI, MI5, NSA, ATF, Immigration!
X-Message-Flag: Repeal the DMCA! Real security is only possible  when subject
 to open critical review.
X-PGP-Key: http://www.NxNW.org/~steve/005E81F4.txt
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [oss-security] CVE Request: Linux Kernel: Linux netfilter
 IPT_SO_SET_REPLACE memory corruption

--ikeVEW9yuYc//A+q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Mar 10, 2016 at 10:25:49AM +0100, Marcus Meissner wrote:
> >>From the P0 team at Google:
>
> https://code.google.com/p/google-security-research/issues/detail?id=3D758
>
> A memory corruption vulnerability exists in the IPT_SO_SET_REPLACE
> ioctl in the netfilter code for iptables support. This ioctl is can be
> triggered by an unprivileged user on PF_INET sockets when unprivileged
> user namespaces are available (CONFIG_USER_NS=3Dy). Android does not
> enable this option, but desktop/server distributions and Chrome OS
> will commonly enable this to allow for containers support or sandboxing.
>
> ...
>=20
> I think this needs a CVE.

It likely needs two, one for the issue above,
which has been proposed to be addressed by
http://marc.info/?l=3Dnetfilter-devel&m=3D145757134822741&w=3D2

and one for the unsigned integer overflow on 32bit kernels
mentioned as an aside at the end of the original report. Proposed
fix is http://marc.info/?l=3Dnetfilter-devel&m=3D145757136822750&w=3D2

Thanks.
--=20
Steve Beattie
<sbeattie@ubuntu.com>
http://NxNW.org/~steve/

--ikeVEW9yuYc//A+q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJW4VeUAAoJEC8Jno0AXoH0SusQAILppZvYGeY7dX17OSbjFwSI
AwTH1ZfKTMVnTLsbW2HgsFPajrlgClemdEkKnGNbZIOX2aaY5FQF2SSI5KEjF3xG
E/Inxj/0DU6Ju72Fy14t0TekDqKhG3jfxRgLFTmoo9K/LFA5iDAr0WTllYhWoRS1
gNtNBcGlXfoKvzZ0Tw2uKKmzGKywiPBU/eQakpLbfId3Y6WE7iDLijtAKTCNNSBa
LDIYdRszRArVVAIWqFjD1ipN1/qlV/yCLz3Sz4KwCs+tVpBbQ8uvb7ca0l6l8BLi
08qtnR/S03yseGjQp/T+3fJ15JJz/V+E2dj1cpwLatzt97YS18cJbpPMqwdi6Y4r
7cu2D2fdHODK7pIwlq07Je/rYyoG/GNDRtJUF3tr/xooYhpeqoyj8STZW8DudEF9
G0A7ZDofQdYI38VvMToxGpQEdaJstTZaTUsdHmSwYzdOUiDMCNsaSpQEAeI18pK9
iTVoE/zMrXTU+oNTCyipd/NUHme9A9mzQuubl/gPEUro2M3RuOAgJi2yMUB+SeBh
flsAg3hhDLFA6IZ968XoXiX1czTtQFyu4vivc5NZFsK0yZHQs7B2jlP6MqtCQpMD
kEQIjcBvicydz/LHQTS3jMLhv331eKZw5iTGwhE40IqQ5zJiU4oYW6kCb304vFzc
b5d6azFVy9Jz4b78IVT2
=adZv
-----END PGP SIGNATURE-----

--ikeVEW9yuYc//A+q--
