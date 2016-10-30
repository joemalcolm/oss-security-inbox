X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1330" "Sunday" "30" "October" "2016" "15:48:27" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<b6628b3b2ff14e43aaac2bb6cdcb915d@imshyb02.MITRE.ORG>" "37" "[oss-security] Re: CVE request - integer overflow and crash parsing regex in mujs" nil nil nil "10" "2016103019:48:27" "[oss-security] Re: CVE request - integer overflow and crash parsing regex in mujs" (number mark "U       cve-assign@m Oct 30   37/1330  " thread-indent "\"[oss-security] Re: CVE request - integer overflow and crash parsing regex in mujs\"\n") "<CACn5sdTySquYm3M=mk+oVhiYUR+_np3=atHDMryVu6znwJ_0EQ@mail.gmail.com>" ("<CACn5sdTySquYm3M=mk+oVhiYUR+_np3=atHDMryVu6znwJ_0EQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16014 invoked by uid 550); 30 Oct 2016 19:48:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15956 invoked from network); 30 Oct 2016 19:48:38 -0000
From: <cve-assign@mitre.org>
To: <gustavo.grieco@gmail.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <CACn5sdTySquYm3M=mk+oVhiYUR+_np3=atHDMryVu6znwJ_0EQ@mail.gmail.com>
Message-ID: <b6628b3b2ff14e43aaac2bb6cdcb915d@imshyb02.MITRE.ORG>
Date: Sun, 30 Oct 2016 15:48:27 -0400
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request - integer overflow and crash parsing regex in mujs

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> an integer overflow somewhere affecting function
> js_regcomp (line 843 in regexp.c) in mujs

> Argument 'size' of function malloc has a fishy (possibly
> negative) value: -5152

> js_regcomp (in /home/g/Work/Code/mujs/build/mujs)

> Invalid write of size 2

Use CVE-2016-9108.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYFkudAAoJEHb/MwWLVhi2RBgP/RF0bMlb+4D26ZDZ2QWwajjj
3QerG0bwV1cKaE+emQXe2T0fMeeSNm0B8+SSkLEtbfFSFnQhJgP3cn2xoYOdl0+j
J72oJMrTay+NRMiSyCoHQ0lXy2K3z1BhvXDTMDCrRtov4curUVQ8Zk35rNDr+DGP
tUpumfoguit3TrcrlQT19AiKUUJYiXBgD7k6CsGVdZ2ReY3Bi3MwhyHfZ+cNvx71
hwxAwtvYIU+h/+kUX0fjLQ5w8VadUr4pwYtQNvo6x52QiOFyw5iw2JsJX7q0K72X
bteIFYG8byQqMJXyYzLwxN4FpWzEW7uPusRjE7I0X62y0rl/RV0AdpFL5+QBLYdC
5bIDcVbRpcjoQimDk6nP3iVTvaetOvyJHDQxv2UP13pkwW1Y1t4rlI45F/8FVsUz
jILRhjiW1ITLew+zCmQtirdAsh+pkPRlZCdWKzDdlY/Pxeb0Nqp3kyIZ0kQSpogr
xjNpJJV9ss7aXjzwYSDR3R9U/91QnPqJ2wagxds6AsnZB6zKG6V01edmgKpMTYue
vmIFeSY/nul7xAUMl0BYrLoJkwag+aitbQ5FVjU1UaO442W9iraM8Sp5afecXjWD
kU2CHD7BPP41K1e6Cw/HI2HfNBkhJVdz96SaNq4jA3uwtjkuWaeZ1HnqTxX5yE5V
niwZyF8JncAPwN2NX7CQ
=GE43
-----END PGP SIGNATURE-----
