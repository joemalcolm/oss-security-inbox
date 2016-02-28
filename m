X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4167" "Sunday" "28" "February" "2016" "15:53:56" "+0100" "Jann Horn" "jann@thejh.net" "<20160228145356.GA30050@pc.thejh.net>" "96" "[oss-security] pt_chown timeline, CVE request [was: Access to /dev/pts devices via pt_chown and user namespaces]" nil nil nil "2" "2016022814:53:56" "[oss-security] pt_chown timeline, CVE request [was: Access to /dev/pts devices via pt_chown and user namespaces]" (number mark "U       jann@thejh.n Feb 28   96/4167  " thread-indent "\"[oss-security] pt_chown timeline, CVE request [was: Access to /dev/pts devices via pt_chown and user namespaces]\"\n") "<8fc639ad-daef-1a6f-facf-140eb61aeee5@halfdog.net>" ("<8fc639ad-daef-1a6f-facf-140eb61aeee5@halfdog.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13900 invoked by uid 550); 28 Feb 2016 14:54:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13875 invoked from network); 28 Feb 2016 14:54:09 -0000
Date: Sun, 28 Feb 2016 15:53:56 +0100
From: Jann Horn <jann@thejh.net>
To: oss-security@lists.openwall.com
Cc: security@kernel.org, security@ubuntu.com, security@debian.org,
	Aurelien Jarno <aurelien@aurel32.net>,
	Florian Weimer <fw@deneb.enyo.de>
Message-ID: <20160228145356.GA30050@pc.thejh.net>
References: <8fc639ad-daef-1a6f-facf-140eb61aeee5@halfdog.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="u3/rZRmxL6MmkK24"
Content-Disposition: inline
In-Reply-To: <8fc639ad-daef-1a6f-facf-140eb61aeee5@halfdog.net>
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] pt_chown timeline, CVE request [was: Access to /dev/pts devices via
 pt_chown and user namespaces]

--u3/rZRmxL6MmkK24
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Because this can realistically lead to a privilege escalation to root,
I would like to request CVE identifier allocation if that hasn't
already happened.

On Tue, Feb 23, 2016 at 12:03:54PM +0000, halfdog wrote:
> The logic above is severely flawed, when there can be more than one
> master/slave pair having the same number and thus same name. But this
> condition can be easily created by creating an user namespace,
> mounting devpts with the newinstance option, create master and slave
> pts pairs until the number overlaps with a target pts outside the
> namespace on the host, where there is interest to gain ownership and
> then invoke pt_chown.
[...]
> In my opinion, this security bug should be fixed two-fold: At first,
> kernel should prevent the TIOCGPTN ioctl when invoked called by a
> process within one namespace but acting on a filedescriptor from a
> devpts instance mounted in a different namespace.

As mentioned in the private discussion about the bug (I think), that
only works if you assume that there are no chroot directories with
other devpts instances mounted in the init namespace or so.


> Additionally
> pt_chown should check via readlink and stat, that the passed file
> descriptor really was from the /dev/ptmx or /dev/pts/ptmx device
> present in the same namespace as the /dev/pts/[num] device is
> residing.

> This of course is only relevant if pt_chown is going to
> survive on recent namespace aware systems.

As others figured out in the private bug discussion, pt_chown is
already not installed as setuid binary by glibc anymore.
That it is present in Debian and Ubuntu is because of a distro patch
in Debian, which Debian applied to work around the bug that the
"[PATCH] devpts: Sensible /dev/ptmx & force newinstance" patch is
supposed to fix. So with a fix for that issue applied, Debian and
Ubuntu should be able to just drop the distro patch, fixing the
vuln by removing pt_chown.


> Timeline:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
>     20151220: Discovery
>     20151227: Report at Ubuntu Launchpad1529486
>     20160104: Report to distros list
>     20160122: Patch to disable unprivileged userns due to this and
> other issues LKML
>     20160222: CRD and publication

I also discovered this. Let me share my timeline:

2015-07-28: reported to security@debian.org
[some discussion]
2015-12-04: Florian Weimer suggests public disclosure
2015-12-05: I report the issue to security@kernel.org, security@ubuntu.com,
  security@debian.org, Aurelien Jarno <aurelien@aurel32.net>,
  Florian Weimer <fw@deneb.enyo.de> and ask whether anyone can fix it
2015-12-05 until 2015-12-19: the issue is discussed and fix approaches
  are considered, mostly by kernel developers, privately
2015-12-11: Parts of this land on LKML for the first time in the
  "[PATCH] devpts: Sensible /dev/ptmx & force newinstance" email from
  Eric W. Biederman to LKML and the participants of the private email
  thread (https://lkml.org/lkml/2015/12/11/760), and in the following
  public discussion, it's possible to see mentions of the security issue.

--u3/rZRmxL6MmkK24
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJW0woEAAoJED4KNFJOeCOoX6EP/1iIE3Af+ppj0e5lwPhaxyau
a/XrFXHeWJDmBqX+bN81YJed1GCY0iPhPpotnPL+ITXF/RvRkbz9WAbJvBxQiX5C
AHAX5vf1IcEzXry3JUzrXJxnqZH+Qvl1b4Dzjhlxxf/GnrWAsYotWC/F+pINkhTf
tG40EBTz445oluBn3I4m0/0ncsxDJ7a414CMR+wSehySW5XU+zBFjgDCvDXnpYv6
0wlR07Lpx47Q+XQW34Nt1C4fm7DdOcy7+xQTHxMxeRDBmE8TUk7JkgABLJ8yqMts
RnV6wXJ7F4ZPvRSO5B9IW0vunu6SlAYkFcaYADDRzpr9xEUSlCGBpMZiehzQEzMQ
ZXqLPMeOL7jLH2ux9YNr6JFKNpCZVzyhkKWCrb57TQf0Bwe060S/fjXFZpSeyCIh
bTvstSr1sRsu7ZTe3piM0anXzeGpMbeCeMVgTeckMJeuFelsOypQL2MyqcKa7GUl
RE8ei98vRmsrwhWILc7YpEozYs1tvkMMTaZ1GXG9RCG7Y6cfHS2R4qoyKg9UADWd
333IVQZFA0089TDgUq2Vmz3swjplxC+Nm6bVz2nrkgVb2mW4eXswB4bTQ+eD+jbS
gcOco/pNy/VXdzwR2/3TE9ZsrenSGNuOdYNqwxzcjy133v6wP9i2VYn1K+S4aS5K
w8QOV90jexQ7B3tGvpEA
=diuS
-----END PGP SIGNATURE-----

--u3/rZRmxL6MmkK24--
