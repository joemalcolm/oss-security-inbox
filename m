X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["908" "Friday" "23" "November" "2018" "21:45:24" "+0100" "Yves-Alexis Perez" "corsac@debian.org" "<e34d421111a59b59ab7a09fc954ea71d701936f5.camel@debian.org>" "23" "Re: [oss-security] fwd: [vs-plain] Kernel heap overflow in bpf leading to LPE (exploit provided)" "^Date:" nil nil "11" "2018112320:45:24" "[oss-security] fwd: [vs-plain] Kernel heap overflow in bpf leading to LPE (exploit provided)" (number mark "        corsac@debia Nov 23   23/908   " thread-indent "\"Re: [oss-security] fwd: [vs-plain] Kernel heap overflow in bpf leading to LPE (exploit provided)\"\n") "<20181123180914.GA10084@kroah.com>" ("<20181123172208.GA16585@scapa.corsac.net>" "<20181123180914.GA10084@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21951 invoked by uid 550); 23 Nov 2018 20:45:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21933 invoked from network); 23 Nov 2018 20:45:39 -0000
Message-ID: <e34d421111a59b59ab7a09fc954ea71d701936f5.camel@debian.org>
In-Reply-To: <20181123180914.GA10084@kroah.com>
References: <20181123172208.GA16585@scapa.corsac.net>
	 <20181123180914.GA10084@kroah.com>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.2-1 
Mime-Version: 1.0
Date: Fri, 23 Nov 2018 21:45:24 +0100
From: Yves-Alexis Perez <corsac@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] fwd: [vs-plain] Kernel heap overflow in bpf
 leading to LPE (exploit provided)
To: oss-security@lists.openwall.com, Wei Wu <ww9210@gmail.com>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

On Fri, 2018-11-23 at 19:09 +0100, Greg KH wrote:
> As was discussed further on one of the threads on this topic, it looks
> like this is a 4.20-rc issue only, and that 4.19 does not have this
> issue.  So it might not be relevant to any distro at all, but I suggest
> that people test themselves to be sure.

Hi Greg, thanks for the precision.
- --=20
Yves-Alexis
-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEE8vi34Qgfo83x35gF3rYcyPpXRFsFAlv4ZuQACgkQ3rYcyPpX
RFsM4Qf/UJMELgODThyPFvcKYaiS150t4UPiBDhTTnT/8awV6zQRiB4cGjtefMe2
sO4zHIx1lIAWVDQN3xx0zGxVgdut3TfJdtc0ARUAM5uEtB7ovhq3Z9ILaT1OHnGY
D7l4qSaKMUKhWMiNU2VJlayIMFPC6rJhqz/lB8mV2qp2QbG9UHoqFrHQLEJH3/Hq
NWevdEo9t4+amv6EycLLrb8WDhF2wGeD/usH0Smu4Ty0aJcPVn1E65ax8hgF1xDw
FdHIO3Iz4hmOn2fx7KDtRx5MN0rfAF/fLtRNEjNKQnEUPcADDwTw3x7fZuhzv+AF
/UWcjKAsldGzWklbv4XVNBClNABpFQ=3D=3D
=3DeZhE
-----END PGP SIGNATURE-----
