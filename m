X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["536" "Thursday" "3" "September" "2015" "01:03:17" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1509030058080.6240@wniryva>" "18" "[oss-security] CVE-2015-5239 Qemu: vnc infinite loop issue" nil nil nil "9" "2015090219:33:17" "[oss-security] CVE-2015-5239 Qemu: vnc infinite loop issue" (number mark "        ppandit@redh Sep  3   18/536   " thread-indent "\"[oss-security] CVE-2015-5239 Qemu: vnc infinite loop issue\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32236 invoked by uid 550); 2 Sep 2015 19:33:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32218 invoked from network); 2 Sep 2015 19:33:37 -0000
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.20.1509030058080.6240@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
cc: lianyihan@360.cn
Date: Thu, 3 Sep 2015 01:03:17 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-5239 Qemu: vnc infinite loop issue
To: oss security list <oss-security@lists.openwall.com>

   Hello,

Qemu emulator built with the VNC display driver is vulnerable to an infinite 
loop issue. It could occur while processing a CLIENT_CUT_TEXT message with 
specially crafted payload message.

A privileged guest user could use this flaw to crash the Qemu process on the 
host, resulting in DoS.

Upstream fix:
-------------
   -> http://git.qemu.org/?p=qemu.git;a=commit;h=f9a70e79391f6d7c2a912d785239ee8effc1922d


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
