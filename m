X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1187" "Sunday" "3" "May" "2015" "18:24:34" "+0200" "Sebastian Andrzej Siewior" "cve-announce@ml.breakpoint.cc" "<20150503162434.GA2108@breakpoint.cc>" "24" "[oss-security] CVE request - clamav - crashes on crafted upack packed file" nil nil nil "5" "2015050316:24:34" "[oss-security] CVE request - clamav - crashes on crafted upack packed file" (number mark "        cve-announce May  3   24/1187  " thread-indent "\"[oss-security] CVE request - clamav - crashes on crafted upack packed file\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17874 invoked by uid 550); 3 May 2015 16:24:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17778 invoked from network); 3 May 2015 16:24:46 -0000
Message-ID: <20150503162434.GA2108@breakpoint.cc>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Sun, 3 May 2015 18:24:34 +0200
From: Sebastian Andrzej Siewior <cve-announce@ml.breakpoint.cc>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request - clamav - crashes on crafted upack packed file
To: oss-security@lists.openwall.com

WinUPack / UPack [0] is a tool for compressing PE files. Clamav [1] is a virus
scanning tool which is able to unpack such files during scanning.

There are two issues:
- There is a wrongly implemented range check. The size (of the memory) has
  been fed as (j * 4) into the macro. With this written as-is the compiler
  treats it as a "32 bit" operation and feeds the result into the macro. That
  means the "64 bit" cast (to catch 32bit overflows) can not be performed
  anymore. The result is a segfault. This has been fixed [2].

- A missing range check while invoking cli_rebuildpe(). A crafted file may
  lead to reading more data from the file than memory has been allocated
  leading to a crash. This has been fixed [3].

The two fixes are part of the 0.98.7 release.
Both bugs have been discovered by AFL [4], american fuzzy lop.

[0] http://www.woodmann.com/collaborative/tools/index.php/WinUPack_3.99_and_UPack_3.999
[1] http://www.clamav.net/
[2] https://github.com/vrtadmin/clamav-devel/commit/a18af359decd270f5088e80e2ee2866c62e0843e
[3] https://github.com/vrtadmin/clamav-devel/commit/ed56f56c1f1529bda877ddd116ae7bc064667c73
[4] http://lcamtuf.coredump.cx/afl/

Sebastian
