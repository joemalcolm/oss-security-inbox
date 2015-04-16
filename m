X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1305" "Thursday" "16" "April" "2015" "02:41:35" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150416064135.641191BE0BF@smtpvbsrv1.mitre.org>" "34" "[oss-security] Re: double-free in gnutls (CRL distribution points parsing)" nil nil nil "4" "2015041606:41:35" "[oss-security] Re: double-free in gnutls (CRL distribution points parsing)" (number mark "        cve-assign@m Apr 16   34/1305  " thread-indent "\"[oss-security] Re: double-free in gnutls (CRL distribution points parsing)\"\n") "<CAP145pgvJEy056DEoeThaJxrg06eugxj10ar4jkiZwixwhMwQw@mail.gmail.com>" ("<CAP145pgvJEy056DEoeThaJxrg06eugxj10ar4jkiZwixwhMwQw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23691 invoked by uid 550); 16 Apr 2015 06:41:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23644 invoked from network); 16 Apr 2015 06:41:47 -0000
In-Reply-To: <CAP145pgvJEy056DEoeThaJxrg06eugxj10ar4jkiZwixwhMwQw@mail.gmail.com>
Message-Id: <20150416064135.641191BE0BF@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 16 Apr 2015 02:41:35 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: double-free in gnutls (CRL distribution points parsing)
To: robert@swiecki.net

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> gnutls 3.3.14 fixes a double-free in parsing CRL distribution points.
> 
> It will affect applications which parse CRL distribution points or
> print contents of certificates with gnutls-provided functions (e.g.
> gnutls_x509_crt_print())
> 
> Usually a DoS under modern mem allocators, but creating something more
> interesting using double-free exploitation techniques is not out of
> the question
> 
> https://gitlab.com/gnutls/gnutls/commit/d6972be33264ecc49a86cd0958209cd7363af1e9
> https://gitlab.com/gnutls/gnutls/commit/053ae65403216acdb0a4e78b25ad66ee9f444f02

Use CVE-2015-3308.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVL1kCAAoJEKllVAevmvmswcUH/i6RzwB5lEC9WJmOCWMDJiPu
D0gnjKKlvgZs4P+/WzaW/gfvhs3gojdOFJKQ1hxb9wo4tB3Lo1TExtoWKkBlBzH5
utp7/P2xqRhLMoOCW8QGbfCAF2oaP2AshnitNkru9XPb9I8sWgNRRevTzURnGJQE
Vac7pmThHnOtxJ9sy9k3F3wiFSn/d2SoLZkEo8hQMBtxgr/9dQpEPJobOOlrRuNE
PxabnOMgAnGBmT2qzQXwARdeswkJ/jL6BGsicWuLDMmGD2I/L+fqtP1jr84uUgFM
5ACjRX0Hg4+elY9GYpw3EhKJaj19XIUW4HA867EtJyJpwLbiGIYPGwu0em8d/X4=
=9Vb/
-----END PGP SIGNATURE-----
