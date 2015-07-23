X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2890" "Thursday" "23" "July" "2015" "08:41:05" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<55B0FD01.1080602@redhat.com>" "64" "[oss-security] CVE-2012-2150 xfsprogs: xfs_metadump information disclosure flaw" nil nil nil "7" "2015072314:41:05" "[oss-security] CVE-2012-2150 xfsprogs: xfs_metadump information disclosure flaw" (number mark "U       kseifried@re Jul 23   64/2890  " thread-indent "\"[oss-security] CVE-2012-2150 xfsprogs: xfs_metadump information disclosure flaw\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21794 invoked by uid 550); 23 Jul 2015 14:41:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21776 invoked from network); 23 Jul 2015 14:41:19 -0000
Message-ID: <55B0FD01.1080602@redhat.com>
Date: Thu, 23 Jul 2015 08:41:05 -0600
From: Kurt Seifried <kseifried@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: oss-security@lists.openwall.com, david@fromorbit.com
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="nUJKBgVhWIEfvADjc1kWgFrILJN6EGlLa"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Subject: [oss-security] CVE-2012-2150 xfsprogs: xfs_metadump information disclosure flaw

--nUJKBgVhWIEfvADjc1kWgFrILJN6EGlLa
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

https://bugzilla.redhat.com/show_bug.cgi?id=3D817696

Gabriel Vlasiu reported that xfs_metadump, part of the xfsprogs suite of
tools for the XFS filesystem, did not properly obfuscate data.
xfs_metadump properly obfuscates active metadata, but the rest of the
space within that fs block comes through in the clear.  This could lead
to exposure of stale disk data via the produced metadump image.

The expectation of xfs_metadump is to obfuscate all but the shortest
names in the metadata, as noted in the manpage:

By  default,  xfs_metadump  obfuscates  most  file (regular file,
directory and symbolic link) names and extended  attribute  names to
allow  the  dumps  to be sent without revealing confidential
information. Extended attribute values are zeroed and no data  is
copied.  The only exceptions are file or attribute names that are 4 or
less characters in length. Also file names that span extents (this can
only occur with the mkfs.xfs(8) options where -n size > -b size) are not
obfuscated.  Names between 5 and 8 characters  in length
inclusively are partially obfuscated.

While the xfs_metadump tool can be run by unprivileged users, it
requires appropriate permissions to access block devices (such as root)
where the sensitive data might be dumped.  An unprivileged user, without
access to the block device, could not use this flaw to obtain sensitive
data they would not otherwise have permission to access.

Upstream patches will be available at
https://git.kernel.org/cgit/fs/xfs/xfsprogs-dev.git/

--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com


--nUJKBgVhWIEfvADjc1kWgFrILJN6EGlLa
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVsP0CAAoJEBYNRVNeJnmTHFwP/Akr7Vv7NN5b+eV6GPSu8+Fl
IMLllZrOdityTdY7bzQGxmJNhOIjqGUHajTvQ4P/rxmLUGYk9asmkL3055eZ0u1s
qstbXGfJxHcf4naf8Sg/0EYbSGHVNv3oJ3wIQoyuGJOBeHh9fRkrR9PXI+eMII4s
KBWzqYLuCzl13LR50BAxQlY0C1oOAGX5zc7bkM5xXDOa0NO9UtKJWz3r1QFzPYG9
Du1moWpozDvuH/zYjKDtNDk6wTCmYIt0SECxsMzBEioH9Fk44EbQE28cO+2hZo5s
r2ADK1rivrkXzkbzT4AhdP3ykEih5Ln/Ouz5RVW0UsiNcTuUwOKhLGRrJfb7awmb
a4ChyBfCBeCSoE1xjVxxxaSVNduO9HnZPqDO+VW2k/XMcShd2f8Wm7jnHP4U44x8
waTOp2WFCurRG9mysXPIlqT7CqbXynqZB63zurMhMU58RTA+xPjXFujl95Or9OBW
WgwcCO083gY0z12GZZlt36xM4s/uuz/YdRNs6rN7tecBnta7nB/LgrzB3srfcUp6
jqKbDjqrrJ14yONHwf3LTFEj0/MfJJEOY4fDyftt1lkcE38LzNjSTscEQdGWPIrM
/U2NMGYqFWx3S3HwuAinaoknjA9WmVLIRizCp/9J+YQqp+058SZT1RzlgEx09zhw
eXvBYRT2nrJh4a/PQRLB
=BmVd
-----END PGP SIGNATURE-----

--nUJKBgVhWIEfvADjc1kWgFrILJN6EGlLa--
