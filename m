X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2240" "Monday" "17" "April" "2017" "11:41:58" "-0800" "ISC Security Officer" "security-officer@isc.org" "<cf512b42-ebd9-ec59-e2b1-326368f53f3b@isc.org>" "53" "[oss-security] Additional information for packagers concerning recent BIND security vulnerabilities" nil nil nil "4" "2017041719:41:58" "[oss-security] Additional information for packagers concerning recent BIND security vulnerabilities" (number mark "U       security-off Apr 17   53/2240  " thread-indent "\"[oss-security] Additional information for packagers concerning recent BIND security vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7206 invoked by uid 550); 17 Apr 2017 20:38:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30520 invoked from network); 17 Apr 2017 19:42:13 -0000
To: oss-security@lists.openwall.com
From: ISC Security Officer <security-officer@isc.org>
Message-ID: <cf512b42-ebd9-ec59-e2b1-326368f53f3b@isc.org>
Date: Mon, 17 Apr 2017 11:41:58 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:45.0)
 Gecko/20100101 Thunderbird/45.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Additional information for packagers concerning recent BIND security
 vulnerabilities

[Apologies to those who receive multiple copies of this message but
we were asked to notify oss-security after sending details to the
distros security list.]

To all BIND packagers and redistributors:

Recently we sent you information about several BIND vulnerabilities,
including CVE-2017-3137.  After providing that information we
received feedback from multiple parties concerning a potential pitfall
for those who are trying to selectively backport the fix for CVE-2017-3137
to earlier versions of BIND.  Since we do not know which of you may be
trying to do this we are notifying all parties to whom we sent the
CVE details.  If you are using the security releases provided by ISC
without changes or if you are not trying to selectively backport fixes
to earlier BIND versions you can ignore the rest of this message.

For those who ARE backporting the security fixes to earlier versions of
BIND:  several parties have reported to us that backporting to a
version of BIND that does not have change #4190 can cause an assertion
failure to appear in name.c in the vicinity of line 2150 (the exact line
number varies by version) with the error message:

  REQUIRE(prefix == ((void *)0) || ((((prefix) != ((void *)0)) &&
(((const isc__magic_t *)(prefix))->magic == ((('D') << 24 | ('N') << 16
| ('S') << 8 | ('n'))))) && prefix->buffer != ((void *)0) &&
((prefix->attributes & (0x00000002|0x00000004)) == 0))) failed

To test whether the version of BIND you have produced is subject to
this assertion failure, we recommend you run the dname test in the
provided BIND system tests.  (Actually, we recommend you run that
in any case.)

  build named:
    ./configure && make

  then:
    cd bin/tests/system
    as root:  sh ./ifconfig.sh up
    sh ./run.sh dname

If your named crashes you should correct the problem; see change #4190.

ISC doesn't officially support selective backporting of changes and we
cannot
guarantee that there may not be other issues, depending on which combination
of changes you have selected.  However this issue has been reported by
several
parties and we are providing what info we have on it in the hopes that
it will
help those who repackage and redistribute our code.

Michael McNally
ISC Security Officer
