X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1688" "Friday" "26" "February" "2016" "10:29:54" "-0600" "Mark Felder" "feld@feld.me" "<1456504194.3567268.532868234.2EF42CB3@webmail.messagingengine.com>" "62" "Re: [oss-security] CVE request rtmpdump:  the 6 vulnerabilities have been fixed" nil nil nil "2" "2016022616:29:54" "[oss-security] CVE request rtmpdump: the 6 vulnerabilities have been fixed" (number mark "U       feld@feld.me Feb 26   62/1688  " thread-indent "\"Re: [oss-security] CVE request rtmpdump:  the 6 vulnerabilities have been fixed\"\n") "<3626D6E697A150459C44C0E5D8D8D00E0DBD28AA@EX02.corp.qihoo.net>" ("<3626D6E697A150459C44C0E5D8D8D00E0DBD28AA@EX02.corp.qihoo.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32409 invoked by uid 550); 26 Feb 2016 16:30:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32391 invoked from network); 26 Feb 2016 16:30:06 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=feld.me; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=mesmtp; bh=be8avj+YltMv3AgSBPQ1P4MP+os=; b=K2ZV6/
	u67SXzSCOy6ryp58CshCuuYAmac7T+lDXA8iS8KtaxoqztSxn2i0rnNhmXFCISGp
	GWXlOe7lwvsX/rXeyfckokAFBqvD1P5hYFxdnjJJpfrgif8L2MhiYh72wZHLL2PU
	jN/C2fEstE+lj43d3IybEFu5E2ypPUvbySzy4=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=be8avj+YltMv3Ag
	SBPQ1P4MP+os=; b=TxQxp8NLDmbtgk+oAx0HofB/UZj9p5k+fYEqydqfn1fYQk/
	lCmC7XOVmO15VlxkOfPA3JW8lsWDI+Tucd3GI0qXiqHg/AbDVB4jDRXHcuEZQy8V
	HEUgmtPqVUx+gRPuBZX05V1BgzTnVlI18cxHKyS21H009bo7dF42HBk2Nf2A=
Message-Id: <1456504194.3567268.532868234.2EF42CB3@webmail.messagingengine.com>
X-Sasl-Enc: fEr7avTMX3pgqZ+NS7Foi5QJQiab+XQtAUXVej7fWP/k 1456504194
From: Mark Felder <feld@feld.me>
To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain
X-Mailer: MessagingEngine.com Webmail Interface - ajax-aeec9b65
In-Reply-To: <3626D6E697A150459C44C0E5D8D8D00E0DBD28AA@EX02.corp.qihoo.net>
References: <3626D6E697A150459C44C0E5D8D8D00E0DBD28AA@EX02.corp.qihoo.net>
Date: Fri, 26 Feb 2016 10:29:54 -0600
Subject: Re: [oss-security] CVE request rtmpdump:  the 6 vulnerabilities have
 been fixed



On Tue, Dec 29, 2015, at 20:28, limingxing wrote:
> Hello,
> CVE request rtmpdump:  the 6 vulnerabilities have been fixed by Howard
> Chu a few days ago!
> These vulnerabilities affect latest version of ubuntu kylin by the
> smplayer!
> 
> Thank you !
> 
> 
> The git(git://git.ffmpeg.org/rtmpdump)log is:
> 
> commit fa8646daeb19dfd12c181f7d19de708d623704c0
> Author: Howard Chu <hyc@highlandsun.com>
> Date:   Wed Dec 23 18:58:50 2015 +0000
> 
>     Fix issue 6-7/7 from LMX of Qihoo 360 Codesafe Team
>     
>     Additional decode input size checks
> 
> commit 07c10ae612bf5c2dbea594dcbd4da85c54dba1e4
> Author: Howard Chu <hyc@highlandsun.com>
> Date:   Wed Dec 23 18:28:13 2015 +0000
> 
>     Fix issue 5/7 from LMX of Qihoo 360 Codesafe Team
>     
>     Ignore zero-length packets
> 
> commit 7c68ad18f4296911114470bb4caaa673d55c8447
> Author: Howard Chu <hyc@highlandsun.com>
> Date:   Wed Dec 23 18:10:15 2015 +0000
> 
>     Fix issue 4/7 from LMX of Qihoo 360 Codesafe Team
>     
>     Potential integer overflow in RTMPPacket_Alloc().
>     
> 
> commit f3042b5bb7dcb42eda32ad9dd88029b24a2c282b
> Author: Howard Chu <hyc@highlandsun.com>
> Date:   Wed Dec 23 17:53:34 2015 +0000
> 
>     Fix issue 2/7 from LMX of Qihoo 360 Codesafe Team
>     
>     Obsolete RTMPPacket_Free() call left over from original C++ to C
>     rewrite
> 
> commit 71fe4f2435beaccca046dad3905840615b76b085
> Author: Howard Chu <hyc@highlandsun.com>
> Date:   Wed Dec 23 17:51:39 2015 +0000
> 
>     Fix issue 1/7 from LMX of Qihoo 360 Codesafe Team
>     
>     AMFProp_GetObject must make sure the prop is actually an object

Did these ever get assigned CVEs?


-- 
  Mark Felder
  feld@feld.me
