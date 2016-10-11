X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["651" "Tuesday" "11" "October" "2016" "22:47:00" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1610112245410.16258@wniryva>" "16" "Re: [oss-security] CVE-2016-7039 Kernel: net: unbounded recursion in the vlan GRO processing" nil nil nil "10" "2016101117:17:00" "[oss-security] CVE-2016-7039 Kernel: net: unbounded recursion in the vlan GRO processing" (number mark "U       ppandit@redh Oct 11   16/651   " thread-indent "\"Re: [oss-security] CVE-2016-7039 Kernel: net: unbounded recursion in the vlan GRO processing\"\n") "<alpine.LFD.2.20.1610102309280.30612@wniryva>" ("<alpine.LFD.2.20.1610102309280.30612@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9431 invoked by uid 550); 11 Oct 2016 17:17:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9409 invoked from network); 11 Oct 2016 17:17:16 -0000
Date: Tue, 11 Oct 2016 22:47:00 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Sabrina Dubroca <sdubroca@redhat.com>
In-Reply-To: <alpine.LFD.2.20.1610102309280.30612@wniryva>
Message-ID: <alpine.LFD.2.20.1610112245410.16258@wniryva>
References: <alpine.LFD.2.20.1610102309280.30612@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Tue, 11 Oct 2016 17:17:05 +0000 (UTC)
Subject: Re: [oss-security] CVE-2016-7039 Kernel: net: unbounded recursion
 in the vlan GRO processing

+-- On Mon, 10 Oct 2016, P J P wrote --+
| Linux kernel built with the 802.1Q/802.1ad VLAN(CONFIG_VLAN_8021Q) OR Virtual
| eXtensible Local Area Network(CONFIG_VXLAN) with Transparent Ethernet
| Bridging(TEB) GRO support, is vulnerable to a stack overflow issue. It could
| occur while receiving large packets via GRO path; As an unlimited recursion
| could unfold in both VLAN and TEB modules, leading to a stack corruption in
| the kernel.

Upstream patch: (under review)
---------------
  -> https://patchwork.ozlabs.org/patch/680412/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
