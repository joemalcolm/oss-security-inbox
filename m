X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["859" "Monday" "23" "March" "2015" "20:32:43" "+0100" "Florian Weimer" "fw@deneb.enyo.de" "<87oanjech0.fsf@mid.deneb.enyo.de>" "25" "[oss-security] CVE-2015-0841: off-by-one error in network code of monopd/libcapsinetwork" nil nil nil "3" "2015032319:32:43" "[oss-security] CVE-2015-0841: off-by-one error in network code of monopd/libcapsinetwork" (number mark "        fw@deneb.eny Mar 23   25/859   " thread-indent "\"[oss-security] CVE-2015-0841: off-by-one error in network code of monopd/libcapsinetwork\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10124 invoked by uid 550); 23 Mar 2015 19:33:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10060 invoked from network); 23 Mar 2015 19:32:56 -0000
Message-ID: <87oanjech0.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Cc: Niko Tyni <ntyni@debian.org>
Date: Mon, 23 Mar 2015 20:32:43 +0100
From: Florian Weimer <fw@deneb.enyo.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-0841: off-by-one error in network code of monopd/libcapsinetwork
To: oss-security@lists.openwall.com

Niko Tyni privately reported this to us, but we don't think it is
exploitable with dlmalloc, so we skipped the embargo:

| There's an off-by-one error in libcapsinetwork network handling code,
| which was merged into monopd in version 0.9.4.
| 
| From src/listener.cpp, Listener::checkActivity():
| 
|   #define MAXLINE 1024
| [...]
|   char *readBuf = new char[MAXLINE];
|   int n = read((*it)->fd(), readBuf, MAXLINE);
|   if (n <= 0) // socket was closed
|   {
|           (*it)->setStatus(Socket::Closed);
|           delete[] readBuf;
|           return; // notification is (still) in earlier iteration
|   }
|   readBuf[n] = 0;
| 
| With an input line longer than 1023, this will write zero at readBuf[1024]
| which is out of bounds.

<https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=781043>
<https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=781044>
