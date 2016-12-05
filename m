X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["513" "Tuesday" "6" "December" "2016" "00:54:17" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1612060051070.20462@wniryva>" "17" "[oss-security] CVE request Qemu: display: virtio-gpu: memory leakage while updating cursor" nil nil nil "12" "2016120519:24:17" "[oss-security] CVE request Qemu: display: virtio-gpu: memory leakage while updating cursor" (number mark "U       ppandit@redh Dec  6   17/513   " thread-indent "\"[oss-security] CVE request Qemu: display: virtio-gpu: memory leakage while updating cursor\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9860 invoked by uid 550); 5 Dec 2016 19:24:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9842 invoked from network); 5 Dec 2016 19:24:34 -0000
Date: Tue, 6 Dec 2016 00:54:17 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liq3ea@gmail.com>
Message-ID: <alpine.LFD.2.20.1612060051070.20462@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Mon, 05 Dec 2016 19:24:22 +0000 (UTC)
Subject: [oss-security] CVE request Qemu: display: virtio-gpu: memory leakage while updating
 cursor

   Hello,

Quick Emulator built with the Virtio GPU Device emulator support is vulnerable 
to a memory leakage issue. It could occur while updating the cursor data in 
update_cursor_data_virgl.

A guest user/process could use this flaw to leak host memory bytes, resulting 
in DoS for a host.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-11/msg00029.html

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
