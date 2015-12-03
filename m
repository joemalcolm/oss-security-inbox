X-VM-v5-Data: ([nil nil nil nil nil nil t nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1643" "Thursday" "3" "December" "2015" "17:39:58" "+0200" "Igor Smolyar" "igors@cs.technion.ac.il" "<5660624E.50205@cs.technion.ac.il>" "49" "[oss-security] CVE request -- Ethernet flow control vulnerability in SRIOV devices" "^Date:" nil nil "12" "2015120315:39:58" "[oss-security] CVE request -- Ethernet flow control vulnerability in SRIOV devices" (number mark "  z     igors@cs.tec Dec  3   49/1643  " thread-indent "\"[oss-security] CVE request -- Ethernet flow control vulnerability in SRIOV devices\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 1001
X-Mozilla-Status2: 00000000
Received: (qmail 9507 invoked by uid 550); 3 Dec 2015 16:06:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15936 invoked from network); 3 Dec 2015 15:40:12 -0000
IronPort-PHdr: =?us-ascii?q?9a23=3ARFBjDhSU6KcgDK8GwS0D+8si9Npsv+yvbD5Q0YIu?=
 =?us-ascii?q?jvd0So/mwa64YBON2/xhgRfzUJnB7Loc0qyN4/6mATRIyK3CmU5BWaQEbwUCh8?=
 =?us-ascii?q?QSkl5oK+++Imq/EsTXaTcnFt9JTl5v8iLzG0FUHMHjew+a+SXqvnYsExnyfTB4?=
 =?us-ascii?q?Ov7yUtaLyZ/niabqo9X6WEZhunmUWftKNhK4rAHc5IE9oLBJDeIP8CbPuWZCYO?=
 =?us-ascii?q?9MxGlldhq5lhf44dqsrtY4q3wD86Fpy8kVVr7hOr81RqFCDSg3G2Q0/9Hw8x7b?=
 =?us-ascii?q?QA2Q738YFG4Rl0lmGQ/AuTD1WY25iS79svt0wmHOPMLxV6scUi/k86pgSBnpjy?=
 =?us-ascii?q?FBPjV/8WWB2Z84t75SvB/0/083+IXTeozAbPc=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2DoAAB6YWBWjAEgRIReGQEBAQEPAQEBA?=
 =?us-ascii?q?YNdbqwQkTIBDYFiDBcMhzU4FAEBAQEBAQEBEAEBASdPgi2CCgEBAwIPEQ8BNUY?=
 =?us-ascii?q?CBSECEQIXQggBAR6IDQQJoUqBbo4CjQqEK4EBhVOKJIJQgUQFlmGFLYUjhEdJg?=
 =?us-ascii?q?3qDA5NMHwEBglMWB4FYcAGFbgEBAQ?=
X-IPAS-Result: =?us-ascii?q?A2DoAAB6YWBWjAEgRIReGQEBAQEPAQEBAYNdbqwQkTIBDYF?=
 =?us-ascii?q?iDBcMhzU4FAEBAQEBAQEBEAEBASdPgi2CCgEBAwIPEQ8BNUYCBSECEQIXQggBA?=
 =?us-ascii?q?R6IDQQJoUqBbo4CjQqEK4EBhVOKJIJQgUQFlmGFLYUjhEdJg3qDA5NMHwEBglM?=
 =?us-ascii?q?WB4FYcAGFbgEBAQ?=
X-IronPort-AV: E=Sophos;i="5.20,378,1444683600"; 
   d="scan'208";a="43482001"
Message-ID: <5660624E.50205@cs.technion.ac.il>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.4.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Date: Thu, 3 Dec 2015 17:39:58 +0200
From: Igor Smolyar <igors@cs.technion.ac.il>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request -- Ethernet flow control vulnerability in SRIOV devices
To: oss-security@lists.openwall.com

Hello,

a design flaw found in current Ethernet SRIOV NIC deployments 
that enables untrusted malicious VMs to completely control 
the throughput and latency of other, unrelated VMs. The attack 
exploits Ethernet ”pause” frames, which enable network flow 
control functionality. 

Link to the paper published on USENIX Security 2015:
https://www.usenix.org/system/files/conference/usenixsecurity15/sec15-paper-smolyar.pdf

Intel published a security advisory INTEL-SA-00046 on that issue:
https://security-center.intel.com/advisory.aspx?intelid=INTEL-SA-00046&languageid=en-fr

Could you please allocate a CVE id for this?
Below are fixes from major SRIOV vendors. 


Intel published fixed drivers on kernel.org:
ixgbe: add flow control ethertype to the anti-spoofing filter
commit f079fa005aae08ee0e1bc32699874ff4f02e11c1

i40e/i40evf: Add a workaround to drop all flow control frames
commit e7358f54a3954df16d4f87e3cad35063f1c17de5



Qlogic(ex Broadcom controllers) recently pushed the fix upstream.
There is patch which pushed the new FW:
http://lists.openwall.net/netdev/2015/11/19/73
And another which changed the driver to employ it:
https://patchwork.ozlabs.org/patch/547321/

This is the header of the driver patch:
Commit 46e8a249423ff "bnx2x: Add FW 7.13.1.0" added said .bin FW to
linux-firmware; This patch incorporates the FW in the bnx2x driver.

 - Prevent VFs from sending MAC control frames; FW would treat a VF
sending such a packet as malicious and block any further communication
done by the VF.



Mellanox also provided fix in firmware for ConnectX-3 devices.
Fixed firmware version 2.35.5000


Thanks,
Igor Smolyar
