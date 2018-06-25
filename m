X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["746" "Monday" "25" "June" "2018" "08:10:08" "+0300" "Georgi Guninski" "guninski@guninski.com" "<20180625051008.kx4kdv72lvvudalt@sivokote.iziade.m$>" "18" "Re: [oss-security] Intel hyper-threading security issues" nil nil nil "6" "2018062505:10:08" "[oss-security] Intel hyper-threading security issues" (number mark "U       guninski@gun Jun 25   18/746   " thread-indent "\"Re: [oss-security] Intel hyper-threading security issues\"\n") "<CAOp4FwSEi=_bNCMoiK66r4Y2QQToJgZyBjUX74s0omQ+whCS-w@mail.gmail.com>" ("<CAOp4FwSEi=_bNCMoiK66r4Y2QQToJgZyBjUX74s0omQ+whCS-w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3075 invoked by uid 550); 25 Jun 2018 09:38:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21915 invoked from network); 25 Jun 2018 05:10:21 -0000
Date: Mon, 25 Jun 2018 08:10:08 +0300
From: Georgi Guninski <guninski@guninski.com>
To: oss-security@lists.openwall.com
Message-ID: <20180625051008.kx4kdv72lvvudalt@sivokote.iziade.m$>
References: <CAOp4FwSEi=_bNCMoiK66r4Y2QQToJgZyBjUX74s0omQ+whCS-w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOp4FwSEi=_bNCMoiK66r4Y2QQToJgZyBjUX74s0omQ+whCS-w@mail.gmail.com>
header: best read with a sniffer
Subject: Re: [oss-security] Intel hyper-threading security issues

On Wed, Jun 20, 2018 at 12:48:55AM +0400, Loganaden Velvindron wrote:
> OpenBSD has gone ahead and disabled Intel Hyper threading with a
> fairly detailed comment about the reasons behind:
> 
> https://www.mail-archive.com/source-changes@openbsd.org/msg99141.html
>
According to journos Intel won't patch this:

https://www.theregister.co.uk/2018/06/22/intel_tlbleed_key_data_leak/
Meet TLBleed: A crypto-key-leaking CPU attack that Intel reckons we
shouldn't worry about
How to extract 256-bit signing keys with 99.8% success

Intel has, for now, no plans to specifically address a side-channel
vulnerability in its processors that can be potentially exploited by
malware to extract encryption keys and other sensitive info from
applications.
 
