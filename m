X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2235" "Wednesday" "24" "February" "2016" "11:03:04" "+0300" "Dmitry V. Levin" "ldv@altlinux.org" "<20160224080303.GA1667@altlinux.org>" "53" "Re: [oss-security] Access to /dev/pts devices via pt_chown and user namespaces" nil nil nil "2" "2016022408:03:04" "[oss-security] Access to /dev/pts devices via pt_chown and user namespaces" (number mark "U       ldv@altlinux Feb 24   53/2235  " thread-indent "\"Re: [oss-security] Access to /dev/pts devices via pt_chown and user namespaces\"\n") "<20160224070111.GA8044@perpetual.pseudorandom.co.uk>" ("<8fc639ad-daef-1a6f-facf-140eb61aeee5@halfdog.net>" "<20160223161754.GA23263@openwall.com>" "<20160223164136.GA24225@altlinux.org>" "<42e97a56-3538-0864-ee40-2494df567745@halfdog.net>" "<20160224070111.GA8044@perpetual.pseudorandom.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13769 invoked by uid 550); 24 Feb 2016 08:03:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13677 invoked from network); 24 Feb 2016 08:03:15 -0000
Date: Wed, 24 Feb 2016 11:03:04 +0300
From: "Dmitry V. Levin" <ldv@altlinux.org>
To: oss-security@lists.openwall.com
Message-ID: <20160224080303.GA1667@altlinux.org>
References: <8fc639ad-daef-1a6f-facf-140eb61aeee5@halfdog.net> <20160223161754.GA23263@openwall.com> <20160223164136.GA24225@altlinux.org> <42e97a56-3538-0864-ee40-2494df567745@halfdog.net> <20160224070111.GA8044@perpetual.pseudorandom.co.uk>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=x-unknown;
	protocol="application/pgp-signature"; boundary="u3/rZRmxL6MmkK24"
Content-Disposition: inline
In-Reply-To: <20160224070111.GA8044@perpetual.pseudorandom.co.uk>
Subject: Re: [oss-security] Access to /dev/pts devices via pt_chown and user namespaces

--u3/rZRmxL6MmkK24
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 24, 2016 at 07:01:11AM +0000, Simon McVittie wrote:
[...]
> <https://bugs.debian.org/717544> has some interesting background. The
> Debian and Ubuntu glibc maintainers tried turning off pt_chown in 2014,
> but had to turn it back on because it caused too many regressions: in
> particular "mount -t devpts devpts-foo chroot-foo/dev/pts" apparently
> alters the mount options for the "real" /dev/pts, not just the one being
> mounted in the chroot (presumably losing the noexec,nosuid,gid=3D5 and
> mode=3D620 or mode=3D600 options that are expected in Debian). I don't kn=
ow
> whether the default mount options were subsequently altered in util-linux
> and/or the kernel as suggested on that bug, or whether manually mounting
> devpts is just not going to be a supported action in Debian 9.

Linux kernel, starting with version 2.6.29, allows multiple instances
of devpts filesystem (assuming that CONFIG_DEVPTS_MULTIPLE_INSTANCES
is enabled) when "newinstance" mount option is specified for devpts.
The feature is primarily to support containers, but also addresses
the issue:=20
https://www.kernel.org/doc/Documentation/filesystems/devpts.txt


--=20
ldv

--u3/rZRmxL6MmkK24
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWzWO3AAoJEAVFT+BVnCUIu4IP/jBjIOV7ep0mEf23QO52WOv+
SQz9Jf4L/jHomhHWTR3+vRx4lJ2QunhDPq6ZezQxOWjlneZ0h7g6EYzisxDVjqmN
mZ5LnPXnfUAi1JsbtDM8ySo6SYnOxZRJErrmwvCoR6u3la6/T4s9myAsopICPtrP
xKOteenDbG2rwmYomykJs8fZMWF7ryIRPhX5XkPWN+QEsUmjsZUCBPJ3bGCcOuxQ
2XihCXJwajJ6H7jvN8hdqKPTcQ/GkTIRg9+lo0HnshB+qGcTnDA5sGkYCH7n8Fg1
miOWZclLVbWzfYUyd/1ukfe51Yng9lCFvnSDDowvMCOqG4SMuNI9Ka4Taf26jiwS
Cm7A4CQFnPjnrLvwbh6f4BPFsgxPCGR3LD3YzamXHqwA2CE1+9JyYFx0V4NPAH5y
601qY9XafI5F8jxeljWbMMUassmRuDFg6CEO1lEqsSv0I8t03BIO5t0wgL7Rul/9
a3MXNPgoMtU6fPZ3M61DnhLNMdGUBqXTVq+6kpVZwzt/PmiHgyog6WcCX78PX3M0
rVKYYkSZVwosNRdfxt9ALpNQWxLq4ConUrGPBYbYeProbf6Ka+j4PEES20ucUx8u
e1l1gYMhoqHK2HwGfG5W7KPNkxxzAZ+ftJoyQQyBOa0+GUdR5YdCi1MsMWwP+TD0
JCibGk45Y8vg0UsL+gXq
=ft5G
-----END PGP SIGNATURE-----

--u3/rZRmxL6MmkK24--
