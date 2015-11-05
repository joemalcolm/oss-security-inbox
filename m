X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1798" "Thursday" "5" "November" "2015" "17:30:14" "+0100" "gauri@tut.by" "gauri@tut.by" "<1303361446741014@web27g.yandex.ru>" "27" "Re: [oss-security] Re: CVE request: libsndfile 1.0.25 heap overflow" nil nil nil "11" "2015110516:30:14" "[oss-security] Re: CVE request: libsndfile 1.0.25 heap overflow" (number mark "        gauri@tut.by Nov  5   27/1798  " thread-indent "\"Re: [oss-security] Re: CVE request: libsndfile 1.0.25 heap overflow\"\n") "<20151103200145.05F266C0261@smtpvmsrv1.mitre.org>" ("<20151103134736.49e4edcb@pc1>" "<20151103200145.05F266C0261@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1537 invoked by uid 550); 5 Nov 2015 16:30:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1516 invoked from network); 5 Nov 2015 16:30:26 -0000
In-Reply-To: <20151103200145.05F266C0261@smtpvmsrv1.mitre.org>
References: <20151103134736.49e4edcb@pc1> <20151103200145.05F266C0261@smtpvmsrv1.mitre.org>
MIME-Version: 1.0
Message-Id: <1303361446741014@web27g.yandex.ru>
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=koi8-r
Cc: "cve-assign@mitre.org" <cve-assign@mitre.org>
Date: Thu, 05 Nov 2015 17:30:14 +0100
From: gauri@tut.by
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE request: libsndfile 1.0.25 heap overflow
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

Hello list.

03.11.2015, 21:02, "cve-assign@mitre.org" <cve-assign@mitre.org>:
>> šUnrelated, but I recently reported an out of bounds triggered by the
>> štest suite of libsndfile and got no reply:
>> šhttp://permalink.gmane.org/gmane.comp.audio.libsndfile.devel/681
>
>> šOut of bounds reads in psf_strlcpy_crlf when running test suite
>
>> šAddressSanitizer: global-buffer-overflow ... READ of size 1
>
> Use CVE-2015-8075.

I have followed up on this to spot the root cause of what has been assigned CVE-2015-8075; as recommended by Hanno, I am sharing my results with the wider audience.

The `test_psf_strlcpy_crlf()` routine, as it is presented [1] in version 1.0.25, is incorrect in that it supplies an invalid argument value to the function `psf_strlcpy_crlf()` being tested: the last argument `srcmax` receives `sizeof(src)`, which is the size of the pointer `src`, and not the source string length it points to, as might have been anticipated by the author. Since the reporter tested a 64-bit build, `srcmax` gets passed 8, but the string is 7 bytes long. This triggers OOB access detected by address sanitizer, just like in the original report.

At this point, it seems CVE-2015-8075 has to be rejected as there is no vulnerability, only a poorly written test case which doesn't see any action except when running `make check`.

Note: Apparently, the vendor has attempted to fix the test [2], but it seems like `srcmax` is getting `sizeof(char)` instead of `sizeof(char *)` now. The test remains invalid, although due to a different reason.

Cheers,
Z.

References:
[1] https://github.com/erikd/libsndfile/blob/f66e21e0b1f1b52b544dabb5ba4fa89fa6f62a30/src/test_strncpy_crlf.c
[2] https://github.com/erikd/libsndfile/blob/495c2877e1c841fbb420383551547d2ca60533c6/src/test_strncpy_crlf.c
