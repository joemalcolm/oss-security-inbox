X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["444" "Saturday" "15" "June" "2019" "17:57:40" "+0200" "Greg KH" "greg@kroah.com" "<20190615155740.GA2960@kroah.com>" "12" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019061515:57:40" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "        greg@kroah.c Jun 15   12/444   " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20155 invoked by uid 550); 15 Jun 2019 16:00:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16237 invoked from network); 15 Jun 2019 15:57:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm1; bh=cjgwwc6sflQy/ZSGArsGzoy85WR
	2KeZa/PnYAOqkIWs=; b=H0c60lxnyqeFZrRiseMyJFvzyA5ryXFtQyk5n5C1gEI
	0PxbdJAZninXG9dqShFpNNatPit3kZ5MvVRTmxgfWqizEsDF6r+iWeBrSaOCNGj2
	jX9mj7ZcdMFj9pJkCtZtAdOQg9mqfIa/Vcd7uYa87H8da5CQVDlQZrbUA2fgH7Uv
	MqmD9MXKV4Fs7g+Oln+wneDdTPI4IBmIEcN9YT/JgywkTQUH1usp6mlwzZPHEQ9Y
	GWrBdgUvDcXjP+AsGcohY87h1bNq7wbSO75KQvj9CnlNOLCS1lrEvGOUwvCxNBZR
	+3yUifs9Vs/Y1IgE+9V8ehNGHAmevhAv7XQNGgrK5Xg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=cjgwwc
	6sflQy/ZSGArsGzoy85WR2KeZa/PnYAOqkIWs=; b=uB/D/pwwGvU1m6XV4dJ6Lm
	IkjWkdsqv5XdhGj4ijCxMXbTM5oZFVnAEX+GHlfoF8nzBei0tShYaQcxcHUm3aP8
	7sYpb6N4igvUWo+u2VUaE83QYbN8kxSb/wGu67loLKRvXX0ef4Ub+lHjtUz3moA8
	NyaWfgUcdCP3nBbKQwM16u/BXV69PDv3VcAhxo13xCnBbucjDIkpOJTUIEddkTKO
	3dQPOfjZWVhHMAEcnvpQnx2BTTUQbabJgQw4wywvfE3y+7w2kE302VhNYt+v4oli
	YCN9ARMxUkOnDQfNjAQ+M4J1PbOn37/VwRH6q0JGB+KSUmAk6RgkF4RzrFnXYqrA
	==
X-ME-Sender: <xms:dhUFXSmieWAM3HOoSVLrAhF80zkWoY3w3a72ZC_UVPITUk4kSF5BeA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddrudeifedgleeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujggfsehttd
    ertddtredvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhm
    qeenucfkphepkeefrdekiedrkeelrddutdejnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hgrhgvgheskhhrohgrhhdrtghomhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:dhUFXUrMqQngMcdBidcbERB-XD5HgK8hSSKoydUozkBg1THhbifihA>
    <xmx:dhUFXWQ9kLwoZk8povpKLoTeFZxNLOtsVXwvcNhcOeG_OU4UsE7oAg>
    <xmx:dhUFXbWSadClxCk6ME8NCkrozhYtKTQ35H3na-IQbR9LfjZBwUhXoA>
    <xmx:dhUFXZVtQEunpNolhBL0EY4UE9ZxfGzqSTDcmJXWz0zvTmvv_oxF3Q>
Message-ID: <20190615155740.GA2960@kroah.com>
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Date: Sat, 15 Jun 2019 17:57:40 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs:
 OSS-Fuzz
To: oss-security@lists.openwall.com

On Sat, Jun 15, 2019 at 11:49:03AM -0400, Alex Gaynor wrote:
> I do not have a solution to this problem. I wanted to raise awareness of
> it, in the hope that it would start a discussion which might come to a
> solution.

Why not just do a simple "you must upgrade to the latest version X to
fix a bunch of bugs" type of announcement?  No need to worry about crazy
backports and cherry-picking, that always fails in the end.

thanks,

greg k-h
