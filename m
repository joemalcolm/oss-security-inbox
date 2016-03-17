X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1508" "Thursday" "17" "March" "2016" "14:27:54" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160317182754.6BA383AE057@smtpvbsrv1.mitre.org>" "37" "[oss-security] Re: [cairo] Out-of-bounds read in _fill_xrgb32_lerp_opaque_spans" "^Cc:" nil nil "3" "2016031718:27:54" "[oss-security] Re: [cairo] Out-of-bounds read in _fill_xrgb32_lerp_opaque_spans" (number mark "        cve-assign@m Mar 17   37/1508  " thread-indent "\"[oss-security] Re: [cairo] Out-of-bounds read in _fill_xrgb32_lerp_opaque_spans\"\n") "<CACn5sdQkwhYxJM=cugtjrzpwW0_aVn=QyRpCbuJrVqTDJyGjag@mail.gmail.com>" ("<CACn5sdQkwhYxJM=cugtjrzpwW0_aVn=QyRpCbuJrVqTDJyGjag@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17619 invoked by uid 550); 17 Mar 2016 18:28:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17505 invoked from network); 17 Mar 2016 18:28:08 -0000
In-Reply-To: <CACn5sdQkwhYxJM=cugtjrzpwW0_aVn=QyRpCbuJrVqTDJyGjag@mail.gmail.com>
Message-Id: <20160317182754.6BA383AE057@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 17 Mar 2016 14:27:54 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: [cairo] Out-of-bounds read in _fill_xrgb32_lerp_opaque_spans
To: gustavo.grieco@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> There is an out-of-bounds read in _fill_xrgb32_lerp_opaque_spans in cairo
> (crashing software that parses and renderizes a svg, for instance).
> 
> https://mail.gnome.org/archives/gnome-announce-list/2015-March/msg00047.html
> 
>   * Fix crash in _fill_xrgb32_lerp_opaque_spans when a span length is
>     negative.
> 
> https://cgit.freedesktop.org/cairo/patch/src/cairo-image-compositor.c?id=5c82d91a5e15d29b1489dcb413b24ee7fdf59934

Use CVE-2016-3190.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW6va/AAoJEL54rhJi8gl55wMP+wdDN0WUoBXS6Yt/8taiUQu6
iMKjMjEYZgd9vEgywQSRwmU4gEdAHWYDI23kKxNifiRAnSpyKeAKk31Y4NFxUMqu
bNsqmKVNNSZpC05K7mw3Akqng0EnZDS3p+Kxbbu5N8w8h/1CcHxlxnmYMf2qJ0zH
f5pn9bUskiWwL+WnxreqfrDR+x4iaixCfA8H52eyctb/6IeJc3awUTLkVYPtFEdK
xoPqhcZThFy5W+LVtP/+XXulFKoYPGGBkcolh6rurnhygmaZtrXe1NjtSR+Eb1qt
oPa2XiB5gofaXxtxq+QZmy2hQX+YKh+xoeAbpG/s8UPjOKi337BCw9jQlJGQzGpv
OoGDqc/F3rS11Wj5OGfTIoxGP7xkgZp9Zlgk38V3FaPbYnC/juzW6OQIozi/64Br
qF7h9cKl7QVQ+s1dqcAzuUk9ikpMy3tAV1OU+qexShBHPCwVn4/WSJ2H4PU3X/Bh
PHVwuFfoFWUrVqKsGKREsLpGIWxe8loEtFF4MjubSVMnhUUbpaQcli9ILy/yPC7G
QFVB6PklecJQ56k1Rk3eV5IFiAN3HDfT08shv1jWVHeVsOCWRCmGNKJdJKH2oL23
X8JvWB6R9fqMbjTb3krde1xe59vRsZzGRtjaPWwbqEmYOIsPyPIw6pQZP7GyJvC2
bRx6I2/qIfvVIUcsImnq
=DUiy
-----END PGP SIGNATURE-----
