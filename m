X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["802" "Friday" "17" "April" "2020" "10:33:59" "+0200" "Greg KH" "greg@kroah.com" "<20200417083359.GA141762@kroah.com>" "18" "Re: [oss-security] CVE-2020-10708 kernel: race condition in kernel/audit.c may allow low privilege users trigger kernel panic" nil nil nil "4" "2020041708:33:59" "[oss-security] CVE-2020-10708 kernel: race condition in kernel/audit.c may allow low privilege users trigger kernel panic" (number mark "U       greg@kroah.c Apr 17   18/802   " thread-indent "\"Re: [oss-security] CVE-2020-10708 kernel: race condition in kernel/audit.c may allow low privilege users trigger kernel panic\"\n") "<43b894ae-c437-4d49-bb57-6fa33535fb4e.splendidsky.cwc@alibaba-inc.com>" ("<6b92dc6f-8d68-4b09-9c35-e75fa4effd37.>" "<43b894ae-c437-4d49-bb57-6fa33535fb4e.splendidsky.cwc@alibaba-inc.com>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2020-10708 kernel: race condition in kernel/audit.c may allow low privilege users trigger kernel panic" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3915 invoked by uid 550); 17 Apr 2020 08:34:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3894 invoked from network); 17 Apr 2020 08:34:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:subject:message-id:references:mime-version
	:content-type:content-transfer-encoding:in-reply-to; s=fm3; bh=1
	5/QqsqjKp596MH8CkQa4l0pPL3aQtV5IVL4s+n3rsQ=; b=TIrN9Cxr0wQDGI7rr
	ySOHTZU0MPjUM0Cx4ihCgiwOqMJpAWLdjq4Bb0NtLEMbJs7TDoifhALkZ19hAoLf
	ufwsfBNfjy9AxHNmIdnaa/+zaRii5RVGzg5bnik4nx0BvE/o08hY08y7XDYn5mDc
	pRZ6FivtDOLr7glIZmOBDnTOvsvXQ+LD/QwAZzevAxVGfBjhdTgTR+77PUsG8TYV
	83JF45Gn2CBB/FF3gTUPHwBCcVjibjOipJWozVDGTDUzRAUavDm7OXCoRh3lq3TR
	mKJyDTit71GKC4Nrwty0nfoc+Mcw2THp/W70B6AAVbrhG9SmxDcS7qZlV+cxmCix
	a3ZGw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; bh=15/QqsqjKp596MH8CkQa4l0pPL3aQtV5IVL4s+n3r
	sQ=; b=mIYdIansh9r7nhjsLDltqbnJoAAWwTKAIk323vgbBhAYafOM4SwXUqvv7
	eljlbysYIU7K9YDMGzBO+v4pBN/bhMdXVS3T3bi4fBRn73Ax6VcRLdof6R/RgtYn
	+Dr5oV4638L8wfv3qsnlY7RiE3sh31E7o0gJFh8CIyb3HgS7Z3I1ZOG5ZV1OiKaa
	TD8TzA7eN+e/IGRzrROQWn3v6dAPUGkGPocY/N4XNh/5cqgPCkeoHElLpa8yUutS
	+zz1yGfYW5smFoENQfBDftisWZU9qe9SgDiQx0vEqP9XFvn9B1ilUAqmR2RwcqgN
	xmobfJwQwoIJDecNeQie148STQxjg==
X-ME-Sender: <xms:-GmZXuydFYkhFvHCuc7dG6NF3uc2MPBOs6iqLiQoaLhojj_vT6eaXQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrfeejgddtgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtugfgjgesthekre
    dttddtjeenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
    necuffhomhgrihhnpehrvgguhhgrthdrtghomhdpkhgvrhhnvghlrdhorhhgnecukfhppe
    ekfedrkeeirdekledruddtjeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhep
    mhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:-GmZXhOV8is_s4jdiZxxywo_H-6djD5UoPe2luqspsLlHiweR1m9lQ>
    <xmx:-GmZXleng1FLh0mL3dtYePQtIURfiC5waYGh3kQ71SNpLm5xckfKeg>
    <xmx:-GmZXo74smiP6LXV45A12OEsSFKIUO62xws9MS6a1d_ssorUivfIaA>
    <xmx:-WmZXiv_xCR3_qu1BZicxo1HUeqMZ5bcaBTDdoZEAQbovpQ-uclbAQ>
Date: Fri, 17 Apr 2020 10:33:59 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <20200417083359.GA141762@kroah.com>
References: <6b92dc6f-8d68-4b09-9c35-e75fa4effd37.>
 <43b894ae-c437-4d49-bb57-6fa33535fb4e.splendidsky.cwc@alibaba-inc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <43b894ae-c437-4d49-bb57-6fa33535fb4e.splendidsky.cwc@alibaba-inc.com>
Subject: Re: [oss-security] CVE-2020-10708 kernel: race condition in
 kernel/audit.c may allow low privilege users trigger kernel panic

On Fri, Apr 17, 2020 at 12:40:10PM +0800, 陈伟宸(田各) wrote:
> 
> "A race condition was found in the Linux kernel audit subsystem. When the system is configured to panic on events being dropped, an attacker who is able to trigger an audit event that starts while auditd is in the process of starting may be able to cause the system to panic by exploiting a race condition in audit event handling. This creates a denial of service by causing a panic."
> 
> https://bugzilla.redhat.com/show_bug.cgi?id=1822593

That bug link seems to be restricted at the moment :(

> Env:
>     Red Hat Enterprise Linux Server release 7.7 (Maipo)
>     3.10.0-1062.12.1.el7.x86_64

Any hint on if this is still an issue on the "mainline" kernel.org
releases or not given that 3.10 is a bit old?

thanks,

greg k-h
