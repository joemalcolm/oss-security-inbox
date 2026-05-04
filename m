Received: (qmail 15549 invoked by uid 550); 4 May 2026 01:07:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3139 invoked from network); 4 May 2026 00:29:42 -0000
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com
Organization: Gentoo
References: <ae2VyXO80nCO2JLC@qinghai>
User-Agent: mu4e 1.14.1; emacs 31.0.50
Date: Mon, 04 May 2026 01:29:26 +0100
Message-ID: <87o6iw9fvd.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="===-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: [oss-security] Fwd: mutt 2.3.2 released

--===-=-=
Content-Type: multipart/mixed; boundary="=-=-="

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

In the ChangeLog [0], all of these are listed as security fixes.

"""
2026-04-26 10:45:26 +0800  Kevin J. McCarthy  <kevin@8t8.us> (4a9c9248)

        * Update UPDATING file for 2.3.2 release.

M	UPDATING

2026-04-18 22:08:19 +0800  Kevin J. McCarthy  <kevin@8t8.us> (834c5a2e)

        * Fix IMAP auth_cram MD5 digest of secret to use memcpy().
=20=20=20=20=20=20=20=20
        For a secret longer than MD5_BLOCK_LEN, an MD5 digest is used inste=
ad.
        However, mutt was incorrectly using strfcpy() instead of memcpy() on
        the raw binary value returned by md5_buffer in hash_passwd.  If
        hash_passwd contained an '\0' it would result in the value being
        truncated.
=20=20=20=20=20=20=20=20
        Additionally, the strfcpy was truncating the hash_passwd by one byte
        regardless, due to passing a "size" of MD5_DIGEST_LEN when the data
        itself was length MD5_DIGEST_LEN.
=20=20=20=20=20=20=20=20
        This likely hasn't been a reported issue because:
        1. CRAM-MD5 is not used much anymore
        2. Most people likely don't have a password length greater than 64
           bytes.
=20=20=20=20=20=20=20=20
        Thanks to evilrabbit@tutamail.com for the security report.

M	imap/auth_cram.c

2026-04-18 22:40:46 +0800  Kevin J. McCarthy  <kevin@8t8.us> (12f54fe3)

        * Check for embedded nul in url_pct_decode().
=20=20=20=20=20=20=20=20
        Consider %00 an invalid character in a URL.
=20=20=20=20=20=20=20=20
        Thanks to evilrabbit@tutamail.com for the security report.
=20=20=20=20=20=20=20=20
        Reviewed-by: Alejandro Colomar <alx@kernel.org>

M	url.c

2026-04-18 22:36:37 +0800  Kevin J. McCarthy  <kevin@8t8.us> (f547a849)

        * Fix imap_auth_gss() security level size check and buf_size type.
=20=20=20=20=20=20=20=20
        Make sure send_token.length is 4 bytes before reading the data.
=20=20=20=20=20=20=20=20
        Fix the buf_size type to be uint32_t instead of long.  ntohl()
        operates on, and returns, a 32 bit unsigned integer.  Most
        architectures now use a 64-bit long.
=20=20=20=20=20=20=20=20
        I believe this only worked because in Little-Endian, the
        least-significant bits come first, so even though we were using 8
        bytes of send_token.value (4 of which were out of bounds) for the c=
ast
        to long, only the first 4 bytes were used to truncate to the uint32=
_t
        that ntohl() used.  Likewise when we converted htonl() further down.
=20=20=20=20=20=20=20=20
        Additionally, the comments indicate that mutt wasn't using buf_size=
 in
        any case, so perhaps that also explains the lack of bug reports.
=20=20=20=20=20=20=20=20
        Thanks to evilrabbit@tutamail.com for the security report.
=20=20=20=20=20=20=20=20
        Reviewed-by: Alejandro Colomar <alx@kernel.org>

M	imap/auth_gss.c

2026-04-18 21:54:34 +0800  Kevin J. McCarthy  <kevin@8t8.us> (fdc04a17)

        * Fix infinite loop in gpgme data_object_to_stream().
=20=20=20=20=20=20=20=20
        The code was not properly checking for a -1 return value in the rea=
d,
        leading to an infinite loop, and printing past the buffer value to =
the
        stream.
=20=20=20=20=20=20=20=20
        Thanks to evilrabbit@tutamail.com for the security report.
=20=20=20=20=20=20=20=20
        Reviewed-by: Alejandro Colomar <alx@kernel.org>

M	crypt-gpgme.c

2026-04-18 21:41:23 +0800  Kevin J. McCarthy  <kevin@8t8.us> (ebfa2969)

        * Fix NULL dereference in show_sig_summary().
=20=20=20=20=20=20=20=20
        Inside show_one_sig_status(), if the error code is GPG_ERR_NO_PUBKE=
Y,
        key is NULL.  However, show_sig_summary() doesn't check for a NULL =
key
        before dereferencing for the "key expired" case.
=20=20=20=20=20=20=20=20
        Thanks to evilrabbit@tutamail.com for the security report.
=20=20=20=20=20=20=20=20
        Thanks to Alejandro Colomar for his review and suggestion to keep t=
he
        ternary operator.
=20=20=20=20=20=20=20=20
        Reviewed-by: Alejandro Colomar <alx@kernel.org>

M	crypt-gpgme.c
"""

[0] https://gitlab.com/muttmua/mutt/raw/mutt-2-3-2-rel/ChangeLog

