X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["541" "Friday" "12" "August" "2016" "01:11:39" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1608120103530.6399@wniryva>" "17" "[oss-security] CVE request Qemu: buffer overflow in vmxnet_tx_pkt_parse_headers() in vmxnet3 device emulation" nil nil nil "8" "2016081119:41:39" "[oss-security] CVE request Qemu: buffer overflow in vmxnet_tx_pkt_parse_headers() in vmxnet3 device emulation" (number mark "U       ppandit@redh Aug 12   17/541   " thread-indent "\"[oss-security] CVE request Qemu: buffer overflow in vmxnet_tx_pkt_parse_headers() in vmxnet3 device emulation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30539 invoked by uid 550); 11 Aug 2016 19:41:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30520 invoked from network); 11 Aug 2016 19:41:58 -0000
Date: Fri, 12 Aug 2016 01:11:39 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1608120103530.6399@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Thu, 11 Aug 2016 19:41:46 +0000 (UTC)
Subject: [oss-security] CVE request Qemu: buffer overflow in vmxnet_tx_pkt_parse_headers()
 in vmxnet3 device emulation

   Hello,

Quick Emulator(Qemu) built with the VMWARE VMXNET3 NIC device support is 
vulnerable to an OOB read access. In that it does not check if packet headers 
does not check for IP header length. It could lead to a OOB access when 
reading further packet data.

Upstream patch:
----------------
   -> https://lists.gnu.org/archive/html/qemu-stable/2016-08/msg00077.html

This issue was reported by Li Qiang  if 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
