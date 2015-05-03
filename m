X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["706" "Sunday" "3" "May" "2015" "18:22:59" "+0200" "Sebastian Andrzej Siewior" "cve-announce@ml.breakpoint.cc" "<20150503162259.GA2068@breakpoint.cc>" "16" "[oss-security] CVE-2015-2170: clamav: crash on crafted upx packed file" nil nil nil "5" "2015050316:22:59" "[oss-security] CVE-2015-2170: clamav: crash on crafted upx packed file" (number mark "        cve-announce May  3   16/706   " thread-indent "\"[oss-security] CVE-2015-2170: clamav: crash on crafted upx packed file\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7901 invoked by uid 550); 3 May 2015 16:23:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7863 invoked from network); 3 May 2015 16:23:12 -0000
Message-ID: <20150503162259.GA2068@breakpoint.cc>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Sun, 3 May 2015 18:22:59 +0200
From: Sebastian Andrzej Siewior <cve-announce@ml.breakpoint.cc>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-2170: clamav: crash on crafted upx packed file
To: oss-security@lists.openwall.com

UPX [0] is a executable file compressor which is able to compress various
executable formats including PE and ELF files. Clamav [1] is a virus scanning
tool which is able to unpack such files during scanning.

During unpacking there are two range checks which are implemented "manually".
Those checks lack the detection of overflows which are considered by the
CLI_ISCONTAINED() macro. This has been fixed [2] and is part of the 0.98.7
release.
This bug has been discovered by AFL [3], american fuzzy lop.

[0] http://upx.sourceforge.net/
[1] http://www.clamav.net/
[2] https://github.com/vrtadmin/clamav-devel/commit/625f5a9b8f008b8714850e4aa064dee1de06e534
[3] http://lcamtuf.coredump.cx/afl/

Sebastian
