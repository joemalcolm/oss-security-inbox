X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["708" "Thursday" "21" "February" "2019" "13:36:45" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1902211335290.504@xnncv>" "19" "[oss-security] CVE-2019-8934 QEMU: ppc64: sPAPR emulator leaks the host hardware identity" "^Date:" nil nil "2" "2019022108:06:45" "[oss-security] CVE-2019-8934 QEMU: ppc64: sPAPR emulator leaks the host hardware identity" (number mark "        ppandit@redh Feb 21   19/708   " thread-indent "\"[oss-security] CVE-2019-8934 QEMU: ppc64: sPAPR emulator leaks the host hardware identity\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1286 invoked by uid 550); 21 Feb 2019 08:07:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1265 invoked from network); 21 Feb 2019 08:07:01 -0000
X-X-Sender: pjp@kaapi
Message-ID: <nycvar.YSQ.7.76.1902211335290.504@xnncv>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Thu, 21 Feb 2019 08:06:49 +0000 (UTC)
Date: Thu, 21 Feb 2019 13:36:45 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2019-8934 QEMU: ppc64: sPAPR emulator leaks the host hardware
 identity
To: oss security list <oss-security@lists.openwall.com>

   Hello,

It was found that the KVM PPC64 emulator for the sPAPR machine leaks the host 
hardware identity to all running guests. The sPAPAR(hw/ppc/spapr.c) emulator 
populates the device tree for the guest with two fields "host-serial" and 
"host-model". The values for these fields are taken via hypervisor from the 
host device tree data exposed in "/proc/device-tree/system-id" and 
"/proc/device-tree/model" file respectively.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2019-02/msg04821.html

CVE-2019-8934 assigned via https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
