X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["697" "Wednesday" "27" "March" "2019" "15:35:59" "+0530" "P J P" "ppandit@redhat.com" nil "20" nil nil nil nil "3" nil nil (number mark "U       ppandit@redh Mar 27   20/697   " thread-indent "\"[oss-security] CVE-2018-20815 QEMU: device_tree: heap buffer overflow while loading device tree blob\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2018-20815 QEMU: device_tree: heap buffer overflow while loading device tree blob" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3567 invoked by uid 550); 27 Mar 2019 10:06:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3541 invoked from network); 27 Mar 2019 10:06:24 -0000
Date: Wed, 27 Mar 2019 15:35:59 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
Message-ID: <nycvar.YSQ.7.76.1903271534170.27869@xnncv>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Wed, 27 Mar 2019 10:06:08 +0000 (UTC)
Subject: [oss-security] CVE-2018-20815 QEMU: device_tree: heap buffer overflow while loading
 device tree blob

   Hello,

A heap buffer overflow issue was found in the load_device_tree() function of 
QEMU, which is invoked to load device tree blob at boot time. It occurs due to 
device tree size manipulation before buffer allocation, which could overflow a 
signed int type.

A user/process could use this flaw to potentially execute arbitrary code on a 
host system with privileges of the QEMU process.

Upstream patch:
---------------
   -> https://git.qemu.org/?p=qemu.git;a=commitdiff;h=da885fe1ee8b4589047484bd7fa05a4905b52b17

'CVE-2018-20815' assigned via -> https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
