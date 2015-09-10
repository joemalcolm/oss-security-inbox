X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["603" "Thursday" "10" "September" "2015" "12:15:32" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1509101208190.20982@wniryva>" "19" "[oss-security] CVE request Qemu: ide: divide by zero issue" nil nil nil "9" "2015091006:45:32" "[oss-security] CVE request Qemu: ide: divide by zero issue" (number mark "        ppandit@redh Sep 10   19/603   " thread-indent "\"[oss-security] CVE request Qemu: ide: divide by zero issue\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16271 invoked by uid 550); 10 Sep 2015 06:45:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16231 invoked from network); 10 Sep 2015 06:45:51 -0000
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.20.1509101208190.20982@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
cc: Qinghao Tang <luodalongde@gmail.com>
Date: Thu, 10 Sep 2015 12:15:32 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request Qemu: ide: divide by zero issue
To: oss security list <oss-security@lists.openwall.com>

   Hello,

Qemu emulator built with the IDE disk and CD/DVD-ROM emulation support is 
vulnerable to a divide by zero issue. It could occur while executing an IDE 
command WIN_READ_NATIVE_MAX to determine the maximum size of a drive.

A privileged user inside guest could use this flaw to crash the Qemu instance 
resulting in DoS.

Upstream fix:
-------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2015-09/msg02479.html

The fix disables undue IDE commands for CD-ROM drives.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
