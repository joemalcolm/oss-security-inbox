X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5159" "Friday" "19" "March" "2021" "17:00:08" "-0400" "Brad Spengler" "spender@grsecurity.net" nil "124" "Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil "3" nil nil (number mark "U       spender@grse Mar 19  124/5159  " thread-indent "\"Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28214 invoked by uid 550); 19 Mar 2021 21:05:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26140 invoked from network); 19 Mar 2021 21:00:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=grsecurity.net;
	s=mail; t=1616187608;
	bh=O4hCLgCGF3COom4T6JdX4sWASHUw/KctlLDOmGHbdcE=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=QKn3yC1o4mrvddjMDb6CA+1dpKm/YTi8dbz467rijeRS0irC7nvVnDH+v3VtGvzgb
	 xbQFt/BZkUgjKTvTZnORRssvVzs24TXpf1IcQtdMdLFbdkts1IxeQkD0/doY83gVCF
	 Z8NwRzuStB+AyU+3buwGz6GXXleVdryrxjujXcvo=
Date: Fri, 19 Mar 2021 17:00:08 -0400
From: Brad Spengler <spender@grsecurity.net>
To: oss-security@lists.openwall.com
Message-ID: <20210319210008.GA646@grsecurity.net>
References: <CAKx+4-pR3JScgA-PJFSwkAw6B8xiXYWFtVD6rEYp2wnJjyCogw@mail.gmail.com>
 <YFNCtWmsYrtYQeEJ@kroah.com>
 <YFOLo/QrlgIrFotJ@wopr>
 <YFOc8bhUAKOgjfVS@sashalap>
 <20210318192136.GA6178@openwall.com>
 <YFSyTOoNtyrQvrH3@sashalap>
 <20210319144311.GA22152@grsecurity.net>
 <YFTlezXaxyIRxcKN@sashalap>
 <20210319195825.GA28654@grsecurity.net>
 <YFULl+8RMJkYL67G@sashalap>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3V7upXqbjpZ4EhLz"
Content-Disposition: inline
In-Reply-To: <YFULl+8RMJkYL67G@sashalap>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper
 synchronization in flush_to_ldisc() can lead to DoS

--3V7upXqbjpZ4EhLz
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Sasha,

> So this CVE link above is exactly what I referred to: how do you go from
> CVE-2021-3428 to the commit in question?

For that particular one, the original email was:
https://seclists.org/oss-sec/2021/q1/212
to which I had already replied here:
https://seclists.org/oss-sec/2021/q1/220

The investigation for that email took only a few minutes.  It didn't have to
be done via the CVE link, as https://bugzilla.suse.com/show_bug.cgi?id=3D11=
73485
was provided in the email.  At that link was the report from Wolfgang Frisc=
h.
A simple git log --grep "Wolfgang Frisch" -- fs/ext4 immediately gets you:

commit ce9f24cccdc019229b70a5c15e2b09ad9c0ab5d1
Author: Jan Kara <jack@suse.cz>
Date:   Tue Jul 28 15:04:34 2020 +0200

    ext4: check journal inode extents more carefully
=20=20=20=20
    Currently, system zones just track ranges of block, that are "important"
    fs metadata (bitmaps, group descriptors, journal blocks, etc.). This
    however complicates how extent tree (or indirect blocks) can be checked
    for inodes that actually track such metadata - currently the journal
    inode but arguably we should be treating quota files or resize inode
    similarly. We cannot run __ext4_ext_check() on such metadata inodes when
    loading their extents as that would immediately trigger the validity
    checks and so we just hack around that and special-case the journal
    inode. This however leads to a situation that a journal inode which has
    extent tree of depth at least one can have invalid extent tree that gets
    unnoticed until ext4_cache_extents() crashes.
=20=20=20=20
    To overcome this limitation, track inode number each system zone belongs
    to (0 is used for zones not belonging to any inode). We can then verify
    inode number matches the expected one when verifying extent tree and
    thus avoid the false errors. With this there's no need to to
    special-case journal inode during extent tree checking anymore so remove
    it.
=20=20=20=20
    Fixes: 0a944e8a6c66 ("ext4: don't perform block validity checks on the =
journal inode")
    Reported-by: Wolfgang Frisch <wolfgang.frisch@suse.com>

Or you could look at the comment from the bugzilla:
https://bugzilla.suse.com/show_bug.cgi?id=3D1173485#c6

which provided commit titles to grep for, including the one above.

For https://seclists.org/oss-sec/2021/q1/228, it was already familiar to me,
but visiting: https://bugzilla.redhat.com/show_bug.cgi?id=3DCVE-2020-35519
an (upstream) patch is included to net/x25/af_x25.c.  Even something very
basic like:
git log --grep "x25_bind" -- net/x25/af_x25.c gets you the same patch poste=
d:

commit 07632721dc2d4d2e30ec3010edfbd2f251884912
Author: Dan Carpenter <dan.carpenter@oracle.com>
Date:   Tue Dec 1 18:15:12 2020 +0300

    net/x25: prevent a couple of overflows
=20=20=20=20
    The .x25_addr[] address comes from the user and is not necessarily
    NUL terminated.  This leads to a couple problems.  The first problem is
    that the strlen() in x25_bind() can read beyond the end of the buffer.
=20=20=20=20
    The second problem is more subtle and could result in memory corruption.
    The call tree is:
      x25_connect()
      --> x25_write_internal()
          --> x25_addr_aton()
=20=20=20=20
    The .x25_addr[] buffers are copied to the "addresses" buffer from
    x25_write_internal() so it will lead to stack corruption.
=20=20=20=20
    Verify that the strings are NUL terminated and return -EINVAL if they
    are not.
=20=20=20=20
    Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
    Fixes: a9288525d2ae ("X25: Dont let x25_bind use addresses containing c=
haracters")
    Reported-by: "kiyin(=E5=B0=B9=E4=BA=AE)" <kiyin@tencent.com>
    Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
    Acked-by: Martin Schiller <ms@dev.tdt.de>
    Link: https://lore.kernel.org/r/X8ZeAKm8FnFpN//B@mwanda
    Signed-off-by: Jakub Kicinski <kuba@kernel.org>

I would expect stable maintainers to be capable of this same basic analysis=
 with similar
speed :)

Thanks,
-Brad

--3V7upXqbjpZ4EhLz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAEBCgAGBQJgVRDOAAoJEETRwPglJf5JgF0P/RTux9lV4xmobfjBoYCGUX5L
LDSJbH6UL9uCTf6aTxCFXsqT9/+Bu7ztk+BjkWCm3sxH/Z9BLg3xQv09Ox0uincc
Ye5kuHVWWhH6SUq7jZautj0tbD7whsSKBuw2ZDZFfQ9dVzXHePiHCuJoKqdpYi3u
X2bPw8dNKFrfwkwC4HYinIU6BwXoMBYxfOX0JHEr3PZ2dnMjwvOH7A7k8eStHC+k
vyUZwDhBoa0iB9kK/DMQ7UNI4Gt45V92yyjs7yfCMvtRfNQdEz//JYX/Prm966k/
iIE9ZAMCFcKGVpjgsRkHv4vgy2GsWqrtCWgieY8UB5DEmFsYH33aOVUwd4WwZnYB
YUjxT8FxhhGSxyKn8VJHfhTeq7PqQtiYWNMRfpS2g6msRmArEUS/vwtfwDFtmxHR
s0u/+WBGL3h8t8NyimGy4O9biaWRh6B7WFtfWw/PrlVsyzDzG3BBtha0XStJeReH
UvFqMnApSteuCEYQEhaL/GWHlpIPkgGZ9fYCJ+0FABzjdT+CQepRw5g8BxU5lNkZ
sbzouqAD/2xz5Cd5OVBC5w84itvEejX9/7bISeOSu2yULpXfLK/gZ20bp28WVAmV
c0Rx0dIUwydqwsuLf9WyUW4OGz1NSm4nciQOCGCuRCOZQCF1T7lbmHs4deOza3Wv
V2e4u8A5+sgjSEgWz8mH
=xUOF
-----END PGP SIGNATURE-----

--3V7upXqbjpZ4EhLz--
