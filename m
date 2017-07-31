X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["530" "Monday" "31" "July" "2017" "16:03:57" "+0100" "John Haxby" "john.haxby@oracle.com" "<5ba8733a-44fc-fe49-1f17-3dde40ad0e60@oracle.com>" "12" "Re: [oss-security] Linux kernel: net/irda/af_irda.c: irda_getsockopt() stack infoleak" "^Date:" nil nil "7" "2017073115:03:57" "[oss-security] Linux kernel: net/irda/af_irda.c: irda_getsockopt() stack infoleak" (number mark "        john.haxby@o Jul 31   12/530   " thread-indent "\"Re: [oss-security] Linux kernel: net/irda/af_irda.c: irda_getsockopt() stack infoleak\"\n") "<49eaccd9.1127.15d91d229be.Coremail.sohu0106@126.com>" ("<49eaccd9.1127.15d91d229be.Coremail.sohu0106@126.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7910 invoked by uid 550); 31 Jul 2017 15:04:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7816 invoked from network); 31 Jul 2017 15:04:13 -0000
References: <49eaccd9.1127.15d91d229be.Coremail.sohu0106@126.com>
Message-ID: <5ba8733a-44fc-fe49-1f17-3dde40ad0e60@oracle.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <49eaccd9.1127.15d91d229be.Coremail.sohu0106@126.com>
Content-Type: text/plain; charset=gbk
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
X-Source-IP: aserv0022.oracle.com [141.146.126.234]
Date: Mon, 31 Jul 2017 16:03:57 +0100
From: John Haxby <john.haxby@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: net/irda/af_irda.c:
 irda_getsockopt() stack infoleak
To: oss-security@lists.openwall.com

On 30/07/17 05:47, sohu0106 wrote:
> net/irda/af_irda.c
> 
> Sometimes irda_getsockopt() doesn't initialize all members of list field of irda_device_list struct.  This structure is then copied to
> userland.  It leads to leaking of contents of kernel stack memory.  We have to initialize them to zero , or it will allows local users to obtain potentially sensitive information from kernel stack memory by reading a copy of this structure
> 
> https://github.com/torvalds/linux/pull/440
> 

Have you requested a CVE for this?

jch
