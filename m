X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["755" "Wednesday" "3" "August" "2016" "14:16:00" "+0200" "Martin Prpic" "mprpic@redhat.com" "<87r3a6cakf.fsf@redhat.com>" "21" "[oss-security] CVE-2016-6301: busybox: NTP server denial of service flaw" nil nil nil "8" "2016080312:16:00" "[oss-security] CVE-2016-6301: busybox: NTP server denial of service flaw" (number mark "U       mprpic@redha Aug  3   21/755   " thread-indent "\"[oss-security] CVE-2016-6301: busybox: NTP server denial of service flaw\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5231 invoked by uid 550); 3 Aug 2016 12:16:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5213 invoked from network); 3 Aug 2016 12:16:14 -0000
From: Martin Prpic <mprpic@redhat.com>
To: "oss-security\@lists.openwall.com" <oss-security@lists.openwall.com>
User-agent: mu4e 0.9.9.5; emacs 24.3.1
Date: Wed, 03 Aug 2016 14:16:00 +0200
Message-ID: <87r3a6cakf.fsf@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]); Wed, 03 Aug 2016 12:16:02 +0000 (UTC)
Subject: [oss-security] CVE-2016-6301: busybox: NTP server denial of service flaw

Miroslav Lichvar of Red Hat reported a flaw in busybox's NTP
implementation:

The busybox NTP implementation doesn't check the NTP mode of packets
received on the server port and responds to any packet with the right
size. This includes responses from another NTP server. An attacker can
send a packet with a spoofed source address in order to create an
infinite loop of responses between two busybox NTP servers. Adding more
packets to the loop increases the traffic between the servers until one
of them has a fully loaded CPU and/or network.

Upstream patch:

https://git.busybox.net/busybox/commit/?id=150dc7a2b483b8338a3e185c478b4b23ee884e71

RH bug:

https://bugzilla.redhat.com/show_bug.cgi?id=1363710

-- 
Martin Prpič / Red Hat Product Security
