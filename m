X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["680" "Wednesday" "7" "December" "2016" "01:46:22" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1612070140070.9956@wniryva>" "19" "[oss-security] CVE request Qemu: 9pfs: memory leakage via proxy/handle callbacks" nil nil nil "12" "2016120620:16:22" "[oss-security] CVE request Qemu: 9pfs: memory leakage via proxy/handle callbacks" (number mark "U       ppandit@redh Dec  7   19/680   " thread-indent "\"[oss-security] CVE request Qemu: 9pfs: memory leakage via proxy/handle callbacks\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5233 invoked by uid 550); 6 Dec 2016 20:16:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5209 invoked from network); 6 Dec 2016 20:16:39 -0000
Date: Wed, 7 Dec 2016 01:46:22 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liq3ea@gmail.com>
Message-ID: <alpine.LFD.2.20.1612070140070.9956@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Tue, 06 Dec 2016 20:16:27 +0000 (UTC)
Subject: [oss-security] CVE request Qemu: 9pfs: memory leakage via proxy/handle callbacks

   Hello,

Quick Emulator(Qemu) built with the VirtFS, host directory sharing via Plan 9 
File System(9pfs) support, is vulnerable to memory leakage issue. It could 
occur via its '9p-handle' or '9p-proxy' backend drivers as they do not free 
their respective allocated data objects.

A privileged user inside guest could use this flaw to leak host memory, thus 
affecting other services on the host and/or potentially crash the Qemu process 
on the host.

Upstream patches:
-----------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-11/msg03278.html

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
