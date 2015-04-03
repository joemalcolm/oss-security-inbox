X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3047" "Friday" "3" "April" "2015" "12:02:29" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20150403190229.GA15416@hunt>" "73" "Re: [oss-security] membership request  to the closed linux-distros security mailing list" nil nil nil "4" "2015040319:02:29" "[oss-security] membership request to the closed linux-distros security mailing list" (number mark "        seth.arnold@ Apr  3   73/3047  " thread-indent "\"Re: [oss-security] membership request  to the closed linux-distros security mailing list\"\n") "<551E2093.5000902@gmail.com>" ("<550C19ED.9030901@enea.com>" "<20150402234357.GB9941@hunt>" "<551E2093.5000902@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30178 invoked by uid 550); 3 Apr 2015 19:02:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30160 invoked from network); 3 Apr 2015 19:02:44 -0000
Message-ID: <20150403190229.GA15416@hunt>
Mail-Followup-To: oss-security@lists.openwall.com
References: <550C19ED.9030901@enea.com>
 <20150402234357.GB9941@hunt>
 <551E2093.5000902@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="sdtB3X0nJg68CQEu"
Content-Disposition: inline
In-Reply-To: <551E2093.5000902@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Fri, 3 Apr 2015 12:02:29 -0700
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] membership request  to the closed linux-distros
 security mailing list
To: oss-security@lists.openwall.com

--sdtB3X0nJg68CQEu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 03, 2015 at 01:09:39AM -0400, Daniel Micay wrote:
> I guess Ubuntu has to be dropped from the linux-distros then, because
> www.ubuntu.com appears to be http-only and the ISO download is entirely
> insecure.

Ubuntu ISO downloads come alongside signed SHA256SUMs files:
http://mirror.pnl.gov/releases/14.10/SHA256SUMS
http://mirror.pnl.gov/releases/14.10/SHA256SUMS.gpg

Granted, determining if the hashes was signed by a legitimate key is
difficult to bootstrap, and our website currently doesn't help. As a
result of Kurt's recent discussion about Kali Linux, and simultaneous
prompting by Douglass Clem, I have asked our web team to make the ISO
signing keys more prominently available on our website than just mentioned
on one wiki page.

> The security notices are also served insecurely there:
>=20
> http://www.ubuntu.com/usn/

The security advisories we send via email are gpg signed:
https://lists.ubuntu.com/archives/ubuntu-security-announce/

In addition, the mechanism we suggest our users should use to apply
updates -- apt-get update && apt-get dist-upgrade, or the graphical
equivalent -- provides for full trust path validation automatically. The
advisories are simply additional information for the curious. Our users
can freely ignore our mailed and posted advisories if they wish.

I raised my concerns about Enea's advisories largely because it appeared
that their recommended mechanism of acquiring and installing updates
is entirely unvalidated from end to end. If they are also using an
authenticated tool like up2date, yum, apt-get, apt-rpm, zypper, pacman,
pkgsrc, or git with signed tags or otherwise authenticated tags, as the
actual mechanism users should use to download updates, then they should
recommend using that tool in their advisories.

> Am I missing something... ? It doesn't make much sense to criticize this
> when you folks are doing the same. I do get the impression that Enea
> Linux is handling security poorly (where are all of the other issues?)
> but this bothered me.

Funny, I didn't worry too much about how fee issues they've addressed:
I don't know what packages they ship, nor the threat models their users
may have with their systems.

Please don't hesitate to share any other concerns with Ubuntu's security
practices.

Thanks

--sdtB3X0nJg68CQEu
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJVHuPFAAoJEPMhclmdjS6Xt7AH/A0IxVx0oQpJh6+dQDtVqZuP
kEiJHQNa+PxkMPnm9NFlmGwjt0G7+KWb9hb+F9mvJVaxO//wdAwGrcjthZqttsgY
FD2qil5UyVANKQKSfDLtZL6DcnyPZafmQasbYsxCGQ30Jg5i91RTF0k61UqEVI2v
eHndk8M26ekvVT7CcImYAfzuZ7Fn0vVuaPUTpkM3ysIohy34H90CuQqHcygWcxrO
Wh336PU02JvSRWIKRLlyG5ZxpLC0PIYFy0f3KjsFZ43v/CBrJuJFcMkDP+zTJ9IK
kT2iiwWACt+FnBCu8VJB3DSjrrKBjX9A/LJm/fTCzLhRdWWnDPEhKdDn60m84CQ=
=St9z
-----END PGP SIGNATURE-----

--sdtB3X0nJg68CQEu--
