X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2725" "Thursday" "14" "May" "2015" "23:25:25" "+0200" "Jann Horn" "jann@thejh.net" "<20150514212525.GA19682@pc.thejh.net>" "64" "[oss-security] Still unfixed? Re: [oss-security] Linux namespaces: It is possible to escape from bind mounts" nil nil nil "5" "2015051421:25:25" "[oss-security] Still unfixed? Re: [oss-security] Linux namespaces: It is possible to escape from bind mounts" (number mark "        jann@thejh.n May 14   64/2725  " thread-indent "\"[oss-security] Still unfixed? Re: [oss-security] Linux namespaces: It is possible to escape from bind mounts\"\n") "<20150403105802.GA21110@pc.thejh.net>" ("<20150403105802.GA21110@pc.thejh.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7889 invoked by uid 550); 14 May 2015 21:25:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7871 invoked from network); 14 May 2015 21:25:38 -0000
Message-ID: <20150514212525.GA19682@pc.thejh.net>
References: <20150403105802.GA21110@pc.thejh.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="n8g4imXOkfNTN/H1"
Content-Disposition: inline
In-Reply-To: <20150403105802.GA21110@pc.thejh.net>
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Thu, 14 May 2015 23:25:25 +0200
From: Jann Horn <jann@thejh.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Still unfixed? Re: [oss-security] Linux namespaces: It is possible
 to escape from bind mounts
To: oss-security@lists.openwall.com

--n8g4imXOkfNTN/H1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 03, 2015 at 12:58:02PM +0200, Jann Horn wrote:
> See here for the corresponding patches:
> <http://permalink.gmane.org/gmane.linux.kernel.containers/29173>
> <http://permalink.gmane.org/gmane.linux.kernel.containers/29177>

Which apparently haven't landed in the kernel? The last commit
mentioning bind mounts I could find is 8f502d5b9e336297, which says:

      The issue of being able to escape a bind mount has not yet been
      addressed, as the fixes are not yet mature"

And the public security issue trackers of Debian, Ubuntu and Redhat
also say that the issue hasn't been fixed:

https://access.redhat.com/security/cve/CVE-2015-2925
https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1441108
https://bugzilla.redhat.com/show_bug.cgi?id=3DCVE-2015-2925

> Containers on Linux normally use bind mounts to restrict how much
> of the filesystem is visible for processes inside the container.
> However, if an attacker can gain capabilities within such a
> container or can create another user and mount namespace within
> the existing container, he can do something similar to a
> double-chroot attack to break out of the bind mount and gain
> access to the full filesystem to which the bind mount refers:
>=20
> Create folders /A, /A/B, /C, /D inside the namespace.
> Bind-mount the /A inside the namespace to /D.
> Let a process chdir to /D/B.
> Move /D/B over into /C.
> The process which chdir'ed to /D/B is now in /C/B, but at the
> same time it is in a bind mount with /D as root. It can then
> traverse upwards, past what looks like / inside the namespace.

This issue now is nearly 5 months old. :/

--n8g4imXOkfNTN/H1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJVVRLFAAoJED4KNFJOeCOoNnYP/24d4ZGX+gaTGuNRHP6cNT9h
RF/vOtGpy5BX4FrPcuNo2Z6l3Dl7A8cGy/blf8EZfgSd/V354oxEITftjgWK5Na6
EktdaIdlsUjcf2k8MOaq38tfDB2d2R4tbP3wz74rMG2EoRcg4F2NeT3MrS2xXXod
5gRjLGPXmFyzhzN1s3efc14u0s1Ps1ig96P0v0Hzw2B6uRf4VZeUduH+G7aL/eI7
NsMLYe11h6X6HbasUbU+uVMdHO7v0a3cWwEH8ZSyDbqQjSPyJ/H+XpogornhKwVp
YQOYQEvAyZuqn98ixexG7DQ2KP19LmFAxseBJDaEq2YWmnYyLCRqwL0vM4yXZDHR
5WoBBgiwNLv00TFc6aILvRjYatrE7xpo4UPaZBh/VfzS6Lja7tbAO0Q8HNCBXOD4
hDIRdYzUsoeeJdetkxAMQ8v8vRN7QWhXzq1lTKDBl0b0Gg/B1c3ROoMW6epRMM8n
LAXZ88Fl5EA5lZzoAa5GNJPjjdagLqlVHoBHusEwLI5Z6K+98L1rqc59H7NbHSva
BtbwgAGl6b3YRHBiqo2KIdeubjkRARN9v+TDrV6TCjhizPfUTowErvSG/tIgh4NQ
55n+WzQrJcMpE6JniR0XNBZRYs64+mbqvk8PG2O/tdlDjXskRkIjb2p1uYK82tH7
WZbNT7kHWfmrqs/5LmRv
=W9s+
-----END PGP SIGNATURE-----

--n8g4imXOkfNTN/H1--
