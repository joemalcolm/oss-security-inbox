X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1304" "Tuesday" "12" "January" "2021" "09:04:49" "+0100" "Greg KH" "greg@kroah.com" "<X/1YIT59FZ7clijT@kroah.com>" "39" "Re: [oss-security] CVE-2021-20177 kernel: iptables string match rule could result in kernel panic" nil nil nil "1" "2021011208:04:49" "[oss-security] CVE-2021-20177 kernel: iptables string match rule could result in kernel panic" (number mark "U       greg@kroah.c Jan 12   39/1304  " thread-indent "\"Re: [oss-security] CVE-2021-20177 kernel: iptables string match rule could result in kernel panic\"\n") "<CALJHwhR0d-q7dPhC1wXWm63WA9cLh9cQX_GYRJO7Mw0O8kDL4w@mail.gmail.com>" ("<CALJHwhR0d-q7dPhC1wXWm63WA9cLh9cQX_GYRJO7Mw0O8kDL4w@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-20177 kernel: iptables string match rule could result in kernel panic" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24164 invoked by uid 550); 12 Jan 2021 08:05:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24141 invoked from network); 12 Jan 2021 08:05:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm2; bh=9vPKBSTLF/k350MBxWrJEiReCT6
	cmYnDi+cQWc1/79E=; b=z+6/sei9u5JixyVYiidDQOLw3idq3gAXJc2LdB5yPlV
	NhF8LUGo+R6qEft1KqYtX0zhkHjoJxDXOvrnH/tb8nJ+X/77dK/SJ6XaY6BdMOVU
	ZSe11r1f0SCuZSuhzKowKkFG6z0VE/wpWlor1vm7PiBh++deLiAaqPvWG+XAe9HK
	dWqLuoz03JLjPlSyTcSMXdRSqXuyXCLIOnhH7ccnAszIlDl/UAw0aziJhlovn/hG
	oOFesHmlNqh1Nx+YOVUUopG8nezq3ZOD2l0r2LBs6Mb+FTXscnYJ6jZkmGDrrFix
	UubLx2eQbD1j6QE87oWwOL8nsZSCVEFSHd7ETjX+arQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=9vPKBS
	TLF/k350MBxWrJEiReCT6cmYnDi+cQWc1/79E=; b=IrwG9E780Eu25Jol8TCrWd
	tBMe85QKMgL47Y9zPHd+CCLrwskF39NsMEW/Ya3YT6aB27jjtOrLoxXLsh78waKW
	WrSPGz1bugO/dfCnQNdiDh2KFlF6m7jDvD2ObQRlFYjY34Fpp/th1m15Eshbo940
	7XV/6FNraGonUYr60kKhYfeA/l2WLcAU/BMkHhijENqDxvL5l2sNLfIYybgtlQjW
	fBZJ4v1c24gHOVBntdBrCU1qKfJynsUzOc7d0XzfkMv0SNPNluDnC1lZ+mFEHMMw
	xQ9a3iGWSeozhzf309NNpq1FOgGaX1XNCj49v1Cg0pRfEh6M1CO4xVJ89U5jOHfQ
	==
X-ME-Sender: <xms:I1j9XyIdkxRl8vMs4MT21warLCQ_obhhnwS4Ufh4d3HdlaG5lEUbIw>
    <xme:I1j9X6IPHo4Lk4E5wsJDlQ0GQ_kteZZxA_BXCx3_5zHE57OhMbuUIHi9RFZzUNEDn
    rrgTDGO7Jkx8Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrvdehvddgudduhecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttd
    ertddttddvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhm
    qeenucggtffrrghtthgvrhhnpeelhfefuedvledtfeegteejheetvdfhkeelfeevleehhf
    fhieegtdeuvefgieffudenucffohhmrghinhepkhgvrhhnvghlrdhorhhgpdhrvgguhhgr
    thdrtghomhenucfkphepkeefrdekiedrjeegrdeigeenucevlhhushhtvghrufhiiigvpe
    dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:I1j9XyuMkGERmWkcb220G1j2J_C-WLSYuQEalORvD2hupXiCn9qKPA>
    <xmx:I1j9X3a8AS9gxy0j5c5rtnPpp6eX6aLl3uNXFXjLm1b06dvew0Eg_g>
    <xmx:I1j9X5YGG-CopO_gl5I257vXmwlRnhVP2xL1wzvs5a7_KJWI6zZ0Mw>
    <xmx:I1j9XylKSebZA83peIO5jmPROLUB_qtC9nqJH1xmds7XZiN0xc7VyA>
Date: Tue, 12 Jan 2021 09:04:49 +0100
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <X/1YIT59FZ7clijT@kroah.com>
References: <CALJHwhR0d-q7dPhC1wXWm63WA9cLh9cQX_GYRJO7Mw0O8kDL4w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALJHwhR0d-q7dPhC1wXWm63WA9cLh9cQX_GYRJO7Mw0O8kDL4w@mail.gmail.com>
Subject: Re: [oss-security] CVE-2021-20177 kernel: iptables string match rule
 could result in kernel panic

On Tue, Jan 12, 2021 at 04:58:07PM +1000, Wade Mealing wrote:
> Gday,
> 
> A flaw was found in the Linux kernels implementation of string matching
> within a packet. A privileged user
> (with root or CAP_NET_ADMIN ) when inserting iptables rules could insert a
> rule which can panic the system.
> 
> Likely a user with these permissions could do worse, however it crashes the
> system (DOS) and the user is going to have a bad day
> especially if the rule is inserted and restored on every boot.
> 
> At this time it doesn't affect RHEL releases, and there are fixes already
> in multiple upstream trees.
> 
> Thanks,
> 
> Wade Mealing
> 
> Upstream patch:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=ca58fbe06c54
> 
> Upstream bugzilla:
> https://bugzilla.kernel.org/show_bug.cgi?id=209823
> 
> Red Hat Bugzilla:
> https://bugzilla.redhat.com/show_bug.cgi?id=1914719

I still do not understand why you report issues that are fixed over a
year ago (October 2019) and assign them a CVE like this.  Who does this
help out?  And what about the thousands of other issues that are fixed
in the kernel and not assigned a CVE like this, are they somehow not as
important to your group?

What determines what you want to give a CVE to and what you do not?

thanks,

greg k-h
