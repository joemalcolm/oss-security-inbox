X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1836" "Wednesday" "20" "July" "2016" "22:37:00" "+0200" "Andreas Stieger" "andreas.stieger@suse.com" "<2fcfb94f-179b-eae1-817a-e940d793b2e9@suse.com>" "57" "[oss-security] CVE request: multiple issues fixed in GNU libidn 1.33" nil nil nil "7" "2016072020:37:00" "[oss-security] CVE request: multiple issues fixed in GNU libidn 1.33" (number mark "U       andreas.stie Jul 20   57/1836  " thread-indent "\"[oss-security] CVE request: multiple issues fixed in GNU libidn 1.33\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26503 invoked by uid 550); 20 Jul 2016 20:41:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25625 invoked from network); 20 Jul 2016 20:37:38 -0000
To: cve-assign@mitre.org
From: Andreas Stieger <andreas.stieger@suse.com>
Organization: SUSE Linux GmbH
Cc: oss-security@lists.openwall.com
Message-ID: <2fcfb94f-179b-eae1-817a-e940d793b2e9@suse.com>
Date: Wed, 20 Jul 2016 22:37:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE request: multiple issues fixed in GNU libidn 1.33

Hello,

The GNU libidn 1.33 release was announced with the following:

https://lists.gnu.org/archive/html/help-libidn/2016-07/msg00009.html

> ** libidn: Fix out-of-bounds stack read in idna_to_ascii_4i.
> See tests/tst_toascii64oob.c for regression check (and the comment in
> it how to use it).  Reported by Hanno B=C3=B6ck <address@hidden>.

Test:
http://git.savannah.gnu.org/cgit/libidn.git/commit/?id=3D9a1a7e15d070663497=
1364493fbb06e77e74726c
Fix:
http://git.savannah.gnu.org/cgit/libidn.git/commit/?id=3Df20ce1128fb7f4d332=
97eee307dddaf0f92ac72d
Changelog:
http://git.savannah.gnu.org/cgit/libidn.git/commit/?id=3Dd4c533a5d975bf4909=
0d3cd40acd230b8f79dd32
Follow-up memory leak fix:
http://git.savannah.gnu.org/cgit/libidn.git/commit/?id=3D11abd0e02c16f9e0b6=
944aea4ef0f2df44b42dd4

> ** idn: Solve out-of-bounds-read when reading one zero byte as input.
> Also replaced fgets with getline.  Reported by Hanno B=C3=B6ck <address@h=
idden>.

Fix:
http://git.savannah.gnu.org/cgit/libidn.git/commit/?id=3D570e68886c41c2e765=
e6218cb317d9a9a447a041
Follow-up fix:
http://git.savannah.gnu.org/cgit/libidn.git/commit/?id=3D5e3cb9c7b5bf0ce665=
b9d68f5ddf095af5c9ba60

> ** libidn: stringprep_utf8_nfkc_normalize reject invalid UTF-8.
> It was always documented to only accept UTF-8 data, but now it doesn't
> crash when presented with such data.  Reported by Hanno B=C3=B6ck.

Test / Fix:
http://git.savannah.gnu.org/cgit/libidn.git/commit/?id=3D1fbee57ef3c72db220=
6dd87e4162108b2f425555
Changelog:
http://git.savannah.gnu.org/cgit/libidn.git/commit/?id=3D1d2413555dcd1fef26=
b80445a00a4637965a2df0

Could CVEs please be assigned?

Thanks,
Andreas

--=20
Andreas Stieger <andreas.stieger@suse.com>
Project Manager Security
SUSE Linux GmbH, GF: Felix Imend=C3=B6rffer, Jane Smithard, Graham Norton,
HRB 21284 (AG N=C3=BCrnberg)


