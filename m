X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4493" "Wednesday" "27" "July" "2016" "22:00:21" "+0200" "Christian Rebischke" "Chris.Rebischke@archlinux.org" "<20160727200021.GB3330@motoko>" "106" "Re: [oss-security] Re: cve request: systemd-machined: information exposure for docker containers" "^Date:" nil nil "7" "2016072720:00:21" "[oss-security] Re: cve request: systemd-machined: information exposure for docker containers" (number mark "        Chris.Rebisc Jul 27  106/4493  " thread-indent "\"Re: [oss-security] Re: cve request: systemd-machined: information exposure for docker containers\"\n") "<398a8ff1-a2ea-9140-c695-c1969ffc58af@redhat.com>" ("<1304293369.8684866.1469539505676.JavaMail.zimbra@redhat.com>" "<20160726192413.2CD1A72E006@smtpvbsrv1.mitre.org>" "<20160727170537.GA3330@motoko>" "<398a8ff1-a2ea-9140-c695-c1969ffc58af@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28611 invoked by uid 550); 27 Jul 2016 20:00:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28593 invoked from network); 27 Jul 2016 20:00:38 -0000
Message-ID: <20160727200021.GB3330@motoko>
References: <1304293369.8684866.1469539505676.JavaMail.zimbra@redhat.com>
 <20160726192413.2CD1A72E006@smtpvbsrv1.mitre.org>
 <20160727170537.GA3330@motoko>
 <398a8ff1-a2ea-9140-c695-c1969ffc58af@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="O5XBE6gyVG5Rl6Rj"
Content-Disposition: inline
In-Reply-To: <398a8ff1-a2ea-9140-c695-c1969ffc58af@redhat.com>
User-Agent: Mutt/1.6.2 (2016-07-01)
Date: Wed, 27 Jul 2016 22:00:21 +0200
From: Christian Rebischke <Chris.Rebischke@archlinux.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: cve request: systemd-machined: information
 exposure for docker containers
To: oss-security@lists.openwall.com

--O5XBE6gyVG5Rl6Rj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 27, 2016 at 01:27:08PM -0400, Daniel J Walsh wrote:
>=20
>=20
> On 07/27/2016 01:05 PM, Christian Rebischke wrote:
> > On Tue, Jul 26, 2016 at 03:24:13PM -0400, cve-assign@mitre.org wrote:
> >> -----BEGIN PGP SIGNED MESSAGE-----
> >> Hash: SHA256
> >>
> >>> Once docker containers register themselves to systemd-machined
> >>> by oci-register-machine. Any unprivileged user could run
> >>> machinectl to list every single containers running in the host
> >>> even if the containers do not belong to this user (including containe=
rs
> >>> belong to the root user), and access sensitive information associated
> >>> with any individual container including its internal IP address, OS
> >>> version, running processes, and file path for its rootfs.
> >>>
> >>> $ machinectl status cc8d10c7b9892b75843d200d54d34a3a
> >>> cc8d10c7b9892b75843d200d54d34a3a(63633864313063376239383932623735)
> >>>            Since: Mon 2016-07-25 17:55:36 UTC; 34s ago
> >>>           Leader: 43494 (sleep)
> >>>          Service: docker; class container
> >>>             Root: /var/mnt/overlay/overlay/0429684e3da515ae4f11b8514c=
7b20f759613
> >>>          Address: 172.17.0.2
> >>>                   fe80::42:acff:fe11:2
> >>>               OS: Red Hat Enterprise Linux Server 7.2 (Maipo)
> >>>             Unit: docker-cc8d10c7b9892b75843d200d54d34a3a9435fe0f6552=
7c254ebfd2d
> >>>                   43494 sleep 3000
> >> Use CVE-2016-6349.
> > Hello,
> > I don't think that the bug for this problem lies in systemd.
> > It's more a design mistake in docker or oci-register-machine.
> > I have forwarded this issue to the systemd developer team and I don't
> > think they will fix this in the future. In their opinion it's a
> > bug in docker or oci-register-machine:
> >
> > https://github.com/systemd/systemd/issues/3815
> >
> > by the way.. I would feel glad if the security researchers would first
> > message the developers and then assign a CVE a bug. This is the normal
> > way for a full disclosure.
> >
> > best regards,
> >
> > Christian Rebischke
> Why is this a bug in oci-register-machine?  All it is doing is calling
> the systemd-machine call to register with it using the three flags
> available.
> Is systemd saying we should not use that call?

Let me quote Lennart Poettering:

---
machined is a system service and is for registering containers running
on the system. There's no concept of "user containers" with that, and
unprivileged users do not have the privileges to even register any
containers with machined.

If you ask me the CVE is complete and utter rubbish. At least against
systemd. If Docker knows a concept of user containers, then good for
them, but in that case they shouldn't register them with machined
really, if they are not supposed to be visible on the host.

Generally though I think the CVE is without merit entirely, after all
"ps" is generally unrestricted, and hence you can always see container
processes running on the host anyway.
---

In my opinion I would say you shouldn't use this call if you don't want
an information leak. Even if systemd would fix the output of=20
`machinectl status ..`. The information leak would still be there
because you could still see informations about the container with `ps`
 or other tools. systemd is not designed for 'user containers'.=20

If yo have further questions. I would say that you ask the
systemd-developers on their mailing list directly.=20

--O5XBE6gyVG5Rl6Rj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJXmRLVAAoJENIUYePf4gYNQz4QAIcyUZBYTwtvsXWroLqxw+5x
Pe6hzqpWno6x0UcqytOuOuEFp0W0p8SLpepoyDCGz8ObRdz1zPmfxLMWnOL5xD/b
Y47UV9927BFOXEeMRJXDU+ERnpGPsdytfO+fAk7qxJkl31PdwG9wNyvDFGf/N/md
fn/7ast7hbpA3hUjg7eCqh2gYaMO/mmCIGXrW5mqqlQZdbduqo2+gssYzIsWFnHX
8DCfXorD5Sh0X7jowXM+U0b0nFIuxAGukRe4+bWpZFkh37EGD99HwTP1gJ9Avqra
hteJeoGcGpOEfq6eNA9aPMPGN6uIdU5sdTIgS1CXYGwBcsiYJvjsrftoQ8kA4ltq
AToIl78mkBlNb8KJDZ+EGhwU0SqK410m7sLCS2xm2zSNfimMOmgF30Wwa2A5lcTm
eDKFLxDIbRYH3uE4t4QaESqvcZG3K6+pZH5JUTA57DQ78sdEE6S3ux19i9ClMBET
SN/yVdCneWOAyy+aU8nW3eak0QNGzsu+BdoBzq20QDLyGWNe4l9JZsFdGFlTzn5k
o9GUYbRCZ1qIqjMHd++EnxAwBlpvUjsUmBN8BTr7r5tRnK/imI+elf2axSURyAWG
6JouyB7qY90QN8DkUiKMtMkfVDBxAv3zcnbojLu6cM4FmKItc2JMNaarLNOBI7sN
h0554Rd+EgM5EJ3DAbWa
=PDQX
-----END PGP SIGNATURE-----

--O5XBE6gyVG5Rl6Rj--
