X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1091" "Wednesday" "18" "March" "2015" "04:59:01" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150318085901.46C696C0029@smtpvmsrv1.mitre.org>" "29" "[oss-security] Re: CVE Request: WebKitGTK+ late TLS certificate verification" nil nil nil "3" "2015031808:59:01" "[oss-security] Re: CVE Request: WebKitGTK+ late TLS certificate verification" (number mark "        cve-assign@m Mar 18   29/1091  " thread-indent "\"[oss-security] Re: CVE Request: WebKitGTK+ late TLS certificate verification\"\n") "<1426620857.13355.39.camel@igalia.com>" ("<1426620857.13355.39.camel@igalia.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1810 invoked by uid 550); 18 Mar 2015 08:59:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1787 invoked from network); 18 Mar 2015 08:59:12 -0000
In-Reply-To: <1426620857.13355.39.camel@igalia.com>
Message-Id: <20150318085901.46C696C0029@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, clopez@igalia.com
Date: Wed, 18 Mar 2015 04:59:01 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: WebKitGTK+ late TLS certificate verification
To: mcatanzaro@igalia.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> performed TLS certificate verification too late, after sending an HTTP
> request rather than before

> http://trac.webkit.org/changeset/181074/trunk/Source/WebCore/platform/network/soup/ResourceHandleSoup.cpp

> cancel the load earlier in case of TLS failure, preventing any private
> data from being sent to the server before the TLS errors are checked.

Use CVE-2015-2330.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVCT3iAAoJEKllVAevmvmsxKQH/jultcMvdU+k5BFXZAJFdlkZ
bA4OxvExB6WOLxVND04EIpxEqWPDn3xY7d1lCL7YbWvLFcsGU69WMOcYA9Ch3pIt
nfQSESTQNIt6GwfKwBpT97GC4dFOzM2yxT2l6i5rCQh0Nhbht29oCoNo0NmUyoFy
Gpcwy4bMug205DUQF5+W71oseZrUrGJNmC4iDVoQpj++hfWKNuN2a/dDrd4EaiwO
a4uBaoSNfVNa/F5zc7BhIfSo/t0BTYKS5nwya/ylQkB/AU4fDoIYfc9LkeZzox/i
9D8i3llDByGKcbJA98cvdzfq/7YkL/wQC3WEnbIcFmrNVt+LethWPvdoWw+9v2g=
=FaTN
-----END PGP SIGNATURE-----
