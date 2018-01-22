X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6061" "Monday" "22" "January" "2018" "22:42:53" "+1300" "Amos Jeffries" "squid3@treenet.co.nz" "<0a99b9a5-e47c-1cf4-dc8a-59557ae32ab3@treenet.co.nz>" "171" "[oss-security] SQUID-2018:2 Denial of Service issue in HTTP Message processing" nil nil nil "1" "2018012209:42:53" "[oss-security] SQUID-2018:2 Denial of Service issue in HTTP Message processing" (number mark "U       squid3@treen Jan 22  171/6061  " thread-indent "\"[oss-security] SQUID-2018:2 Denial of Service issue in HTTP Message processing\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27851 invoked by uid 550); 22 Jan 2018 11:37:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12113 invoked from network); 22 Jan 2018 09:43:05 -0000
From: Amos Jeffries <squid3@treenet.co.nz>
To: oss-security@lists.openwall.com
Message-ID: <0a99b9a5-e47c-1cf4-dc8a-59557ae32ab3@treenet.co.nz>
Date: Mon, 22 Jan 2018 22:42:53 +1300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.2
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="lcBJTw5hr4xkS9bQ5vC0Bu1hPsbz5umrP"
Subject: [oss-security] SQUID-2018:2 Denial of Service issue in HTTP Message processing

--lcBJTw5hr4xkS9bQ5vC0Bu1hPsbz5umrP
Content-Type: multipart/mixed; boundary="dDeDBzKNmKMXHWLCKxXV7jnWCx1xlLyPh";
 protected-headers="v1"
From: Amos Jeffries <squid3@treenet.co.nz>
To: oss-security@lists.openwall.com
Message-ID: <0a99b9a5-e47c-1cf4-dc8a-59557ae32ab3@treenet.co.nz>
Subject: SQUID-2018:2 Denial of Service issue in HTTP Message processing

--dDeDBzKNmKMXHWLCKxXV7jnWCx1xlLyPh
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Notes for OSS-Security people:

* CVE has been requested through DWF, waiting on assignment.

* The patch for Squid-3.5 should also be applicable for most other
Squid-3.x releases.

* The patch for Squid-4 is provided for anyone having to use older betas
if any unrelated issues prevent an upgrade. This being a beta release
series at present the preferred option is upgrade.

__________________________________________________________________

    Squid Proxy Cache Security Update Advisory SQUID-2018:2
__________________________________________________________________

Advisory ID:        SQUID-2018:2
Date:               Jan 19, 2018
Summary:            Denial of Service issue
                    in HTTP Message processing.
Affected versions:  Squid 3.x -> 3.5.27
                    Squid 4.x -> 4.0.22
Fixed in version:   Squid 4.0.23
__________________________________________________________________

    http://www.squid-cache.org/Advisories/SQUID-2018_2.txt
__________________________________________________________________

Problem Description:

 Due to incorrect pointer handling Squid is vulnerable to denial
 of service attack when processing ESI responses or downloading
 intermediate CA certificates.

__________________________________________________________________

Severity:

 This problem allows a remote client delivering certain HTTP
 requests in conjunction with certain trusted server responses to
 trigger a denial of service for all clients accessing the Squid
 service.

__________________________________________________________________

Updated Packages:

 This bug is fixed by Squid version 4.0.23.

 In addition, patches addressing this problem for the stable
 releases can be found in our patch archives:

Squid 3.5:
 <http://www.squid-cache.org/Versions/v3/3.5/changesets/SQUID-2018_2.patch>

Squid 4:
 <http://www.squid-cache.org/Versions/v4/changesets/SQUID-2018_2.patch>

 If you are using a prepackaged version of Squid then please refer
 to the package vendor for availability information on updated
 packages.

__________________________________________________________________

