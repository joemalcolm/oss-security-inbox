X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["780" "Tuesday" "21" "April" "2015" "14:54:10" "+0200" "Florian Weimer" "fweimer@redhat.com" "<55364872.3000903@redhat.com>" "21" "[oss-security] CVE-2015-1781 in glibc" nil nil nil "4" "2015042112:54:10" "[oss-security] CVE-2015-1781 in glibc" (number mark "        fweimer@redh Apr 21   21/780   " thread-indent "\"[oss-security] CVE-2015-1781 in glibc\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3233 invoked by uid 550); 21 Apr 2015 12:54:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3208 invoked from network); 21 Apr 2015 12:54:24 -0000
Message-ID: <55364872.3000903@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Date: Tue, 21 Apr 2015 14:54:10 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-1781 in glibc
To: oss-security@lists.openwall.com

Arjun Shankar of Red Hat discovered that the nss_dns code does not
adjust the buffer length when the buffer start pointer is aligned.  As a
result, a buffer overflow can occur in the implementation of functions
such as gethostbyname_r, and crafted DNS responses might cause
application crashes or result in arbitrary code execution.

This can only happen if these functions are called with a misaligned
buffer.  I looked at quite a bit of source code, and tested applications
with a patched glibc that logs misaligned buffers.  I did not observe
any such misaligned buffers.

Upstream bug:

https://sourceware.org/bugzilla/show_bug.cgi?id=18287

Upstream commit:

https://sourceware.org/git/?p=glibc.git;a=commit;h=2959eda9272a03386

-- 
Florian Weimer / Red Hat Product Security
