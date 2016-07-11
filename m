X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2131" "Monday" "11" "July" "2016" "15:18:42" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160711191842.9D88F42E004@smtpvbsrv1.mitre.org>" "57" "[oss-security] Re: cvs request: local DoS using rename syscall on overlayfs on top of xfs to crash the kernel - Linux kernel" nil nil nil "7" "2016071119:18:42" "[oss-security] Re: cvs request: local DoS using rename syscall on overlayfs on top of xfs to crash the kernel - Linux kernel" (number mark "U       cve-assign@m Jul 11   57/2131  " thread-indent "\"[oss-security] Re: cvs request: local DoS using rename syscall on overlayfs on top of xfs to crash the kernel - Linux kernel\"\n") "<150590619.3922934.1468259391266.JavaMail.zimbra@redhat.com>" ("<150590619.3922934.1468259391266.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25720 invoked by uid 550); 11 Jul 2016 19:18:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25699 invoked from network); 11 Jul 2016 19:18:54 -0000
From: cve-assign@mitre.org
To: caiqian@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <150590619.3922934.1468259391266.JavaMail.zimbra@redhat.com>
Message-Id: <20160711191842.9D88F42E004@smtpvbsrv1.mitre.org>
Date: Mon, 11 Jul 2016 15:18:42 -0400 (EDT)
Subject: [oss-security] Re: cvs request: local DoS using rename syscall on overlayfs on top of xfs to crash the kernel - Linux kernel

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> I am requesting a CVE for this flaw.
> 
> An unprivileged user could run an exploit using rename syscall on
> overlayfs on top of xfs to crash the kernel caused a denial of
> service.
> 
> Exploit:
> https://github.com/linux-test-project/ltp/blob/master/testcases/kernel/syscalls/rename/rename13.c
> 
> Patch can be found here with more in depth description

As far as we can tell, there are circumstances in which each of the
two parts of the patch could be relevant, and thus we are assigning
two CVE IDs.


> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=11f3710417d026ea2f4fcf362d866342c5274185

This patch is present in 4.6 but not in 4.5.5.

Use CVE-2016-6197.


> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=54d5ca871e72f2bb172ec9323497f01cd5091ec7
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=9409e22acdfc9153f88d9b1ed2bd2a5b34d2d3ca

These patches are present in both 4.6 and 4.5.5.
(https://www.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.5.5 lists
them.)

Use CVE-2016-6198.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXg+/uAAoJEHb/MwWLVhi2ixYQAJxC7wXlFmCX+ZuJueWhtsPU
PxN8mRCizwA4IuOrYO1EwtrdoGUSQAePX0YBl35NZJ8/K2OcV1J+rwLOkeHP67ep
KXGn3iSjL15B1NeRxztpKwnV3alkuOVljQIM0IRasfYK8oCEX/g+UstyxW0AJNqe
HBFzdgG+XERbqN0uLd5uBtLzz/nCK37e6xWA43augQU+cI5B+URYpcy2n50wiQVG
o3WOreou1RSveyJSbVU4csN6xpgn6KFOi5+sdV0vjyR92BxICFCoJ1lIHHmVm+LF
kT63D7zKFdY3kFqBIKaHhUmnti3a4jddWxnCfAJYcJ7L0+md4DpDJ/uEQTJ1BNXQ
Yw1a3jev4ji2Ajbvlf2lhQHvC1at3jTiQBEHJBOZjLVsxZ2jl35TU3PmLVyR5JHN
cdo2oYVsiNpcfHhkDHQNQAugard2aWYRz+IeF2V1dGNT8JyAL0cAO11c5+Hj/nyc
zGx+NfMq9wPn5RQT1+79IABxbQrJyd1ppfwPiWhyVNwkInkJC3WzZIeXanLaJkLc
wwXyTNGcx9s+zxXlM2tnlyhLCB66iY798T2oBs6mR5ID8NRkGYzli8sb4ZcoiAuJ
rYonHjVJnmYW6Tuz3Yc9Jj9i/UtnSYFWfshfHs8HpKwoA4XPUYw6CM2dNO7e4H9/
xARF3BLpcTyZdqCS/3ao
=aGT3
-----END PGP SIGNATURE-----