Determining if your version is vulnerable:

 All Squid configured with "log_uses_indirect_client off" are not
 vulnerable.

 All Squid-3.0 versions built with --enable-esi and being used for
 reverse-proxy with squid.conf containing
 "log_uses_indirect_client on" are vulnerable.

 All Squid-3.1 and later versions up to and including
 Squid-3.5.27 being used for reverse-proxy with squid.conf
 containing "log_uses_indirect_client on" are vulnerable.

 All Squid-4 up to and including Squid-4.0.22 being used for
 reverse-proxy with squid.conf containing
 "log_uses_indirect_client on" are vulnerable.

 All unpatched Squid-4 up to and including Squid-4.0.22 being
 used for TLS/HTTPS intercept proxy with squid.conf containing
 "log_uses_indirect_client on" are vulnerable.

__________________________________________________________________

Workarounds:

 Configure "log_uses_indirect_client off" in squid.conf

__________________________________________________________________

Contact details for the Squid project:

 For installation / upgrade support on binary packaged versions
 of Squid: Your first point of contact should be your binary
 package vendor.

 If your install and build Squid from the original Squid sources
 then the squid-users@lists.squid-cache.org mailing list is your
 primary support point. For subscription details see
 <http://www.squid-cache.org/Support/mailing-lists.html>.

 For reporting of non-security bugs in the latest STABLE release
 the squid bugzilla database should be used
 <http://bugs.squid-cache.org/>.

 For reporting of security sensitive bugs send an email to the
 squid-bugs@lists.squid-cache.org mailing list. It's a closed
 list (though anyone can post) and security related bug reports
 are treated in confidence until the impact has been established.

__________________________________________________________________

Credits:

 The initial issue was reported by Louis Dion-Marcil on behalf of
 GoSecure.

 Fixed by Amos Jeffries from Treehouse Networks Ltd.

__________________________________________________________________

Revision history:

 2017-12-13 20:09:30 UTC Initial Report
 2018-01-18 23:10:00 UTC Patches Released
 2018-01-21 07:45:00 UTC Advisory and fixed packages released
__________________________________________________________________
END


--dDeDBzKNmKMXHWLCKxXV7jnWCx1xlLyPh--

--lcBJTw5hr4xkS9bQ5vC0Bu1hPsbz5umrP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEAimzwkzOwlQSfJUyANhjZ5QgvdMFAlplsh0ACgkQANhjZ5Qg
vdMEQRAApgvPMa3lyoaii4409Zxg8tBrAxMjEUPBKcjtGW4FkW2AXX4DgKtZPiQ7
fFHZvVhNtl5wYnwVdzrel1u6EitwZqX1GTJ67lzsdWVaxOZtjXh7BF5Wsxqo/T65
7n0iH4aUQlh9lRaPP7rzrWQ/f4oPKdQ/ak+vkXKL8H7toNSXCNKQQWlaf0ugeUQZ
nHauOvMIdoie3GVByY0Rj0/4/fbPbRwF3vw+m1f6aSG56NlCPV6+u4z6sGhckFh8
sJ1416tN7M/MqNCdq9g4DmVhiTcMZbhoj5qAqOVDHQlvMn63Iy3m9oV8ewTaQMRq
f6VBfmBC3W+ifMQ8pfSCWMmAGnYGvlA5Z0sa+R4JqKhrujUAjZxRwWS13cOxwf/K
NFEYYczY3ro2kFflrpYzEwIE56+G7z6ycu/nWQjqPC+LF2guOueAR8a3vHZCsjlm
blgklTRBBRiAGaFEzNzUCpbZA3j/WCjKdKbs+9Cav280QSNvlaP3DgYrOUs89kYS
NLYDcyiFiQ+B23STs5yt/jZdFhOEZM6D7x+PBUqtQFMzHEB2rGDVDrZrznw48Nfd
TZ7aAmmspDc/OXT5qz7n7K78TozDmKRgVgQqP0JJ9ZmY73Xql5kC48Xd44l/Nrth
q5Kjt0acLJzEED4mddOkdSaNH+/ct3o6OsrM31ivRCmwk85Xog4=
=DdHB
-----END PGP SIGNATURE-----

--lcBJTw5hr4xkS9bQ5vC0Bu1hPsbz5umrP--
