X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["671" "Thursday" "21" "June" "2018" "07:56:42" "+0300" "Georgi Guninski" "guninski@guninski.com" "<20180621045642.fy67joeaxu2n4j56@sivokote.iziade.m$>" "21" "Re: [oss-security] Intel hyper-threading security issues" "^Cc:" nil nil "6" "2018062104:56:42" "[oss-security] Intel hyper-threading security issues" (number mark "        guninski@gun Jun 21   21/671   " thread-indent "\"Re: [oss-security] Intel hyper-threading security issues\"\n") "<CAOp4FwSEi=_bNCMoiK66r4Y2QQToJgZyBjUX74s0omQ+whCS-w@mail.gmail.com>" ("<CAOp4FwSEi=_bNCMoiK66r4Y2QQToJgZyBjUX74s0omQ+whCS-w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14066 invoked by uid 550); 21 Jun 2018 05:51:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32080 invoked from network); 21 Jun 2018 04:56:55 -0000
Message-ID: <20180621045642.fy67joeaxu2n4j56@sivokote.iziade.m$>
References: <CAOp4FwSEi=_bNCMoiK66r4Y2QQToJgZyBjUX74s0omQ+whCS-w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOp4FwSEi=_bNCMoiK66r4Y2QQToJgZyBjUX74s0omQ+whCS-w@mail.gmail.com>
header: best read with a sniffer
Cc: secure@intel.com
Date: Thu, 21 Jun 2018 07:56:42 +0300
From: Georgi Guninski <guninski@guninski.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Intel hyper-threading security issues
To: oss-security@lists.openwall.com

On Wed, Jun 20, 2018 at 12:48:55AM +0400, Loganaden Velvindron wrote:
> Hi all,
> 
> OpenBSD has gone ahead and disabled Intel Hyper threading with a
> fairly detailed comment about the reasons behind:
> 
> https://www.mail-archive.com/source-changes@openbsd.org/msg99141.html
>

Freebsd:

https://www.freebsd.org/security/advisories/FreeBSD-SA-05:09.htt.asc
Topic:          information disclosure when using HTT
Announced:      2005-05-13
When running on processors supporting Hyper-Threading Technology, it is
possible for a malicious thread to monitor the execution of another
thread.
V.   Solution

Disable Hyper-Threading Technology on processors that support it.
 
