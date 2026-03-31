Received: (qmail 1168 invoked by uid 550); 31 Mar 2026 16:31:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26176 invoked from network); 31 Mar 2026 06:47:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=deepin.org;
	s=ukjg2408; t=1774939594;
	bh=uxFb0hiLbVjX7pFiWGipbn4e3V/tMd3ow/s9ntSwU44=;
	h=Date:From:To:Subject:Message-ID:MIME-Version;
	b=vqyY+a5VlRs+ViTephR197wyWqNmAWM7+5LRdO0AMGovOHqHO5W+SL2hM3kCJoR2A
	 FL7btXODppNSyfMn/4qLG8B/t683GLgmsuJXs0oYli7ZPjABz/qznTdkxrwZtVvO48
	 dje1ET1tvUkVkNskJFyACmOhibAL5mjmlVAzzr2o=
X-QQ-mid: esmtpgz16t1774939590t09cb672e
X-QQ-Originating-IP: EGM2vSOaX9D6yDu/+WL0K9PZjt0C9bi/WNcZR/KKe8c=
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 15613567221884404066
EX-QQ-RecipientCnt: 4
Date: Tue, 31 Mar 2026 14:46:21 +0800
From: Tianyu Chen <sweetyfish@deepin.org>
To: oss-security@lists.openwall.com
Cc: Christian Brabandt <cb@256bit.org>,
	Demi Marie Obenour <demiobenour@gmail.com>
Message-ID: <A71BA2775357E5C6+acttvQU5RdxDk6tj@ut005408-PC>
References: <aco9Ai89pj+OQ0YS@256bit.org>
 <e1cbe881-2d13-442f-8977-39baaad84ec8@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e1cbe881-2d13-442f-8977-39baaad84ec8@gmail.com>
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:deepin.org:qybglogicsvrgz:qybglogicsvrgz3a-1
X-QQ-XMAILINFO: MKzYG8XJzx27auYMqVeNFWekSOKHQGelBCxWd2iWMGQnr+J17rJrpwsr
	1vGWXck0Lo/DRNB6neeTx2xwHkiDwxxD1f7Nds86643kMR/8fqyzsG+E1I4LchjAkGo+cf8
	HAxDd3HXNk1JiX3yXk4uVpuccs1tTs65rcRebQDybR7LoojMCSBw4WCGm+cYcBSrF5/tpxG
	+2YS1Xs0MjNcxuEw8uJEQJVlys78pERdIgKOgUizD9FqYecrjVkjwba68Hv95xc1kWfEyDV
	0frDXXHeLoU5NO473Xhwht7PaikEaNvrY8fxl4c1o7kf+mPS4S1RCVwLLRpvascIG09DOd5
	tjl4DXmf5MiKVVqCguFwcUx6kSRQspmqG3oBItvgQkHfVSLWflXdVS5mG5qKje5NWa8YQtO
	gfbJlNPwEjMEzfvUZxngGyhPREr3wueD09uwRzwAzhc/RHWMQe2xHKSQgSBd/WgSbzslYFO
	Slcqts44lWjVeEQDb2GaueAbcUQ169y9pi/A1DFOBfhKYUXU5zCD7hrF9Vrr6IZ3jVcl4WO
	Xw380/E3baPOEgJyVTFjx9/UsIpXPZgleLUwyqEK+dxecck6XgszqZEFl7YzqCUWdXWFQT7
	qR7upATdoJAUISdMmHftcWlCWyTQmgfQmGft93U+CmuWdX+Ndqy8EWE+sfT48odKmxqLMv2
	3FlstDNONtvqSLO+zcRPyEwQHGhDKA9aKqnRLqxgPCmXetkF+zWwXEoFvyV/7DXZczazp5r
	KT/taCuhRongreDlqcOCaqZ0EQhnnchC1u7WjZriNPJ7V2JQHPa9NL8JCTKbo20gLs1Z7Po
	507uSjh8ZGAlhDB2WvHfm0n33czZtY2LFd0NI9qtR75WkYXvqhNBdHz3GrCQbA6ZaySZZCy
	K7ABedKmY+sV/7VGHwYbTZk1JQ+hAhR5WfxybJDFbcWMACjnrVT2DD6REQDm5+waZPDPahy
	DcRUVlgi1JH5ASrlo2TqMwNFWZRlVks132GPvsjh3VGNHbL8DDe70EDPpwhdd/5Hr+PI0KE
	FEHQCSqCHorE3eJVHM
X-QQ-XMRINFO: NS+P29fieYNwqS3WCnRCOn9D1NpZuCnCRA==
X-QQ-RECHKSPAM: 0
Subject: Re: [oss-security] [vim-security] Vim tabpanel modeline escape
 affects Vim < 9.2.0272

On Mon, Mar 30, 2026 at 06:20:28AM -0400, Demi Marie Obenour wrote:
> Should `modeline` be disabled by default in future releases?
> It's a huge attack surface.

In Debian, `modeline` is disabled by default.

https://salsa.debian.org/vim-team/vim/-/blob/debian/sid/debian/runtime/debian.vim#L10

Best,
Tianyu Chen @ deepin
