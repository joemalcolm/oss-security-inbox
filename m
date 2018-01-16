X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2528" "Tuesday" "16" "January" "2018" "15:25:46" "-0600" "ISC Security Officer" "security-officer@isc.org" "<e8547db4-2186-98a4-0247-de855e202879@isc.org>" "63" "[oss-security] New vulnerability in ISC BIND announced (CVE-2017-3145)" nil nil nil "1" "2018011621:25:46" "[oss-security] New vulnerability in ISC BIND announced (CVE-2017-3145)" (number mark "U       security-off Jan 16   63/2528  " thread-indent "\"[oss-security] New vulnerability in ISC BIND announced (CVE-2017-3145)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9722 invoked by uid 550); 16 Jan 2018 21:43:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16377 invoked from network); 16 Jan 2018 21:26:11 -0000
From: ISC Security Officer <security-officer@isc.org>
To: oss-security@lists.openwall.com
Cc: ISC Security Officer <security-officer@isc.org>
Message-ID: <e8547db4-2186-98a4-0247-de855e202879@isc.org>
Date: Tue, 16 Jan 2018 15:25:46 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
 Gecko/20100101 Thunderbird/52.5.2
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="br19ng90ttRM7cEKvqu9BEXXdWK5k72YT"
Subject: [oss-security] New vulnerability in ISC BIND announced (CVE-2017-3145)

--br19ng90ttRM7cEKvqu9BEXXdWK5k72YT
Content-Type: multipart/mixed; boundary="jd2WgSm5HJ4vyckoVxrb9cXULnYM4Qbtp";
 protected-headers="v1"
From: ISC Security Officer <security-officer@isc.org>
Reply-To: security-officer@isc.org
To: oss-security@lists.openwall.com
Cc: ISC Security Officer <security-officer@isc.org>
Message-ID: <e8547db4-2186-98a4-0247-de855e202879@isc.org>
Subject: New vulnerability in ISC BIND announced (CVE-2017-3145)

--jd2WgSm5HJ4vyckoVxrb9cXULnYM4Qbtp
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Please be advised that ISC public announced a vulnerability in ISC BIND.

CVE-2017-3145 is a denial-of-service vector which can potentially be
exploited against ISC BIND servers, causing them to crash.  The
underlying flaw has existed since BIND 9.0.0 but is not known to be
reachable in any version prior to those containing the fix for
CVE-2017-3137 [9.9.9-P8 to 9.9.11, 9.10.4-P8 to 9.10.6, 9.11.0-P5 to
9.11.2, 9.9.9-S10 to 9.9.11-S1, 9.10.5-S1 to 9.10.6-S1, and 9.12.0a1 to
9.12.0rc1], and then only when acting as DNSSEC validating resolvers.

Our full CVE text can be found at https://kb.isc.org/article/AA-01542

New releases of ISC BIND, including security fixes for this
vulnerability, are available at: https://www.isc.org/downloads/

Release notes can be obtained using the following links:

ftp://ftp.isc.org/isc/bind9/9.9.11-P1/RELEASE-NOTES-bind-9.9.11-P1.txt
ftp://ftp.isc.org/isc/bind9/9.10.6-P1/RELEASE-NOTES-bind-9.10.6-P1.txt
ftp://ftp.isc.org/isc/bind9/9.11.2-P1/RELEASE-NOTES-bind-9.11.2-P1.txt
ftp://ftp.isc.org/isc/bind9/9.12.0rc3/RELEASE-NOTES-bind-9.12.0rc3.txt

--
Brian Conry
ISC Support
Acting Security Officer


--jd2WgSm5HJ4vyckoVxrb9cXULnYM4Qbtp--

--br19ng90ttRM7cEKvqu9BEXXdWK5k72YT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQFNBAEBCAA3FiEEempHtfnhIzrSVStcvZfcY57oxHsFAlpebdoZHHNlY3VyaXR5
LW9mZmljZXJAaXNjLm9yZwAKCRC9l9xjnujEexZ/B/wMDhGz7WvH+zAKeKl54hfC
QDyaj4n8kcw8C6yRsxqLjxqf2kzGCb1hzhmUSVjXFXf4PvjEV4A8g1sU/EEizxIR
WTm2CuM3t3PUr6hfhEpJ0RFazPNNLwUcVoxT1v9nb8U4/H34XPpwWNyU0oDA0pIv
dM9NQ2t8thItccS5K82Rn6rvQoEfcDtYLFTM00HQmHvtYcfi3Enhc9Irpwd8e7bt
pusDyGJvNppV1HkqUCnJO6VcRmIQQkmprfbppcPAFNBy5hwpce7UMxqCcwn8d/sk
r5Oi8ecZXRbhITZxZ+ksqZ349V1YBiGkxayxvb55re7mdSeCQWr10Kzwoqx79pzu
=tbd/
-----END PGP SIGNATURE-----

--br19ng90ttRM7cEKvqu9BEXXdWK5k72YT--
