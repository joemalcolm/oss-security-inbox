X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["882" "Tuesday" "27" "November" "2018" "22:04:31" "+0100" "Florian Weimer" "fweimer@redhat.com" "<87tvk29qqo.fsf@oldenburg.str.redhat.com>" "23" "[oss-security] CVE-2018-19591: glibc if_nametoindex may not close descriptor" nil nil nil "11" "2018112721:04:31" "[oss-security] CVE-2018-19591: glibc if_nametoindex may not close descriptor" (number mark "U       fweimer@redh Nov 27   23/882   " thread-indent "\"[oss-security] CVE-2018-19591: glibc if_nametoindex may not close descriptor\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15920 invoked by uid 550); 27 Nov 2018 21:04:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15902 invoked from network); 27 Nov 2018 21:04:53 -0000
From: Florian Weimer <fweimer@redhat.com>
To: oss-security@lists.openwall.com
Date: Tue, 27 Nov 2018 22:04:31 +0100
Message-ID: <87tvk29qqo.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Tue, 27 Nov 2018 21:04:41 +0000 (UTC)
Subject: [oss-security] CVE-2018-19591: glibc if_nametoindex may not close descriptor

Guido Vranken reported that the glibc implementation of if_nametoindex
would not close an internal descriptor when processing a long interface
name.  This error condition can be triggered via the getaddrinfo
function (and at least one HTTP client library).

  <https://sourceware.org/bugzilla/show_bug.cgi?id=23927>

Fixed with this upstream commit:

commit d527c860f5a3f0ed687bd03f0cb464612dc23408
Author: Florian Weimer <fweimer@redhat.com>
Date:   Tue Nov 27 16:12:43 2018 +0100

    CVE-2018-19591: if_nametoindex: Fix descriptor for overlong name [BZ #23927]

The vulnerability was introduced in commit
2180fee114b778515b3f560e5ff1e795282e60b0 ("Check length of ifname before
copying it into to ifreq structure."), fixing bug 22442 for glibc 2.27.
Since this addressed a compiler warning with GCC 8, this commit was
backported to quite a few release branches.

Thanks,
Florian
