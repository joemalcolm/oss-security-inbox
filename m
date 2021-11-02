X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["881" "Tuesday" "2" "November" "2021" "16:43:48" "-0400" "Stuart D Gathman" "stuart@gathman.org" nil "17" "Re: [oss-security] Trojan Source Attacks" nil nil nil "11" nil nil (number mark "U       stuart@gathm Nov  2   17/881   " thread-indent "\"Re: [oss-security] Trojan Source Attacks\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Trojan Source Attacks" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23906 invoked by uid 550); 2 Nov 2021 20:59:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16108 invoked from network); 2 Nov 2021 20:48:51 -0000
Authentication-Results: mail.gathman.org; iprev=pass policy.iprev="2001:470:8:809::1010" (mail.gathman.org); auth=pass (CRAM-MD5 sslbits=256) smtp.auth=stuart
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gathman.org; 
 i=@gathman.org; q=dns/txt; s=default; t=1635885834; 
 h=date : from : to : cc : subject : in-reply-to : 
 message-id : references : mime-version : content-type : 
 date : from : subject; 
 bh=IaMi9gZG/KQtficI/4qd+EZ87RZ6pTxXLDPKqbA1NYE=; 
 b=BcohvEAhwflyjduxZxexSBDzsy5opCQf2K1z04RAqUvFszGMiBW23dVW
 rBBKTb5ZclG6/sNfb8N+676ApMsLJtBDr+t2tZNLACGOXwvcu+THVmye/4
 N8YGlNZsyFl3tx1PBdlOgizcPSpsPN2VsNwC8ZvwCKUIW5QozyZK8oJAY=
Date: Tue, 2 Nov 2021 16:43:48 -0400 (EDT)
From: Stuart D Gathman <stuart@gathman.org>
To: oss-security@lists.openwall.com
cc: Jan Engelhardt <jengelh@inai.de>
In-Reply-To: <CAAHN_R1S7Jf96Y1raEuBrJ5VmTNUJJL8bp2Qbhh_Y-42FWfp2w@mail.gmail.com>
Message-ID: <2dddaf8c-9220-f776-b0b4-13ad94d17e15@gathman.org>
References: <c2d12374-0ed6-d6d4-60ea-799934b6f173@cl.cam.ac.uk> <3n67pqq3-9ro6-p138-npo0-n4314s77638n@vanv.qr> <58836a21-c9df-41cc-d6ea-edd7b01f2105@piermont.com> <CAAHN_R1S7Jf96Y1raEuBrJ5VmTNUJJL8bp2Qbhh_Y-42FWfp2w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
Subject: Re: [oss-security] Trojan Source Attacks

> That's because unicode rendering is a UI element and calling compilers
> "impacted" is misunderstanding the issue.  There's scope for adding
> new diagnostics to square with UI representation of unicode, but
> that's at best an optional warning and it may not even be feasible in
> all cases.  A comprehensive language aware CI lint check is perhaps
> more suitable but if such a check devolves into "7-bit ascii only
> allowed" for all cases then we've regressed.

Bingo.  For many current languages, unicode is supported in string
constants and comments only - so syntax coloring should highlight 
anything beyond 7 or 8-bit outside of those elements.

Some support unicode variable/function names, and again syntax coloring
should be able to highlight sequences that cross word boundaries.

Having some sample source files to test your code editor/viewer on would be
helpful.
