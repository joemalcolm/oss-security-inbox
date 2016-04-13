X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1584" "Wednesday" "13" "April" "2016" "17:29:29" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160413212929.367C952E00A@smtpvbsrv1.mitre.org>" "37" "[oss-security] Re: CVE for nodejs node-uuid" "^Cc:" nil nil "4" "2016041321:29:29" "[oss-security] Re: CVE for nodejs node-uuid" (number mark "        cve-assign@m Apr 13   37/1584  " thread-indent "\"[oss-security] Re: CVE for nodejs node-uuid\"\n") "<CANO=Ty0Am2OcAtzS5jH=xsVOP3o6pzCGmwHWm9igWOCpACpBPg@mail.gmail.com>" ("<CANO=Ty0Am2OcAtzS5jH=xsVOP3o6pzCGmwHWm9igWOCpACpBPg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3345 invoked by uid 550); 13 Apr 2016 21:29:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3327 invoked from network); 13 Apr 2016 21:29:40 -0000
In-Reply-To: <CANO=Ty0Am2OcAtzS5jH=xsVOP3o6pzCGmwHWm9igWOCpACpBPg@mail.gmail.com>
Message-Id: <20160413212929.367C952E00A@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 13 Apr 2016 17:29:29 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE for nodejs node-uuid
To: kseifried@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> node-uuid prior to 1.4.4 contained a bug that caused it to consistently
> fall back to using Math.random instead of a more cryptographically sound
> source of entropy, the native crypto module.

> https://github.com/broofa/node-uuid/issues/108
> https://github.com/broofa/node-uuid/issues/118
> https://github.com/broofa/node-uuid/issues/122
> https://github.com/broofa/node-uuid/commit/672f3834ed02c798aa021c618d0a5666c8da000d

Use CVE-2015-8851 for this implementation error related to an incorrect
_global.require function call.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXDrmkAAoJEL54rhJi8gl5l0gQAIDwvPDZ85PcFP4eMHA0x66e
wpum3DAs4MS9Mn8CRQJ4k6knxA3DKyEOid+/qbDr6RkamUyypg/2iQZsStBrj0iG
quX5mM28n4+ODduHOyf/v1O0OrIFJgkXsw6Pp1avYb1RoNIhCMOL328V60hYk6Ny
oFSwXCh8Tpf+Ns3rkiL5OeouoZO6aUT3HU81H6nRXYcjLNX4UJGgX3S/MRp/SVhf
+IEClIsIsUP1mbdLHSNr4rbYrOq1zZv1vLaEVbJBhCfKO4xFkPo4sjqRSeOTTXAx
Cs2wD02/RnGVsa1SxFDYWwzdL36Al+bdsgL7ik14/qKGgkdGJWwfjz5oP1R4zRaL
z7txlMhgViQu9Z3sFLfJTpxw/vUJCSaPWglrg38DNXxTbxTzbKho96G4FkXMtyAm
yGyLJ+is+3lfQnP/ezq0hOg1gvbYRGCsSUfAtB8vQIcqNTTB+BnnG+sxaawPJzpN
s85JViPn5mkjkxoX/w5Ciu/ztXPt8nRZl1xx/VMpyvDWKEEy4m7bK6joVHrtffFM
vmyYquxQkpUpY4+WxaSj+6xx/v9jFko9PGfdLyoXexJuMO+WKjN3nPgvN+6EoVu4
ISCOEl449+wCahTaa3Bxh/zRbs4rwA0VkK9jzQFmEGHfyJSAqaP+ekDrKtuaQPZx
BkE4am/fDgUKoxnjvcTf
=4elG
-----END PGP SIGNATURE-----
