X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["809" "Sunday" "3" "May" "2015" "18:24:18" "+0200" "Sebastian Andrzej Siewior" "cve-announce@ml.breakpoint.cc" "<20150503162418.GA2096@breakpoint.cc>" "19" "[oss-security] CVE-2015-2222: clamav: crash on crafted petite packed file" nil nil nil "5" "2015050316:24:18" "[oss-security] CVE-2015-2222: clamav: crash on crafted petite packed file" (number mark "        cve-announce May  3   19/809   " thread-indent "\"[oss-security] CVE-2015-2222: clamav: crash on crafted petite packed file\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19505 invoked by uid 550); 3 May 2015 16:24:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15814 invoked from network); 3 May 2015 16:24:30 -0000
Message-ID: <20150503162418.GA2096@breakpoint.cc>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Sun, 3 May 2015 18:24:18 +0200
From: Sebastian Andrzej Siewior <cve-announce@ml.breakpoint.cc>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-2222: clamav: crash on crafted petite packed file
To: oss-security@lists.openwall.com

Petite [0] is a tool for compressing PE files on windows.
Clamav [1] is a virus scanning tool which is able to unpack
such files during scanning.

Once the file has been identified as "petite" compressed before the
decompressing process is started it is possible that a specially crafted
file tells clamav to read more data than it allocated memory. On glibc it
leads to SIGABRT on free() since glibc's malloc() recognizes this.
A fix to this bug is part of the 0.98.7 release.

This is a different issue than the one reported in CVE-2015-1463.
This bug has been discovered by AFL [3], american fuzzy lop.

[0] http://www.un4seen.com/petite/
[1] http://www.clamav.net/
[2] https://github.com/vrtadmin/clamav-devel/commit/8aeedf3c4282bc916d6f6c290e1e530d125ec953
[3] http://lcamtuf.coredump.cx/afl/

Sebastian
