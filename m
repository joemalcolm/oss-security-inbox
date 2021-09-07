X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["961" "Tuesday" "7" "September" "2021" "12:16:58" "+0200" "Greg KH" "greg@kroah.com" nil "24" "Re: [oss-security] CVE-2021-3715 Linux kernel: use-after-free in route4_change() in net/sched/cls_route.c" nil nil nil "9" nil nil (number mark "U       greg@kroah.c Sep  7   24/961   " thread-indent "\"Re: [oss-security] CVE-2021-3715 Linux kernel: use-after-free in route4_change() in net/sched/cls_route.c\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-3715 Linux kernel: use-after-free in route4_change() in net/sched/cls_route.c" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25996 invoked by uid 550); 7 Sep 2021 10:17:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25973 invoked from network); 7 Sep 2021 10:17:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm1; bh=XHZojapdiUaWFrfUif1tNB2ZBiI
	3ToOeenMyaTQKpN0=; b=vYESoIVOU1k8WX6VpNyDSEtBYgjditLnF1QmYmMD0PV
	772zBz6SLfd+0lVpdU4LY363gvj1SBT7GtyPg9xJ7Abbw2GObnGRvi7kD6l/S+BP
	p3/gLZ1hB8tXGIIJDpeeRvJW2fnD/DY+rUacHoRawdZ3bWBrcIEeGosFy7tRDE8C
	py61bktv/opsBDkoitFIaZpTJCouartpeu0s8LbLgcM4UmOcciSAWOGRlF+zRw0I
	uaM3eP6H02fwfEiBaqg9AOI0BNEZ0CEbpgWOMRrI6UQN3rCw39n201Vvtw537vuP
	lUYbDVlQdy9wX2WBfOe7BqIaHBYkkBiPtdp46CJyzLg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=XHZoja
	pdiUaWFrfUif1tNB2ZBiI3ToOeenMyaTQKpN0=; b=Ne006LZsy93ZKCwqzP25Qw
	WCcbi6ulc0v2YowbuvJRLob2/WX9HhnZdd8P7/izoY44zjxfh4ExT9xKdPinfrFo
	CKjnWFGdC6DZP3ZCWnA1vpK3O82XFEkY7CQMmUORBB4cnM7goKCZRH4CEx1a7pqR
	jylMJCrel+ddKAvYctDfv1YlAGbkbaERCR2t6Y29KZT2+TyCinGGb/ErbERnSQ9c
	SX6ai3DM5qtklNmOMXmB78GTbBbNIGMkycEXsvV+t6VaWon4VOsi/DJvzr1Q7UC2
	WscYLz7gjpVifd4IjHENv+/J08rpuluRtBk/+0Riqq5jdkrV34JDBf5ZjOXWXI/Q
	==
X-ME-Sender: <xms:Hjw3Yc5P_wuDA8nK_7HSlnBJa87IdrAe9crnyxpzzp0qljGO8G3LvA>
    <xme:Hjw3Yd4qRvvQhESSIuaEonMnU0r4rY3x6upqzy3IJwtNMpEANNWiiVEnv2yBpvlTK
    EWJcb_NMYEDug>
X-ME-Received: <xmr:Hjw3YbcMbAdoK9SN4bZiNLaN-Y6RRFzKKG88b0fKBMlsiu5hFJPicN15QdYk4G28HDABQGKuWx4KLJvYYKGzaV262IWV0j5Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudefhedgvdejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
    dttddtvdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
    necuggftrfgrthhtvghrnhepveeuheejgfffgfeivddukedvkedtleelleeghfeljeeiue
    eggeevueduudekvdetnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
    lhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhm
X-ME-Proxy: <xmx:Hjw3YRJABexfF7dtY_cxfmBt_bQfWrtlPMMDxqBpMMtlytoFoRmWIg>
    <xmx:Hjw3YQI4qB6LBrXVub2F-agqk9Jm1YcuKYq54Y51szvEmdDjYGGxDA>
    <xmx:Hjw3YSxBsA4OODx8QV_CTgHPOj-sqph5xkoOhzNQ3Lg6dWk6m1yIGA>
    <xmx:Hzw3Yaxpk7iTmVpASL_pp2DLdCuLwcV9sCqeBnJ-jjzRL8Ep1WhmJA>
Date: Tue, 7 Sep 2021 12:16:58 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <YTc8Gk29v6qc5ej0@kroah.com>
References: <CAKx+4-qZVEvOx+zD1R0r2UzNpT8eLUe+sTp78KJHjaEun7BVPA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKx+4-qZVEvOx+zD1R0r2UzNpT8eLUe+sTp78KJHjaEun7BVPA@mail.gmail.com>
Subject: Re: [oss-security] CVE-2021-3715 Linux kernel: use-after-free in
 route4_change() in net/sched/cls_route.c

On Tue, Sep 07, 2021 at 02:09:52PM +0530, Rohit Keshri wrote:
> Hello Team,
> 
> A flaw was found in the "Routing decision" classifier in the Linux kernel's
> Traffic Control networking subsystem in the way it handled changing of
> classification filters, leading to a use-after-free condition. This flaw
> allows unprivileged local users to escalate their privileges on the system.
> The highest threat from this vulnerability is confidentiality, integrity,
> as well as system availability.
> 
> This issue was fixed in the upstream Kernel 5.10 onward with ef299cc3fa1a9

Note, commit ef299cc3fa1a ("net_sched: cls_route: remove the right
filter from hashtable") came out in the 5.6 kernel release, in March of
2020, and was also backported to all relevant stable kernel releases at
the beginning of April, 2020:
	4.4.218 4.9.218 4.14.175 4.19.114 5.4.29 5.5.14

How did 5.10 get messed up in this, it was not released until December
2020?

thanks,

greg k-h
