X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1338" "Thursday" "9" "April" "2015" "03:09:30" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150409070930.2B22A1BE1C2@smtpvbsrv1.mitre.org>" "37" "[oss-security] Re: CVE Request: libX11: buffer overflow in  MakeBigReq macro" nil nil nil "4" "2015040907:09:30" "[oss-security] Re: CVE Request: libX11: buffer overflow in MakeBigReq macro" (number mark "        cve-assign@m Apr  9   37/1338  " thread-indent "\"[oss-security] Re: CVE Request: libX11: buffer overflow in  MakeBigReq macro\"\n") "<552495F1.6000709@canonical.com>" ("<552495F1.6000709@canonical.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3755 invoked by uid 550); 9 Apr 2015 07:09:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3736 invoked from network); 9 Apr 2015 07:09:42 -0000
In-Reply-To: <552495F1.6000709@canonical.com>
Message-Id: <20150409070930.2B22A1BE1C2@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu,  9 Apr 2015 03:09:30 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: libX11: buffer overflow in  MakeBigReq macro
To: marc.deslauriers@canonical.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> The MakeBigReq macro in libX11 contained a 4-byte buffer overflow:
> 
> https://bugs.freedesktop.org/show_bug.cgi?id=56508
> 
> Fixed by the following commit in libX11 1.5.99.901:
> 
> http://cgit.freedesktop.org/xorg/lib/libX11/commit/?id=39547d600a13713e15429f49768e54c3173c828d

(for the "#ifdef LONG64")
> - memmove(((char *)req) + 8, ((char *)req) + 4, _BRlen << 2); \
> + memmove(((char *)req) + 8, ((char *)req) + 4, (_BRlen - 1) << 2); \

(for the "else")
> - memmove(((char *)req) + 8, ((char *)req) + 4, _BRlen << 2); \
> + memmove(((char *)req) + 8, ((char *)req) + 4, (_BRlen - 1) << 2); \

Use CVE-2013-7439.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVJiVPAAoJEKllVAevmvmssDcH/iutsG0E3niDH2KbFs7BSPnn
+rxzJopR3k7Cg8yVvzA72yBiVizVs9Exi86lLyRav1Xw0naxM/ljiNs2FFGbjK+7
AnCyDZbQadTaexTVyO0nU773TmmoKWN2NRoWtMhLQ2O+q2wCwSeO3f/9gLEi56uG
KasHobQEHd/Pe7FxCreJJr9wZ0X8FNIquPUbUV9uwmQtHoHQhuHuBB9NrEsApwWv
zWICm3WbgdeFDvq+s3PClhmuteHdDWVT7YQhlBNxvegHXmiFcVxkkbJNK9FZv76X
NsaBD2nhzdqa24KrxQCSpN9zvvOu72Mw3yf2bu1CIL9cmj2Nl1RbJH2vp+5G1Fc=
=56XR
-----END PGP SIGNATURE-----
