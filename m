X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3339" "Thursday" "30" "July" "2015" "12:25:12" "+1000" "Dave Chinner" "david@fromorbit.com" "<20150730022512.GM16638@dastard>" "76" "[oss-security] Re: CVE-2012-2150 xfsprogs: xfs_metadump information disclosure flaw" nil nil nil "7" "2015073002:25:12" "[oss-security] Re: CVE-2012-2150 xfsprogs: xfs_metadump information disclosure flaw" (number mark "U       david@fromor Jul 30   76/3339  " thread-indent "\"[oss-security] Re: CVE-2012-2150 xfsprogs: xfs_metadump information disclosure flaw\"\n") "<55B0FD01.1080602@redhat.com>" ("<55B0FD01.1080602@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11714 invoked by uid 550); 30 Jul 2015 02:39:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21658 invoked from network); 30 Jul 2015 02:25:28 -0000
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2A6CgBTirlVPG0mLHlbgxpUaYJViiOcBAEBAQEBB5ULhXMEAgKBWE0BAQEBAQEHAQEBAUE/hCQBAQRWIxAIAw4KCSUPBSUDBxoTiC0OzxQBAQEBAQUBAQEBHhmGBoUvgT2BL4IbB4QsBZRyhHpmhmKBR4QgiFeKdIEKgSoND4FlLDEBgksBAQE
Date: Thu, 30 Jul 2015 12:25:12 +1000
From: Dave Chinner <david@fromorbit.com>
To: Kurt Seifried <kseifried@redhat.com>
Cc: oss-security@lists.openwall.com
Message-ID: <20150730022512.GM16638@dastard>
References: <55B0FD01.1080602@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Clx92ZfkiYIKRjnr"
Content-Disposition: inline
In-Reply-To: <55B0FD01.1080602@redhat.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [oss-security] Re: CVE-2012-2150 xfsprogs: xfs_metadump information disclosure flaw

--Clx92ZfkiYIKRjnr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 23, 2015 at 08:41:05AM -0600, Kurt Seifried wrote:
> https://bugzilla.redhat.com/show_bug.cgi?id=3D817696
>=20
> Gabriel Vlasiu reported that xfs_metadump, part of the xfsprogs suite of
> tools for the XFS filesystem, did not properly obfuscate data.
> xfs_metadump properly obfuscates active metadata, but the rest of the
> space within that fs block comes through in the clear.  This could lead
> to exposure of stale disk data via the produced metadump image.
>=20
> The expectation of xfs_metadump is to obfuscate all but the shortest
> names in the metadata, as noted in the manpage:
>=20
> By  default,  xfs_metadump  obfuscates  most  file (regular file,
> directory and symbolic link) names and extended  attribute  names to
> allow  the  dumps  to be sent without revealing confidential
> information. Extended attribute values are zeroed and no data  is
> copied.  The only exceptions are file or attribute names that are 4 or
> less characters in length. Also file names that span extents (this can
> only occur with the mkfs.xfs(8) options where -n size > -b size) are not
> obfuscated.  Names between 5 and 8 characters  in length
> inclusively are partially obfuscated.
>=20
> While the xfs_metadump tool can be run by unprivileged users, it
> requires appropriate permissions to access block devices (such as root)
> where the sensitive data might be dumped.  An unprivileged user, without
> access to the block device, could not use this flaw to obtain sensitive
> data they would not otherwise have permission to access.
>=20
> Upstream patches will be available at
> https://git.kernel.org/cgit/fs/xfs/xfsprogs-dev.git/

I have just released xfsprogs v3.2.4 to address these issues. Please
see the release announcement here for details on where to find it:

http://oss.sgi.com/pipermail/xfs/2015-July/042726.html

-Dave.

PS: A comment on the CVE disclosure process: please ensure that the
upstream maintainer is informed of the CVE and the public disclosure
plan *before* disclosure occurs.  Apart from preventing co-ordinated
release of the fixes, failing to inform the maintainer of the
problem before public disclosure is impolite and disrespectful.

--=20
Dave Chinner
david@fromorbit.com

--Clx92ZfkiYIKRjnr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAEBAgAGBQJVuYsHAAoJEK3oKUf0dfodEdIQAMNaXPFRSLWoip67QWADmy9H
tYBbQyTnQSutHchb3s4Zmqqe7kF1tBIWVOi/OoMg6NFiD0C9Hi5jHojLsvaEPzGc
Hf3lzEbdc9+a6/prf9jTcD2szQ6u9/bgji0WcfWGcOPYF57hsfEdEnQzJ1hXcyN1
X97VMvk3TNrqXyTB1hPsNSzysvIDnNnbjLIeUdYjhQqe64E8HDhdYhJLJa9gID4o
izV+5xx878R2IrwX9H9tnxilPT0w4NCLN6aj/JlHbPSDdiEsc9kNW2aO0FYpSktz
wI7p6kEDXN0j5X8jJ3h9zceLZuXoC8K31Bi3NM/5s+PPbGITV0Cx9hJhZzQqArqH
2OAQHXbot/nT1zz/KlB+hEYOaXkcptneRujJbWMTi5C0zxTtw+5hZvg/E8KBdT4E
VR76mJA+NFC3U0BhytFiFGLLB8g9RYm/0eqy2FXu0tJ29OhPaHuzYGSN68ZYDIRP
eoX+KZDK68Zw2PqXKkzqxHTjI8m8v24ge5UmDfeSq1Byp9rjVhaoRyBlwpv2Udyt
DzyCOv/vUDXbPu1jMWz/w5hgSaNnDHTl57zclHGhYNOd83J577I9iDfShLnVYnOH
hnVVPb+9GjgcXvKDie5/apz1f8loEcoV/qV1UAHQ1Q3nNqIsPcMrNR7qBkMyntzB
JOdTxc5AkaiMbgTmm1+m
=UEuc
-----END PGP SIGNATURE-----

--Clx92ZfkiYIKRjnr--
