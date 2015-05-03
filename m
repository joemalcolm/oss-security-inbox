X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["835" "Sunday" "3" "May" "2015" "18:24:00" "+0200" "Sebastian Andrzej Siewior" "cve-announce@ml.breakpoint.cc" "<20150503162400.GA2083@breakpoint.cc>" "18" "[oss-security] CVE-2015-2221: clamav: infinite loop condition on crafted y0da cryptor file" nil nil nil "5" "2015050316:24:00" "[oss-security] CVE-2015-2221: clamav: infinite loop condition on crafted y0da cryptor file" (number mark "        cve-announce May  3   18/835   " thread-indent "\"[oss-security] CVE-2015-2221: clamav: infinite loop condition on crafted y0da cryptor file\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16013 invoked by uid 550); 3 May 2015 16:24:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13969 invoked from network); 3 May 2015 16:24:13 -0000
Message-ID: <20150503162400.GA2083@breakpoint.cc>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Sun, 3 May 2015 18:24:00 +0200
From: Sebastian Andrzej Siewior <cve-announce@ml.breakpoint.cc>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-2221: clamav: infinite loop condition on crafted y0da
 cryptor file
To: oss-security@lists.openwall.com

Y0da cryptor / protector is a PE file encryptor - the executable file is
decrypted on start up. Clamav [0] is able to decrypt such files in order to
scan them. As part of the decryptor there is an op code emulator. A special
crafted file may contain a jump op code to a position that already has been
interpreted - which leads to an endless loop. This leads to an endless loop in
clamav itself.

This has been fixed by [1] and the loop limit has been increased in [2]. This
change is part of the 0.98.7 release.

This bug has been discovered by AFL [3], american fuzzy lop.

[0] http://www.clamav.net/
[1] https://github.com/vrtadmin/clamav-devel/commit/0844d0cfe118b4041ed8e2ee49ff18bfbca8eaa5
[2] https://github.com/vrtadmin/clamav-devel/commit/26b19809fb3b940cb0fda0422d685fff02a53b5f
[3] http://lcamtuf.coredump.cx/afl/

Sebastian