-------------------- Start of forwarded message --------------------
Date: Sun, 26 Apr 2026 12:34:17 +0800
From: "Kevin J. McCarthy" <kevin@8t8.us>
To: mutt-announce@mutt.org
Subject: mutt 2.3.2 released


--=-=-=
Content-Type: multipart/signed; boundary="==-=-="

--==-=-=
Content-Type: text/plain; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Mutt Users,

I've just released version 2.3.2.  Instructions for downloading are availab=
le
at <http://www.mutt.org/download.html>, or the tarball can be directly
downloaded from <http://ftp.mutt.org/pub/mutt/>.  Please take the time to
verify the signature file against my public key[1].

Please note that my public key expired a few weeks ago, however I
updated the expiration date.  If you are receiving an expired key
notice, please refresh your keyring, or just import my key again from
one of the sources below.

This release fixes an assortment of issues, including a possible segv in
the GPGME code.  For more details see the commits:

834c5a2e  Fix IMAP auth_cram MD5 digest of secret to use memcpy().
12f54fe3  Check for embedded nul in url_pct_decode().
f547a849  Fix imap_auth_gss() security level size check and buf_size type.
fdc04a17  Fix infinite loop in gpgme data_object_to_stream().
ebfa2969  Fix NULL dereference in show_sig_summary().

Thanks to evilrabbit for reporting issues.  And thanks to my fellow=20
mutt-dev'ers for helping discuss, review code, and test the fixes.

-Kevin

[1]
My public key is available at:
    - my personal website: https://8t8.us/configs/80316BDA.asc.pubkey
    - the mutt website: http://www.mutt.org/keys/kevin.key
    - The keys.openpgp.org network
      https://keys.openpgp.org/vks/v1/by-fingerprint/8975A9B33AA37910385C53=
08ADEF768480316BDA

--==-=-=
Content-Type: application/pgp-signature; name=signature.asc
Content-Transfer-Encoding: base64

LS0tLS1CRUdJTiBQR1AgU0lHTkFUVVJFLS0tLS0KCmlRSXpCQUVCQ2dBZEZpRUVpWFdwc3pxamVS
QTRYRk1JcmU5MmhJQXhhOW9GQW1udGxja0FDZ2tRcmU5MmhJQXgKYTlxZFZoQUFzQlBaSEpqOWlu
b25LbGNuR1ZLQVdpVFlUQ2pLQnRCOVdwYVNpQmlPRFdDcEJHV0VhT3B6MzFBdgpZMlZmeEU4ekUw
enRVVXhMaEZHMStaQWpwclRxMnlTTG9GRk9OYjdTcmE2cU1xeE9LVjZxK09oZnNhZG9WQUMzCjgz
YlRKZ3Y1dG5na3F2bVFIZUlhWFh1Mno2MmRPSFBlcXR0LzEra29CL0UyNHN3QTd1UDJBOGs0TXlt
SXJSV0wKOGZ1UnZ2RkR4TzJjSUk2VUhWc3NBR3c3S3JGVmhuajhEaCtSUHJCdnVGVjFvZGNsQVJU
YzNSUzlQVE5sNjREUApVcWRkenY0ajBITWlhRkdFNHdrVE1DbWdRdC90WEEyejdsN3JpY1lXVVBo
V3lldG9peEhNdUJzVVdadzFIY3FtCjJHeDZXTVFobzVtWlI2VCtsaWFGVUtDL1ZrM2VhOUsreENh
dlZCUmwxZmRPQUJ2NjJuR1RuRzZ2K3Y0NFZqQWkKWVlNQzQzamt2eHRxbWhIbVRTTDRQbkcrQXJD
Wi9sWlA2empKd0p5Z3VxcmFVT0FqTkphTGRlNDBoM01IV0FnVApKRTB1cmgvS20vcW1kdU9VK0Jz
Wjk4ZWVBaG04WkkrWmVGSm5oMjQwKzVMV0hia3hEM3VZdEwvYXF6cG9Wam8wCldKaG03YjRFczNB
VHp1OS9DY2o3SEgyT25XbTJuY3g3dFZ2SVV1U2NKTUU4UG5SejdQdnphRGg2ZnR4SU56UnUKWkJX
R25sNGp3eVRSOEZjSHF3dkZGYy9yU2hKcTBiTGhLdzRPOTM2aHBMeUdBVnZVeGNmVis4N0RtdHYx
cHZjZQpMMldlT0FyL0dNbE9rNTBlQ0RKZ1JnSHBKMlRIc2NBVmdDMnZvdmVGMzhrOTBXY2s2TTg9
Cj1aTXlKCi0tLS0tRU5EIFBHUCBTSUdOQVRVUkUtLS0tLQo=

--==-=-=--

--=-=-=
Content-Type: text/plain

-------------------- End of forwarded message --------------------

--=-=-=--

--===-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEBBAEWCgCpFiEEJaa7iN2bdkxrVUHCc4QJ9SDfkZAFAmn36GYbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25z
Lm9wZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQyNUE2QkI4OEREOUI3NjRDNkI1NTQx
QzI3Mzg0MDlGNTIwREY5MTkwDxxzYW1AZ2VudG9vLm9yZwAKCRBzhAn1IN+RkLHv
AQCDl/fl3wnENCDxNQf1jLF0EE9ArvfJ3Y740lSPSK6/fAD9HkBmb1J/Ffuhqkt9
pXAqrbyWTio4HZpgSSYYs+23MAU=
=fvcY
-----END PGP SIGNATURE-----
--===-=-=--
