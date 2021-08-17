X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["387" "Tuesday" "17" "August" "2021" "19:30:21" "+0200" "Jan Engelhardt" "jengelh@inai.de" nil "10" "Re: [oss-security] [OSSA-2021-004] Neutron: Linuxbridge ARP filter bypass on Netfilter platforms (CVE-2021-38598)" nil nil nil "8" nil nil (number mark "U       jengelh@inai Aug 17   10/387   " thread-indent "\"Re: [oss-security] [OSSA-2021-004] Neutron: Linuxbridge ARP filter bypass on Netfilter platforms (CVE-2021-38598)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] [OSSA-2021-004] Neutron: Linuxbridge ARP filter bypass on Netfilter platforms (CVE-2021-38598)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26103 invoked by uid 550); 17 Aug 2021 17:43:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20078 invoked from network); 17 Aug 2021 17:30:32 -0000
Date: Tue, 17 Aug 2021 19:30:21 +0200 (CEST)
From: Jan Engelhardt <jengelh@inai.de>
To: oss-security@lists.openwall.com
In-Reply-To: <20210817151717.m4qgvhye2svlvxmp@yuggoth.org>
Message-ID: <o474q87p-558p-onp5-19q4-n235o9r12r@vanv.qr>
References: <20210817151717.m4qgvhye2svlvxmp@yuggoth.org>
User-Agent: Alpine 2.24 (LSU 510 2020-10-10)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [oss-security] [OSSA-2021-004] Neutron: Linuxbridge ARP filter
 bypass on Netfilter platforms (CVE-2021-38598)


On Tuesday 2021-08-17 17:17, Jeremy Stanley wrote:
>Description
>~~~~~~~~~~~
>Jake Yip with ARDC and Justin Mammarella with the University of
>Melbourne reported a vulnerability in Neutron's linuxbridge driver
>on newer Netfilter-based platforms (the successor to IPTables).

ip_tables is running atop the netfilter API, so.... it's
not an ordered set with predecessors and successors.
