Received: (qmail 9899 invoked by uid 550); 1 Apr 2026 08:37:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9539 invoked from network); 1 Apr 2026 08:37:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm2; t=1775032641; x=1775119041; bh=D9X4OStqi+
	eeTDrlJSUe/xEkgQM4JpLCHKhaZXEsQ4w=; b=alWRdT/9b3dJc0RMAnjV9uGP2a
	UjWsZF5FPOhkz3Lzw+GfZ589SKzUVfkWyTdyQmjuBnsvIg6nvhH4kbgDv2rvJZd1
	GnoSY3tfQuW8TqLi+ETS9xWbcWuVyoqljoi6IlC9FJD2o12VV7UHSaasK3QZTCwv
	6v4ASLr4RtGG4bzlDRtgTSxblodq/+VeXzEFWFQHjPU3IoyYAgkr23O1VmjMedb5
	FFIeW80fqXEneDzEZimJHipE0sikRMMeBzp7D+3IJLYsz2QygovPsqC/WVgPXQk6
	n4ZJPfF5TORfiLwuRS7qU5lQcd0YRMISQY68k+tgpHjQKVfNESy/zw5VaSsA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1775032641; x=1775119041; bh=D9X4OStqi+eeTDrlJSUe/xEkgQM4JpLCHKh
	aZXEsQ4w=; b=ZG/FPJ7Dunw2AQifFQzffrT1m3okNSRzoPuGufUfwzPZ475PIRX
	W/3uWK0Xc6X1G21Hq2eVPQycNqPkX0ch2EdnOM0hGtI2CRMTr3Y1PTJMFfVqOx5m
	Wjm6RBrry+FVvdYGvZ58cDdYXCWWRdJ/84Pl4Dd/3wVqBiXyI4HSciKEW6sUfTa3
	BRM+MUA5dv8LbGSH5pWJY8LNYllG9CFJlcYt386p3uHNXxn9sUPYGmCcZnleMsZX
	whacyB/8cs/L3kCzzPpdmrxcNkMyF5/ZsKOg6Jquw8Bm0/WhAo+o58EbBy67R8U/
	zxeBlvYAlbGdwbMp4BBAIgN3w+1DNaMVW2Q==
X-ME-Sender: <xms:QNnMaSCcw5dTSJo2vZKtOwkhZYQJgsgHfwwBjd-Z81wnVAMVzXZCIw>
    <xme:QNnMaV2p--26rgD59Jndxwgq8rFEjObdH4jFxsOi9eSZQom87typZRJ5Lnf_Ixsvv
    5qnk_iyunlA5za-BcUA8lHYrwqy86xiDG8lRPP-Ko-kUTV7dsQ>
X-ME-Received: <xmr:QNnMac15gpxQ7La7ofYfWFlg_fkevJL-oP34Q1R02_WzkcGz0rls8HVOasz46oMNGhYDXzsPPEPL7OwExFfO4mA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgddvieegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceurghi
    lhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttdertddttd
    dvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucgg
    tffrrghtthgvrhhnpeegheeuhefgtdeluddtleekfeegjeetgeeikeehfeduieffvddufe
    efleevtddtvdenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfu
    ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtoh
    hmpdhnsggprhgtphhtthhopeeipdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehq
    shgrsehquhgrlhihshdrtghomhdprhgtphhtthhopegtvhgvsehkvghrnhgvlhdrohhrgh
    dprhgtphhtthhopehoshhsqdhsvggtuhhrihhthieslhhishhtshdrohhpvghnfigrlhhl
    rdgtohhm
X-ME-Proxy: <xmx:QNnMaSApKHu4yH8l5X065rMb4f1f1d9rez-WHWywlsXE81YfOxNGdw>
    <xmx:QNnMaT65lDwjAzC3E84ChZE7NlmZDkRWx3FL5ENmafKNXhgw84kwpw>
    <xmx:QNnMabKXtvH6m6LlZSQqox9JE5L5rtQgmXDCV_eKcc9ClTHACH6dYg>
    <xmx:QNnMacteZBaUmKVh7rA5vqQBREVZqUrYgqwJXFNfQ-Meq-bPFz7HJg>
    <xmx:QdnMaVMjJxhn3rSFtIL5YIxYMVYm3Aw-lZQoKkUqNxktbHRkRyMHCBbZ>
