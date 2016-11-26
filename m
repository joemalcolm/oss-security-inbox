X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2607" "Saturday" "26" "November" "2016" "17:49:28" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<cc6dbbfbd8654d4899153ece8385bf60@imshyb02.MITRE.ORG>" "55" "[oss-security] Re: CVE request: Heap read out-of-bounds parsing a Javascript file with the last revision of JavaScript Core" nil nil nil "11" "2016112622:49:28" "[oss-security] Re: CVE request: Heap read out-of-bounds parsing a Javascript file with the last revision of JavaScript Core" (number mark "U       cve-assign@m Nov 26   55/2607  " thread-indent "\"[oss-security] Re: CVE request: Heap read out-of-bounds parsing a Javascript file with the last revision of JavaScript Core\"\n") "<CACn5sdRDwUdYakN+OKpYZwY9WyC6rJ80Jt1SBSbt3ehjU0wJhQ@mail.gmail.com>" ("<CACn5sdRDwUdYakN+OKpYZwY9WyC6rJ80Jt1SBSbt3ehjU0wJhQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32000 invoked by uid 550); 26 Nov 2016 22:49:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31982 invoked from network); 26 Nov 2016 22:49:39 -0000
From: <cve-assign@mitre.org>
To: <gustavo.grieco@gmail.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <CACn5sdRDwUdYakN+OKpYZwY9WyC6rJ80Jt1SBSbt3ehjU0wJhQ@mail.gmail.com>
Message-ID: <cc6dbbfbd8654d4899153ece8385bf60@imshyb02.MITRE.ORG>
Date: Sat, 26 Nov 2016 17:49:28 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request: Heap read out-of-bounds parsing a Javascript file with the last revision of JavaScript Core

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://bugs.webkit.org/show_bug.cgi?id=164000

> AddressSanitizer: heap-buffer-overflow
> READ of size 16

>     #0 0x7ffff67f04af in WTF::(anonymous namespace)::lockHashtable()
> (/home/g/Work/Code/webkit-master/WebKitBuild/Release/lib/libjavascriptcoregtk-4.0.so.18+0x20cc4af)
>     #1 0x7ffff67f1b6c in WTF::ParkingLot::parkConditionallyImpl(void
> const*, WTF::ScopedLambda<bool ()> const&, WTF::ScopedLambda<void ()>
> const&, std::chrono::time_point<std::chrono::_V2::steady_clock,
> std::chrono::duration<long, std::ratio<1l, 1000000000l> > >)
> (/home/g/Work/Code/webkit-master/WebKitBuild/Release/lib/libjavascriptcoregtk-4.0.so.18+0x20cdb6c)
>     #2 0x7ffff67cc1cb in std::_Function_handler<void (),
> WTF::AutomaticThread::start(WTF::Locker<WTF::LockBase>
> const&)::{lambda()#1}>::_M_invoke(std::_Any_data const&)
> (/home/g/Work/Code/webkit-master/WebKitBuild/Release/lib/libjavascriptcoregtk-4.0.so.18+0x20a81cb)

> After a month, i received no response from the original bug report in the
> webkit bug tracker. Additionally, Chrome / Chromium is not affected.

Use CVE-2016-9642.

Incidentally, the published WebKit policy is apparently "We cannot
guarantee a prompt human response to every security bug filed. If you
would like immediate feedback on a security issue, or would like to
discuss details with members of the WebKit Security Group, please
email security@webkit.org and include a link to the relevant Bugzilla
bug. Your message will be acknowledged within a week at most." on the
https://webkit.org/security-policy/ web page.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYOg/mAAoJEHb/MwWLVhi2ePcQAIxMTNbZW2og6OGm+H3OoNmJ
LeLWKqY58w4NkUcrf+Rla3aPkwPTtdWasjy15rO7YfQ4ugzdvBHEPmO052kcYoGj
nCVWoSYG/04DLhz14Q3eixqDO2Z5k8dE+Sgi7XWsXG7Z5s4duOTOX6nX2ZvK9FR5
jY5ZHAXltXdc521YzBTDo4KycfOHzLImLajN9PJsGZJugDjgzxvICnHqUjcH2j2r
nQjYKlNok4jVnlib6mOgMCv0xGgvRXibJlfNQrMmdFHeJfDAj66AHT0YN73qyRCr
dXkHFrmhQHwc1EEtoh2wWYAlOU4vUZwMuNkyknn1IgyQ83jSnMBlmP9y10bKsO79
mQ6Vpu0EaBo54WOhKUv7GOXxMuL4R53LUwfpkA9G8omkIeg8VW0E2uxIYRC6N/2R
fwT1Z8r1A6CWtX7lUM5p4beAeExn184vPCRFsmR0WVsZDBe1xEHitDeXYcwlFcvV
ZccNRbTFZUhgT4tNOo1a7587F40Nn75lIKLKEU6EZdrBZCor+9PmA1qnccVj7nlG
F8SOuX7je0ULwbWmVNqYrZzewDLXge5PJ4Ovlyzo7TPse2MNvUbQtuPBGiI2RbA0
YF+fX8nGoS8kHh1PCFLgHWCOHO85LLdfSAMkE9AynGeMWvtWzLYtZekrWDsZ03bB
Dmqbs/1smLo4dEAEGlcj
=gYlb
-----END PGP SIGNATURE-----
