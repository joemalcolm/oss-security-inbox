X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3246" "Friday" "13" "January" "2017" "20:55:42" "+0100" "Thomas Deutschmann" "whissi@gentoo.org" "<32e68d18-01e4-ff5f-c386-9aae4569205b@gentoo.org>" "79" "Re: [oss-security] Nginx (Debian-based + Gentoo distros) - Root Privilege Escalation [CVE-2016-1247 UPDATE]" "^Date:" nil nil "1" "2017011319:55:42" "[oss-security] Nginx (Debian-based + Gentoo distros) - Root Privilege Escalation [CVE-2016-1247 UPDATE]" (number mark "        whissi@gento Jan 13   79/3246  " thread-indent "\"Re: [oss-security] Nginx (Debian-based + Gentoo distros) - Root Privilege Escalation [CVE-2016-1247 UPDATE]\"\n") "<59bb3856-44d5-72b0-9488-edb0093ecb30@igalia.com>" ("<CADSYzsvmN6=Zc_hn-bk9zZRUUgz-TVDvSR8scEAcr6Gxe5PsDQ@mail.gmail.com>" "<3212855a-34ce-b2dc-d6b1-1fbb40f7ce2e@igalia.com>" "<d93729b8-0e0e-5d8c-8bf9-5de01ab62979@gentoo.org>" "<59bb3856-44d5-72b0-9488-edb0093ecb30@igalia.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24049 invoked by uid 550); 13 Jan 2017 20:35:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5694 invoked from network); 13 Jan 2017 19:56:13 -0000
References: <CADSYzsvmN6=Zc_hn-bk9zZRUUgz-TVDvSR8scEAcr6Gxe5PsDQ@mail.gmail.com>
 <3212855a-34ce-b2dc-d6b1-1fbb40f7ce2e@igalia.com>
 <d93729b8-0e0e-5d8c-8bf9-5de01ab62979@gentoo.org>
 <59bb3856-44d5-72b0-9488-edb0093ecb30@igalia.com>
Message-ID: <32e68d18-01e4-ff5f-c386-9aae4569205b@gentoo.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.6.0
MIME-Version: 1.0
In-Reply-To: <59bb3856-44d5-72b0-9488-edb0093ecb30@igalia.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="mkOQHThCO61BfuJTp7J302C9rADOr0POb"
Date: Fri, 13 Jan 2017 20:55:42 +0100
From: Thomas Deutschmann <whissi@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Nginx (Debian-based + Gentoo distros) - Root
 Privilege Escalation [CVE-2016-1247 UPDATE]
To: oss-security@lists.openwall.com

--mkOQHThCO61BfuJTp7J302C9rADOr0POb
Content-Type: multipart/mixed; boundary="u6gEFiBiadU1jDwUjdgCwgJ2RF3pvLBgC";
 protected-headers="v1"
From: Thomas Deutschmann <whissi@gentoo.org>
To: oss-security@lists.openwall.com
Message-ID: <32e68d18-01e4-ff5f-c386-9aae4569205b@gentoo.org>
Subject: Re: [oss-security] Nginx (Debian-based + Gentoo distros) - Root
 Privilege Escalation [CVE-2016-1247 UPDATE]
References: <CADSYzsvmN6=Zc_hn-bk9zZRUUgz-TVDvSR8scEAcr6Gxe5PsDQ@mail.gmail.com>
 <3212855a-34ce-b2dc-d6b1-1fbb40f7ce2e@igalia.com>
 <d93729b8-0e0e-5d8c-8bf9-5de01ab62979@gentoo.org>
 <59bb3856-44d5-72b0-9488-edb0093ecb30@igalia.com>
In-Reply-To: <59bb3856-44d5-72b0-9488-edb0093ecb30@igalia.com>

--u6gEFiBiadU1jDwUjdgCwgJ2RF3pvLBgC
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On 2017-01-13 19:26, Carlos Alberto Lopez Perez wrote:
> /me happy to know that logrotate has a sane behaviour and avoids=20
> trying to rotate symlinks.

But don't forget hardlinks ...


> So the issue is than when in var/log/nginx/ there are standard logs
> (non symlinked) that need to be rotated (appart from the malicious
> symlinked one), then logrotate will rotate those ones, finally
> running the post-rotate script that send SIGURSR1 to the nginx pid.

Just to be sure that we don't misunderstand each other:

Dawid's advisory only uses logrotate because this is present on most
servers and guarantees privilege escalation on a given time which makes
it easier to understand.

But escalation happens via nginx master process which is running as root
and changes owner of existing files.

Without logrotate you can still exploit any system when you can write to
the directory used by nginx for storing log files (and don't forget your
vhosts!). The attacker only have to wait an undefined amount of time,
i.e. for anyone causing nginx to chown files again. On systems running
nginx it is not the question *if* it will happen but only *when*.


--=20
Regards,
Thomas Deutschmann


--u6gEFiBiadU1jDwUjdgCwgJ2RF3pvLBgC--

--mkOQHThCO61BfuJTp7J302C9rADOr0POb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0

iQJ8BAEBCgBmBQJYeTDCXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25zLm9w
ZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQzM0M1ODQ4MkM0MDIyOTJEMkUzQzVDMDY5
NzA5RjkwQzNDOTZGRkM4AAoJEJcJ+Qw8lv/IU/YP/j5PUdOipXzu+mddh+fuPPoW
5Oca8m/Nklgnmx49dPoB4GbtxNpRgYXwCpVmV2+fuAnCB/O2NtNJW3NLGpvBKYN1
3gHOEWrjaQ5dwjEnNmFv6nj+BLdi68BxlLBY4wCwHr6sgkvK5qpoNZsIJsgLil9v
aEPNkGHUrtFOEVmpM3WbFD87ow+kzgwqbTRiLfzi+84il1mc6VNSNbRdEKKsDdJv
ji3OzLwpzlQxvReIU4QJYfryEpTbsVCLWZQ7xSamW3N8y/yEe+bY51RbvVi/nlaz
w6HiZYlqNCBEw9iZ8eHnnlBUJG9t4Kug9kNDKhUmvNBjkcUGAX+xOCdiyvUBINBV
eT6LxWoS++p23IxmMRiV6F64z9+x9jssRgQ5/g5xkN8wgQ+nFEYfM+FqJvO+HUF7
ZCWBOpM2u/sicp6EdXpbQHb9vkdPNiHGVHG1xrHj9odo4LwHREaTQyXAPz8g1mXy
+UrkWaKD0THt2qVR1Xuwzx0NOgQRa7n3IQjZN/QXGnGr8Lgm7Lz4d0ZmSC56+Z0z
5q9HQ0IBxcXo8RUj0prub5hI7+wxmhj/o1Pp+VCiM2WPbUf8ljhHfe9973iXBo9J
7MROe0DAEb6NywwK7bxnfYi57wS57A5cHi0f7D02YrLGhZBzZOAdz0gVYBjSX3oj
xjUmwIuYhn+b6pT6cvvf
=p2Gt
-----END PGP SIGNATURE-----

--mkOQHThCO61BfuJTp7J302C9rADOr0POb--
