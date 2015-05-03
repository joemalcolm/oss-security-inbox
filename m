X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["478" "Sunday" "3" "May" "2015" "18:24:35" "+0200" "Sebastian Andrzej Siewior" "cve-announce@ml.breakpoint.cc" "<20150503162435.GA2122@breakpoint.cc>" "11" "[oss-security] CVE request - clamav - crash during algorithmic detection on crafted PE file" nil nil nil "5" "2015050316:24:35" "[oss-security] CVE request - clamav - crash during algorithmic detection on crafted PE file" (number mark "        cve-announce May  3   11/478   " thread-indent "\"[oss-security] CVE request - clamav - crash during algorithmic detection on crafted PE file\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17914 invoked by uid 550); 3 May 2015 16:24:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17807 invoked from network); 3 May 2015 16:24:47 -0000
Message-ID: <20150503162435.GA2122@breakpoint.cc>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Sun, 3 May 2015 18:24:35 +0200
From: Sebastian Andrzej Siewior <cve-announce@ml.breakpoint.cc>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request - clamav - crash during algorithmic detection on crafted
 PE file
To: oss-security@lists.openwall.com

Clamav [0] is a virus scanning tool which is able to detect malware called
"W32.Polipos.A". During its detection it may crash due to an integer
underflow while examining its PE-sections.
This bug has been fixed [1] and is part of the 0.98.7 release.
This bug has been discovered by AFL [3], american fuzzy lop

[0] http://www.clamav.net/
[1] https://github.com/vrtadmin/clamav-devel/commit/a7bdfb4f0d3210eeab49280726ff3ea6d703280e
[2] http://lcamtuf.coredump.cx/afl/

Sebastian
