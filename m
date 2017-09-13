X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6308" "Wednesday" "13" "September" "2017" "16:04:19" "+1000" "Dave Chinner" "david@fromorbit.com" "<20170913060419.GT17782@dastard>" "190" "[oss-security] CVE-2017-14340: Linux kernel: xfs: unprivileged user kernel oops" nil nil nil "9" "2017091306:04:19" "[oss-security] CVE-2017-14340: Linux kernel: xfs: unprivileged user kernel oops" (number mark "U       david@fromor Sep 13  190/6308  " thread-indent "\"[oss-security] CVE-2017-14340: Linux kernel: xfs: unprivileged user kernel oops\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13312 invoked by uid 550); 13 Sep 2017 10:39:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21562 invoked from network); 13 Sep 2017 06:04:37 -0000
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2DQBABsybhZ//yBpztcHAEBBAEBCgEBhSwnjw2PcwEHhwaHPYshB4U7AgIBAYUeAQIBAQEBAQJrKIV1IxgXDTQFJQM0iiQMrlGLOQExIYMKgwqCK4Rkg1uFVAWKBpYcUpRFkn+WaFeBDTIhCBwVSoUkggkuNooGAQEB
Date: Wed, 13 Sep 2017 16:04:19 +1000
From: Dave Chinner <david@fromorbit.com>
To: oss-security@lists.openwall.com
Cc: sandeen@sandeen.net, darrick.wong@oracle.com, rwareing@fb.com
Message-ID: <20170913060419.GT17782@dastard>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="5vNYLRcllDrimb99"
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [oss-security] CVE-2017-14340: Linux kernel: xfs: unprivileged user kernel oops

--5vNYLRcllDrimb99
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


Summary
-------

XFS mishandles a user settable inode flag in kernels prior to
4.14-rc1 which can cause a local denial of service via a kernel
oops.


Description
-----------

Richard Wareing recently discovered that if the XFS kernel code is
compiled with CONFIG_XFS_RT=3Dy, the code mishandles
FS_XFLAG_RTINHERIT and FS_XFLAG_REALTIME flags when the filesystem
does not have a realtime device configured. When an fsync/fdatasync
operation is run on an inode configured this way, we attempt to
flush the cache of the non-existent realtime device and the kernel
will oops.

While a user cannot set the FS_XFLAG_REALTIME directly on such a
filesystem, we fail to prevent them from setting the
FS_XFLAG_RTINHERIT on directories.  Hence files can inherit the
problematic FS_XFLAG_REALTIME flag from their parent directory at
create time. Setting the FS_XFLAG_RTINHERIT flag does not require
special privileges, so any user with permission to write to a
directory can set it.

Details of the oops signature and the trivial reproducer can be
found in the commit message for the fix below.


Scope of vulnerable filesystems
-------------------------------

This vulnerability was introduced in late 2005 by commit
f538d4da8d52 ("[XFS] write barrier support"). Hence XFS filesystems
on all kernels since 2.6.16 are vulnerable except for:

	* Kernels that are compiled with CONFIG_XFS_RT=3Dn are
	  not vulnerable.

	* XFS filesystems with actual realtime devices are not
	  not vulnerable.


How to recognise a vulnerable system
------------------------------------

1. Search the boot log for the XFS initialisation message. If this
message contains the world "realtime" then the kernel is vulnerable
to the issue:

CONFIG_XFS_RT=3Dy (vulnerable):

# dmesg |grep "XFS with"
[    1.625711] SGI XFS with ACLs, security attributes, realtime, debug enab=
led

CONFIG_XFS_RT=3Dn (not vulnerable):

# dmesg |grep "XFS with"
[    1.625711] SGI XFS with ACLs, security attributes, debug enabled


2. If you have a vulnerable kernel, check each XFS filesystems to
see if they use a realtime device.

This filesystem is not vulnerable as it has a realtime device
configured:

# xfs_info /mnt |grep ^realtime
realtime =3D/dev/ram0              extsz=3D4096   blocks=3D2048000, rtexten=
ts=3D2048000

This filesystem is vulnerable if the kernel is vulnerable as it does
not have a realtime device:

# xfs_info /mnt |grep ^realtime
realtime =3Dnone                   extsz=3D4096   blocks=3D0, rtextents=3D0


Mitigation
----------

Fixed upstream in 4.14-rc1, commit below.

Backports to supported stable upstream kernels is already underway,
so fixes will roll out with the next stable kernel releases.

Recompile the kernel with CONFIG_XFS_RT=3Dn. This is recommended for
users who cannot wait for upstream or distro kernel updates, cannot
backport the fix themselves and do not use realtime devices.


Upstream commit
---------------

