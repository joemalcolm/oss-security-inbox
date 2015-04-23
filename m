X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1641" "Wednesday" "22" "April" "2015" "17:27:46" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20150423002746.GD3854@hunt>" "42" "Re: [oss-security] USBCreator D-Bus service" nil nil nil "4" "2015042300:27:46" "[oss-security] USBCreator D-Bus service" (number mark "        seth.arnold@ Apr 22   42/1641  " thread-indent "\"Re: [oss-security] USBCreator D-Bus service\"\n") "<20150423000423.GA31439@openwall.com>" ("<CAJ_zFk+imjcZZTm8KwOZia0McwHZ2iQawpXoijRpejM9jt3PGA@mail.gmail.com>" "<20150423000423.GA31439@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14270 invoked by uid 550); 23 Apr 2015 00:28:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14227 invoked from network); 23 Apr 2015 00:28:01 -0000
Message-ID: <20150423002746.GD3854@hunt>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAJ_zFk+imjcZZTm8KwOZia0McwHZ2iQawpXoijRpejM9jt3PGA@mail.gmail.com>
 <20150423000423.GA31439@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="vni90+aGYgRvsTuO"
Content-Disposition: inline
In-Reply-To: <20150423000423.GA31439@openwall.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Wed, 22 Apr 2015 17:27:46 -0700
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] USBCreator D-Bus service
To: oss-security@lists.openwall.com

--vni90+aGYgRvsTuO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Apr 23, 2015 at 03:04:23AM +0300, Solar Designer wrote:
> Either way, it sounds weird to keep a low severity issue private.  Low
> severity usually means not needing an embargo in the first place.  But I
> guess it was the vendor's preference?

In this case, no, Ubuntu would have preferred several days embargo for
this issue. Hypothetically speaking, Monday would have been ideal, as
we prefer to not release updates on Friday, Saturday, or Sunday.

We treat local root escalation vulnerabilities with a high priority[1].

Please do inform us privately of further local root escalations in the
future, either via security@ubuntu.com or filing "private security"
bugs against the corresponding package in Launchpad.

Thanks

1: Our priorities don't directly map to issue severities, but local root
escalations are treated highly:
http://bazaar.launchpad.net/~ubuntu-security/ubuntu-cve-tracker/master/view/head:/README#L215

--vni90+aGYgRvsTuO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJVODyCAAoJEPMhclmdjS6XaDEH/RF8w5Nk/14OAn+l/vI31wKL
5NkNjVOHjgWPkBo1BNs1KSWSelwwaf336Ezk1hXgUAqWfxiGQaF2sCBFrnj4v//p
xIw5SDHgUz64h11Zju3LCUNUauOhPM58XzjjDKcrC7MlBMNVsjFK503NGZAXWm1Q
MBGF33bOjKjRUt0AjLgqxIeJS4B/Hp0kFlolq5Tx7pSzKz1HfBbT3L34zK39ILiA
j9CjoSyo2ZJep0Lmsqxw//qhyrXmqUmqAyIgfKtyBMQjVmUz1zxgNl2edjlCMl19
oVgz72EoK2KI+U1qMppR3idOW0Z5STfo50ekPvO1RhiueYx3Q/GP2AiMJRMwR8Y=
=RwzU
-----END PGP SIGNATURE-----

--vni90+aGYgRvsTuO--
