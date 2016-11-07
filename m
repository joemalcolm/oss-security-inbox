X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4171" "Monday" "7" "November" "2016" "06:35:31" "-0500" "Andreas Stieger" "astieger@suse.com" "<3c64dbd2-0216-88f5-d2d1-b2445c7b63f1@suse.com>" "112" "[oss-security] CVE-2016-8637: dracut creates world readble initramfs when early cpio is used" nil nil nil "11" "2016110711:35:31" "[oss-security] CVE-2016-8637: dracut creates world readble initramfs when early cpio is used" (number mark "U       astieger@sus Nov  7  112/4171  " thread-indent "\"[oss-security] CVE-2016-8637: dracut creates world readble initramfs when early cpio is used\"\n") "<0304f5ed-5f94-8b00-de45-8a54a28c7283@suse.com>" ("<0304f5ed-5f94-8b00-de45-8a54a28c7283@suse.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26525 invoked by uid 550); 7 Nov 2016 11:35:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26505 invoked from network); 7 Nov 2016 11:35:52 -0000
References: <0304f5ed-5f94-8b00-de45-8a54a28c7283@suse.com>
To: oss-security@lists.openwall.com
From: Andreas Stieger <astieger@suse.com>
Organization: SUSE Linux GmbH
X-Forwarded-Message-Id: <0304f5ed-5f94-8b00-de45-8a54a28c7283@suse.com>
Message-ID: <3c64dbd2-0216-88f5-d2d1-b2445c7b63f1@suse.com>
Date: Mon, 7 Nov 2016 06:35:31 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <0304f5ed-5f94-8b00-de45-8a54a28c7283@suse.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="xWlpKag0ANh7uBRiC07bp0V4kX71qVrjd"
Subject: [oss-security] CVE-2016-8637: dracut creates world readble initramfs when early cpio
 is used

--xWlpKag0ANh7uBRiC07bp0V4kX71qVrjd
Content-Type: multipart/mixed; boundary="56rlSsP1PBQM0NTRi2VC4HWHDcGMMoFov";
 protected-headers="v1"
From: Andreas Stieger <astieger@suse.com>
To: oss-security@lists.openwall.com
Message-ID: <3c64dbd2-0216-88f5-d2d1-b2445c7b63f1@suse.com>
Subject: CVE-2016-8637: dracut creates world readble initramfs when early cpio
 is used
References: <0304f5ed-5f94-8b00-de45-8a54a28c7283@suse.com>
In-Reply-To: <0304f5ed-5f94-8b00-de45-8a54a28c7283@suse.com>

--56rlSsP1PBQM0NTRi2VC4HWHDcGMMoFov
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,

An openSUSE community user reported a permissions oddity with his
initramfs. Upon further analysis this issued turns out to be a local
information disclosure issue in dracut.

SUSE bug: https://bugzilla.suse.com/show_bug.cgi?id=3D1008340

Dracut generates initramfs images with world-readable permissions when
using "early cpio", such as when including microcode updates. Local
users may use this to obtain information from these files, typically
encryption keys and network storage credentials.

E.g. in dracut 037 https://github.com/dracutdevs/dracut/blob/037/dracut.sh

if [[ $create_early_cpio =3D yes ]]; then
    echo 1 > "$early_cpio_dir/d/early_cpio"
    # The microcode blob is _before_ the initramfs blob, not after
    (cd "$early_cpio_dir/d";     find . -print0 | cpio --null
$cpio_owner_root -H newc -o --quiet > $outfile)
fi
if ! ( umask 077; cd "$initdir"; find . -print0 | cpio --null
$cpio_owner_root -H newc -o --quiet | \
    $compress >> "$outfile"; ); then
    dfatal "dracut: creation of $outfile failed"
    exit 1
fi

The permissions of the output file depend on umask at creation time, and
appending to an existing file does not change them. create_early_cpio is
set to on when microcode updates are being used.

The very similar vulnerability CVE-2012-4453 was reported and fixed in 024:
http://git.kernel.org/cgit/boot/dracut/dracut.git/commit/?id=3De1b48995c26c=
4f06d1a718539cb1bd5b0179af91

However the addition of microcode update support in 030 re-introduced
the issue:
http://git.kernel.org/cgit/boot/dracut/dracut.git/commit/?id=3D5f2c30d9bcd6=
14d546d5c55c6897e33f88b9ab90

The vulnerability remains in current git master, which does something
along the lines of:

if [early_cpio]
   cpio [...] > ${DRACUT_TMPDIR}/initramfs.img
umask 0077
cpio [...] >> ${DRACUT_TMPDIR}/initramfs.img
cp --reflink=3Dauto "${DRACUT_TMPDIR}/initramfs.img" "$outfile"

Our fix in upstream master:
http://git.kernel.org/cgit/boot/dracut/dracut.git/commit/?id=3D0db98910a11c=
12a454eac4c8e86dc7a7bbc764a4

CVE-2016-8637 was assigned to this issue.

The local workaround is to adjust the permissions of the initramfs files
manually, and all back-ported patches will set umask to a suitable value
such as 077 prior to first writing the file.

For the SUSE Security Team,
Andreas Stieger

--=20
Andreas Stieger <astieger@suse.com>
Project Manager Security
SUSE Linux GmbH, GF: Felix Imend=C3=B6rffer, Jane Smithard, Graham Norton,
HRB 21284 (AG N=C3=BCrnberg)




--56rlSsP1PBQM0NTRi2VC4HWHDcGMMoFov--

--xWlpKag0ANh7uBRiC07bp0V4kX71qVrjd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJYIGcKAAoJECzWqVXhWUVGl3wP+gIWbYeYdITxeyoVhz7cqWfH
y8T0PtAU7zEMDUSPFb0FsXzgbg+OlGKloUeLc99KxTtV2rLMwn7MqrPQqqiLG/Kj
tJksDLs+Pf3gc5ejtZDa2XAzhJHldPqa9bFB4d88MzvQK/UPF3Uws3zrFnNpPeWn
5ki7PrdCdU2tFxZZYhGqxFKfJjVkDxf5MbybwKwlacAlw58z+yUS/PmbUbBu7zwS
IBRDxWBHrjlKcGZ2AldSj4qbV+kMOaN+WljZdwRfmw9XmvuTi8IG2AugUplR4vkQ
x4OTckkGtIh+Z5YJSWAZJqKx3EpGqJJNTXft4sjdeCdrfZ6CWXLOsvP04DHfNres
7JVoV7OdggfjcZw9F5huY8wyGrrfqm3NKD2tVcFju8bjgfmyY6sdQv6C242Veoov
vidtL2tDSWC0Nhj5MTybuV8kMyqX+Z6H7l8c9PwgoO6KgudmvKoRUSBTaE9HGbFx
u6LeoC1gHr2cZ1+1KkMsyZU41maMh6CPV3OATrV8ffyrIvaoN4xNpdN+QXNSXa+d
Zb+ntYj+SMpjeUfK/g0iAVRLFHSsPwS6YGIg5HRM2aSdwp1W46T1rdYhRDffmdUN
FtdJnz3UtR6WLV2dI0pnfKRmiyYFWzeC8StyXyyeq9KBFSwbFiVWEJgFSWyJG+iq
hdinTPbpKNiFe/hAh7Xs
=dETh
-----END PGP SIGNATURE-----

--xWlpKag0ANh7uBRiC07bp0V4kX71qVrjd--
