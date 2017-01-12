X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2244" "Wednesday" "11" "January" "2017" "15:06:00" "-0900" "ISC Security Officer" "security-officer@isc.org" "<088406a2-6476-a79d-f148-f63e31b4c974@isc.org>" "68" "[oss-security] Four BIND vulnerabilities have been disclosed today (11 January) that are fixed in new security releases" nil nil nil "1" "2017011200:06:00" "[oss-security] Four BIND vulnerabilities have been disclosed today (11 January) that are fixed in new security releases" (number mark "U       security-off Jan 11   68/2244  " thread-indent "\"[oss-security] Four BIND vulnerabilities have been disclosed today (11 January) that are fixed in new security releases\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24347 invoked by uid 550); 12 Jan 2017 00:24:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17969 invoked from network); 12 Jan 2017 00:06:20 -0000
To: oss-security@lists.openwall.com
From: ISC Security Officer <security-officer@isc.org>
Message-ID: <088406a2-6476-a79d-f148-f63e31b4c974@isc.org>
Date: Wed, 11 Jan 2017 15:06:00 -0900
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:45.0)
 Gecko/20100101 Thunderbird/45.6.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="uOAPuxvVoALmLkBDRHBBi3a8NTMCmNoDu"
Subject: [oss-security] Four BIND vulnerabilities have been disclosed today (11 January) that
 are fixed in new security releases

--uOAPuxvVoALmLkBDRHBBi3a8NTMCmNoDu
Content-Type: multipart/mixed; boundary="7QIkxKHV9DJwdNQFqwU7LnSPoiONwgmKk";
 protected-headers="v1"
From: ISC Security Officer <security-officer@isc.org>
To: oss-security@lists.openwall.com
Message-ID: <088406a2-6476-a79d-f148-f63e31b4c974@isc.org>
Subject: Four BIND vulnerabilities have been disclosed today (11 January) that
 are fixed in new security releases

--7QIkxKHV9DJwdNQFqwU7LnSPoiONwgmKk
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

ISC has issued new security releases of BIND today, which correct
three exploitable vulnerabilities discovered in the course of our
internal fuzz-testing and an additional exploitable vulnerability
reported to us by a contributor.

The issues are:

   CVE-2016-9131
   CVE-2016-9147
   CVE-2016-9444
   CVE-2016-9778

and details about each can be found in the BIND Security Advisories
section of the ISC Knowledge Base:


https://kb.isc.org/category/74/0/10/Software-Products/BIND9/Security-Adviso=
ries/

New security releases have been issued which correct the vulnerabilities.
These are available via the http://www.isc.org/downloads web page:

   BIND 9.9.9-P5
   BIND 9.10.4-P5
   BIND 9.11.0-P2

We encourage all parties using or distributing BIND to upgrade to these
versions as soon as possible so that they may be protected from the
vulnerabilities now that they have been publicly disclosed.


Michael McNally
ISC Security Officer


--7QIkxKHV9DJwdNQFqwU7LnSPoiONwgmKk--

--uOAPuxvVoALmLkBDRHBBi3a8NTMCmNoDu
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iQEcBAEBCAAGBQJYdshsAAoJEL2X3GOe6MR77t8IAK5O9lCR0Z2vtDuNIvrQ2QE6
XKcdT3Avo19zXI9lTLgHSFZeSlcR3U2HgzpghRceIfc8Y1MjmQZOtrpxT2/QMVa4
RyUFKIFpOhYifNJj4AzJZk4TDvRnQTxKofSfQnfF6RoazDy9n0IVpb+m0FMDTykA
MSioHGFcvGsMehiY0oclV5k9UOX9Crq9h7jyyD2r9CSRcvOSD2CjdAR3BEZZlJV0
/i3S4kScIbC/ZvX4y1WEF/fMp07eMFD166s89eSBiUBTouoRjBWsH3p/Un/6RMjo
bsaF6Mu1V0niaRtiMT2dqv9XmQIag8Vb/Pr38URDYYu6AM+scMU782LJLFiDHB8=
=3coL
-----END PGP SIGNATURE-----

--uOAPuxvVoALmLkBDRHBBi3a8NTMCmNoDu--
