X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1646" "Monday" "5" "October" "2015" "21:03:19" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20151006040319.GH16643@hunt>" "48" "[oss-security] CVE Request: Audio File Library" nil nil nil "10" "2015100604:03:19" "[oss-security] CVE Request: Audio File Library" (number mark "U       seth.arnold@ Oct  5   48/1646  " thread-indent "\"[oss-security] CVE Request: Audio File Library\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31834 invoked by uid 550); 6 Oct 2015 04:03:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31816 invoked from network); 6 Oct 2015 04:03:34 -0000
Date: Mon, 5 Oct 2015 21:03:19 -0700
From: Seth Arnold <seth.arnold@canonical.com>
To: oss-security@lists.openwall.com
Cc: michael@68k.org, security@ubuntu.com
Message-ID: <20151006040319.GH16643@hunt>
Mail-Followup-To: oss-security@lists.openwall.com, michael@68k.org,
	security@ubuntu.com
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="jRdC2OsRnuV8iIl8"
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [oss-security] CVE Request: Audio File Library

--jRdC2OsRnuV8iIl8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello MITRE, all,

Fabrizio Gennari reported an issue in The Audio File library to the Ubuntu
bugtracker:
https://bugs.launchpad.net/ubuntu/+source/audiofile/+bug/1502721

His description included, in part:

        When libaudiofile is used to change both the number of channels of
	an audio file (e.g. from stereo to mono) and the sample format
	(e.g. from 16-bit samples to 8-bit samples), the output file will
	contain corrupted data.

	If the new sample format is smaller than the old one, there is a
	risk of buffer overflow: e.g. when the input file has 16-bit
	samples and the output file has 8-bit samples, afReadFrames will
	treat the buffer to read the samples (argument void *data) as a
	pointer to int16_t instead of int8_t, therefore it will write past
	its end.

He proposed a solution and test case to the Audio File library:
https://github.com/mpruett/audiofile/pull/25/files

Please assign a CVE as appropriate.

Thanks

--jRdC2OsRnuV8iIl8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJWE0gHAAoJEPMhclmdjS6Xu2IH/i8VpRm27dsJ5+S9bPUOpAbN
Pc/+TYA6kugubGtCRuNrE+k/Q4ydCR6QeQdmGxJRnhtmUR7C187jn1gbzvVvZzTk
B7S2WnY6LOD6ebLsRCtpNTSKu73ed7kwtP4gVWugg52lTuu71f5TEYW44rfL/ND8
yFYxYYnSYmMkTGDBXOpU/tSNTSS7FPCJ8CfhbthF3+SVALIXkJsyHDnWnZJSfwgn
5cP1Fl+q0zb7p1IeNQAzFG5fAgMSJ4cPbpMxFMwIPctNKJXZxyIepoD52wqlaeu/
UvCeTama5qGsf45kIGJ7RbuAALqvkioUBbD0upPB+CfKKcYwp04O3Vhl3g4AXtU=
=/Lsx
-----END PGP SIGNATURE-----

--jRdC2OsRnuV8iIl8--