Feedback-ID: i787e41f1:Fastmail
Date: Wed, 1 Apr 2026 10:36:13 +0200
From: Greg KH <greg@kroah.com>
To: Qualys Security Advisory <qsa@qualys.com>
Cc: "cve@kernel.org" <cve@kernel.org>,
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <2026040107-marshland-preflight-83a4@gregkh>
References: <20260312212345.GA2728@localhost.localdomain>
 <20260312213345.GA3105@localhost.localdomain>
 <20260326183559.GA22540@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260326183559.GA22540@localhost.localdomain>
Subject: [oss-security] Re: Multiple vulnerabilities in AppArmor

On Thu, Mar 26, 2026 at 06:36:17PM +0000, Qualys Security Advisory wrote:
> Hi Linux kernel CVE assignment team, all,
> 
> We saw that last week you assigned two CVEs to two of the nine AppArmor
> vulnerabilities that were fixed and released on March 12, thank you very
> much for these:
> 
> ------------------------------------------------------------------------
> https://lore.kernel.org/linux-cve-announce/2026031846-CVE-2026-23268-6be3@gregkh/T/#u
> > - "[PATCH 08/11] apparmor: fix unprivileged local user can do privileged
> >   policy management" (the confused-deputy problem detailed in this
> >   advisory);
> ------------------------------------------------------------------------
> https://lore.kernel.org/linux-cve-announce/2026031846-CVE-2026-23269-2bf7@gregkh/T/#u
> > - "[PATCH 01/11] apparmor: validate DFA start states are in bounds in
> >   unpack_pdb" (an out-of-bounds read);
> ------------------------------------------------------------------------
> 
> Since two weeks have passed now (since the fixes were released), would
> it be possible to please assign CVEs to the remaining seven AppArmor
> vulnerabilities:
> 
> ------------------------------------------------------------------------
> https://git.kernel.org/stable/c/e38c55d9f834e5b848bfed0f5c586aaf45acb825
> > - "[PATCH 02/11] apparmor: fix memory leak in verify_header" (a memory
> >   leak);

Now assigned to CVE-2026-23403

> ------------------------------------------------------------------------
> https://git.kernel.org/stable/c/ab09264660f9de5d05d1ef4e225aa447c63a8747

CVE-2026-23404

> https://git.kernel.org/stable/c/306039414932c80f8420695a24d4fe10c84ccfb2

CVE-2026-23405

> > - "[PATCH 03/11] apparmor: replace recursive profile removal with
> >   iterative approach" and "[PATCH 04/11] apparmor: fix: limit the number
> >   of levels of policy namespaces" (the uncontrolled recursion detailed
> >   in this advisory);
> ------------------------------------------------------------------------
> https://git.kernel.org/stable/c/8756b68edae37ff546c02091989a4ceab3f20abd

CVE-2026-23406

> > - "[PATCH 05/11] apparmor: fix side-effect bug in match_char() macro
> >   usage" (the out-of-bounds read detailed in this advisory);
> ------------------------------------------------------------------------
> https://git.kernel.org/stable/c/d352873bbefa7eb39995239d0b44ccdf8aaa79a4

CVE-2026-23407

> > - "[PATCH 06/11] apparmor: fix missing bounds check on DEFAULT table in
> >   verify_dfa()" (an out-of-bounds read and write);
> ------------------------------------------------------------------------
> https://git.kernel.org/stable/c/5df0c44e8f5f619d3beb871207aded7c78414502

CVE-2026-23408

> > - "[PATCH 07/11] apparmor: Fix double free of ns_name in
> >   aa_replace_profiles()" (the double-free detailed in this advisory);
> ------------------------------------------------------------------------
> https://git.kernel.org/stable/c/39440b137546a3aa383cfdabc605fb73811b6093

CVE-2026-23409

> > - "[PATCH 09/11] apparmor: fix differential encoding verification" (an
> >   infinite loop);
> ------------------------------------------------------------------------
> https://git.kernel.org/stable/c/a0b7091c4de45a7325c8780e6934a894f92ac86b

CVE-2026-23410

> https://git.kernel.org/stable/c/8e135b8aee5a06c52a4347a5a6d51223c6f36ba3

CVE-2026-23411

Hope that helps people's accounting systems :)

thanks,

greg k-h
