X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1219" "Tuesday" "26" "May" "2015" "06:26:05" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150526102605.DC177B2E7E1@smtpvbsrv1.mitre.org>" "35" "[oss-security] Re: CVE Request for read-only directory traversal in Etherpad frontend tests" nil nil nil "5" "2015052610:26:05" "[oss-security] Re: CVE Request for read-only directory traversal in Etherpad frontend tests" (number mark "        cve-assign@m May 26   35/1219  " thread-indent "\"[oss-security] Re: CVE Request for read-only directory traversal in Etherpad frontend tests\"\n") "<20150523194011.GY2731@yuggoth.org>" ("<20150523194011.GY2731@yuggoth.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30316 invoked by uid 550); 26 May 2015 10:26:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30295 invoked from network); 26 May 2015 10:26:17 -0000
In-Reply-To: <20150523194011.GY2731@yuggoth.org>
Message-Id: <20150526102605.DC177B2E7E1@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue, 26 May 2015 06:26:05 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request for read-only directory traversal in Etherpad frontend tests
To: fungi@yuggoth.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

There was no earlier reply. Note that the first message in the thread
apparently had an "Re: " at the beginning of the Subject line:

  http://openwall.com/lists/oss-security/2015/04/11/10

> a vulnerability in the frontend tests of previous Etherpad releases,
> which are enabled by default.

> https://github.com/ether/etherpad-lite/commit/5409eb314c4e072b9760b8d30b985fa0bb96a006

> fix an issue in the path handling that allowed directory traversal
>
> node/hooks/express/tests.js

Use CVE-2015-4085.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVZEm8AAoJEKllVAevmvms8HMH/A0DtXVdlWKIQvo6tmFK4MEI
1G2GQ5VTQWGEBu3hoKiOMwXSd/iuodT24dTUGy0CnSjdByisaO4TpaFGumkosQ0u
oLaCl9NE4aCgdoEpL5FliPl5KOAmhBcgfj19shpfVjbDChSMzYRmdLGnT36tWjL1
Y2fnuKMVktULyNnYXShae4kr/Mud4TW1cSXfhZPgB7MIIF4mO+1BoFE6wrqDM8QS
zMF/mSBElDFnvRBvi4B+m9noEagoTjR+jBsb1ebvC0Nkg8ne9r5Q/Hp+9Mb5z1bf
nWfqXUHQ7DY6kIA7Y2bueNC8+45ZnTyhC1pHxEABRaJHfGegRCKTp63Kx8bg9rA=
=OCMJ
-----END PGP SIGNATURE-----
