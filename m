X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1991" "Monday" "6" "November" "2017" "21:24:56" "+1100" "Michael Ellerman" "mpe@ellerman.id.au" "<87efpbbt6v.fsf@concordia.ellerman.id.au>" "68" "[oss-security] CVE-2017-15306: Linux kernel: KVM: PPC: Fix oops when checking KVM_CAP_PPC_HTM" nil nil nil "11" "2017110610:24:56" "[oss-security] CVE-2017-15306: Linux kernel: KVM: PPC: Fix oops when checking KVM_CAP_PPC_HTM" (number mark "U       mpe@ellerman Nov  6   68/1991  " thread-indent "\"[oss-security] CVE-2017-15306: Linux kernel: KVM: PPC: Fix oops when checking KVM_CAP_PPC_HTM\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17992 invoked by uid 550); 6 Nov 2017 11:49:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9950 invoked from network); 6 Nov 2017 10:25:20 -0000
From: Michael Ellerman <mpe@ellerman.id.au>
To: oss-security@lists.openwall.com <oss-security@lists.openwall.com>
Cc: groug@kaod.org, sam.bobroff@au1.ibm.com
Date: Mon, 06 Nov 2017 21:24:56 +1100
Message-ID: <87efpbbt6v.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha1; protocol="application/pgp-signature"
Subject: [oss-security] CVE-2017-15306: Linux kernel: KVM: PPC: Fix oops when checking KVM_CAP_PPC_HTM

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Hi folks,

Greg Kurz discovered a local denial of service (kernel oops) in the KVM
code for powerpc.

=46rom his report:

    The following program causes a kernel oops:
=20=20=20=20
    #include <sys/types.h>
    #include <sys/stat.h>
    #include <fcntl.h>
    #include <sys/ioctl.h>
    #include <linux/kvm.h>
=20=20=20=20
    main()
    {
        int fd =3D open("/dev/kvm", O_RDWR);
        ioctl(fd, KVM_CHECK_EXTENSION, KVM_CAP_PPC_HTM);
    }
=20=20=20=20
    This happens because when using the global KVM fd with
    KVM_CHECK_EXTENSION, kvm_vm_ioctl_check_extension() gets
    called with a NULL kvm argument, which gets dereferenced
    in is_kvmppc_hv_enabled().


The bug was introduced in commit:

  23528bb21ee2 ("KVM: PPC: Introduce KVM_CAP_PPC_HTM")

Which was merged into kernel 4.8-rc1.

The fix is now in mainline:

  ac64115a66c1 ("KVM: PPC: Fix oops when checking KVM_CAP_PPC_HTM")

  https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit=
/?id=3Dac64115a66c1


cheers

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJaADh4AAoJEFHr6jzI4aWA10EP/RwVhMl2TAnoAN/FHDr1eaSo
Bz08arEbxaT4gLXRIJyFCjlgyNm3Bv1OmczxuNJ3yjcJXqtS+2kMD1UCS7nw78MO
u8UIfW27Grc+yIUT856ToiMSXmP7/hKg9xIAV65tDvMwPZgFXV8dbn9He0rUVr+j
3r4NoV5SSpvuQlTUDkR2fXTjo9eS3+BATIkv5H9P7Qs3mmIjijiDG6savySEPVdB
DSkEUvV7tyz4C8GH57697ohVNGWLGqgojBE0g6fntHEn66yXxuC2B5eQg648zPKo
9J9+aYwa6oNmbtX5tVio6JAt62w1rJp3KV6jZKwDAVVfvHcUT+aDy6KEIGT7boDv
u7wsc0nfzDGFgVTl35QfSDufqvyUs0DVvfKXoN5jEW1WPketsPQPCBqJfxhU2G6U
jPgmMJsTetgdETICs87GUznwHpwq1lVNUE+NdTI78sacReelAUhMGkrvlhFjferP
xEiHndrYmFPgOAkpkDYME3Wbn3MROG+mq+Rvjj+deLCmfACWOn/FpqHOQb0bXB74
QuFnENWqLcpxOedBNPS7cWt7ogdrk5+rczFEJ/CMv2lDXiaM6LNLqjNK3WzCjEZT
kLylqLQwrZqEMl4n7A1fjIcx9Wooef2B/4qXYrvcqIlV9pl1EglwcTDVZG6ptXHk
vnYL3c/l06Jq0aYG9zrK
=IiZK
-----END PGP SIGNATURE-----
--=-=-=--