commit b31ff3cdf540110da4572e3e29bd172087af65cc
Author: Richard Wareing <rwareing@fb.com>
Date:   Wed Sep 13 09:09:35 2017 +1000

    xfs: XFS_IS_REALTIME_INODE() should be false if no rt device present
=20=20=20=20
    If using a kernel with CONFIG_XFS_RT=3Dy and we set the RHINHERIT flag =
on
    a directory in a filesystem that does not have a realtime device and
    create a new file in that directory, it gets marked as a real time file.
    When data is written and a fsync is issued, the filesystem attempts to
    flush a non-existent rt device during the fsync process.
=20=20=20=20
    This results in a crash dereferencing a null buftarg pointer in
    xfs_blkdev_issue_flush():
=20=20=20=20
      BUG: unable to handle kernel NULL pointer dereference at 000000000000=
0008
      IP: xfs_blkdev_issue_flush+0xd/0x20
      .....
      Call Trace:
        xfs_file_fsync+0x188/0x1c0
        vfs_fsync_range+0x3b/0xa0
        do_fsync+0x3d/0x70
        SyS_fsync+0x10/0x20
        do_syscall_64+0x4d/0xb0
        entry_SYSCALL64_slow_path+0x25/0x25
=20=20=20=20
    Setting RT inode flags does not require special privileges so any
    unprivileged user can cause this oops to occur.  To reproduce, confirm
    kernel is compiled with CONFIG_XFS_RT=3Dy and run:
=20=20=20=20
      # mkfs.xfs -f /dev/pmem0
      # mount /dev/pmem0 /mnt/test
      # mkdir /mnt/test/foo
      # xfs_io -c 'chattr +t' /mnt/test/foo
      # xfs_io -f -c 'pwrite 0 5m' -c fsync /mnt/test/foo/bar
=20=20=20=20
    Or just run xfstests with MKFS_OPTIONS=3D"-d rtinherit=3D1" and wait.
=20=20=20=20
    Kernels built with CONFIG_XFS_RT=3Dn are not exposed to this bug.
=20=20=20=20
    Fixes: f538d4da8d52 ("[XFS] write barrier support")
    Cc: <stable@vger.kernel.org>
    Signed-off-by: Richard Wareing <rwareing@fb.com>
    Signed-off-by: Dave Chinner <david@fromorbit.com>
    Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>


Timeline:

2017.09.04 - Discussion on xfs@vger.kernel.org (public list) hinted
	     at crash bug in realtime device support
2017.09.09 - Bug found and reported to XFS maintainers
2017.09.12 - Bug reported to security@kernel.org
2017.09.13 - Fix committed to kernel
2017.09.13 - Announcement to oss-security


-Dave.
--=20
Dave Chinner
david@fromorbit.com

--5vNYLRcllDrimb99
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJZuMpjAAoJEK3oKUf0dfodPRMP/A4lbxWyfsD2Eyp1TSoz5YFi
vRxe0Uj0rx/HJETro0P7u5MCnjiY/5zUl0xxvm/wpkGDs+xu++WjUkirnXIdMIhX
fEL5CMr/3ipy2KPbCClOdnO33IwI0ZXz3Zr+Qkz1JGzbUjn80KnCcbHO6TRACatb
7LtqsdJZ3c0JjzCgwIVy32ve2TeRJqs+weKKGYow8B8Nih6osJPCM1xyoN0lWhFP
Oa+AE/mJbNj9zRF6Lpg1uF9/zOSoa3RCXI6snw5LJ4iYMD14ZgIN4Cd1hzyTm/BM
CJn83bLmncXByeTz4Ezw/VeETQRYuQIDQTu80DQOvlv6If57zvc8/H/dga8ut2hr
8OITwB/VEe1VE9kcEMDhmZiI0aYY7Fs32LCI7EeoJbru9CkXoRV3Mpvhiv9Tj+Kd
VZ0sMch39aMe2j3GQ6+9OB3Yc+H2YrDaFaMKySOA50kMq+DVr+eQi0hFE8rFbHGl
5D0VLM0r+2RhGy8bxVV+99MMrA8gZ5lhQ1ZLTwJ/F+Xeqe/rkjRPgHW9Nl0VtbNt
vIIcCuN2XlQknFblwLYFKpQKx5xIEES3PicLH8NbHrXwaU4CeJ4iKV6kc7wUtEWK
SOmvOFV9VW97pjQ9nk1Hr9oecUn+c5MxFudzLQ7oovH3TNT1UV3FUo1p1geyHOne
unZV4tfUOF2UxFYflp/6
=5o8j
-----END PGP SIGNATURE-----

--5vNYLRcllDrimb99--
