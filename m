X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["603" "Monday" "25" "November" "2019" "15:16:15" "+0100" "Solar Designer" "solar@openwall.com" nil "13" nil "^Cc:" nil nil "11" nil nil (number mark "        solar@openwa Nov 25   13/603   " thread-indent "\"Re: [oss-security] Linux kernel: heap overflow in the marvell wifi driver\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: heap overflow in the marvell wifi driver" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31758 invoked by uid 550); 25 Nov 2019 14:16:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30564 invoked from network); 25 Nov 2019 14:16:29 -0000
Message-ID: <20191125141615.GA10910@openwall.com>
References: <7FA714F2-4FFA-4781-A2B8-8F18A7EC8015@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7FA714F2-4FFA-4781-A2B8-8F18A7EC8015@gmail.com>
User-Agent: Mutt/1.4.2.3i
Cc: oss-security@lists.openwall.com
Date: Mon, 25 Nov 2019 15:16:15 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: heap overflow in the marvell wifi driver
To: qize wang <wangqize888888888@gmail.com>

On Fri, Nov 22, 2019 at 08:51:31PM +0800, qize wang wrote:
> some flaws were found in the Linux kernel's Marvell wifi chip driver. 
> multi heap overflow in mwifiex_process_tdls_action_frame function in 
> marvell/mwifiex/tdls.c which allows remote attackers to cause a denial 
> of service(system crash) or execute arbitrary code.
> 
> the station receive a tdls setup request or respone frame which IE 's 
> length is larger than the heap buffer assigned (for example : the 
> EID_SUPP_RATES IE's length > 255) will cause heap overflow??

Red Hat has assigned CVE-2019-14901 to this issue.

Alexander
