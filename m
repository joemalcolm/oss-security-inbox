X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1911" "Wednesday" "17" "March" "2021" "16:51:35" "+0100" "Greg KH" "greg@kroah.com" nil "47" "Re: [oss-security] CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil "3" nil nil (number mark "U       greg@kroah.c Mar 17   47/1911  " thread-indent "\"Re: [oss-security] CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7818 invoked by uid 550); 17 Mar 2021 15:51:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7800 invoked from network); 17 Mar 2021 15:51:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=m3AoAtG/G4YQEvv6orI1OkLBZpC
	0vc/IUbRQaQf7jlI=; b=Wg6XuaHGrNuOfoomE7yQf+kf2uJBiF3JCx8i0vEq2yf
	SUXHCz7fuMVguxR+95jrSgxIHoZkKcJZ810FTc1EhmcyMGMpUljqJ6dUvD2+TfIG
	Q1K4SDuR0gnFNe1G+vYbMoGn69wbTSbELIPu7k+Q3y2JZE0OqG3OCoLg9e3uRqrW
	u8Bs4VAcnhPfV/yjLOdfYvftE7DbyznMMwDe1tmHZSrKbeVjFRUp7pQRSfhuy8tq
	wAT+lEl4j5yZT5Tl1pfyPhCvOcUz4RRJBRaxgR9+7cJL3zxHzDpS0tZioRUWBndi
	lOcgZRsoZEj5b0DZW9zvRMPQOmN/rZBq1bN7rD2NoZQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=m3AoAt
	G/G4YQEvv6orI1OkLBZpC0vc/IUbRQaQf7jlI=; b=VgBBsgf/n4cOSm4zVA+cqs
	uCifVrNJtqtmBtA8CcvF2SUxYJ2fx9n/1cHgdUCD8og9pGQY+x50HZwSdCR0bJgs
	iQq0Fu/QyoA9Fr2+kb+o+waUBnWa5RLGNbITjSWKu5QGXqUBu8mBn4B05438Ui8E
	lnnKa1KCeB0l1PKBpaxNgi3XuUYXEvUfQhvVWpgvGNhU8NH02lPt2SVODKoQPZAS
	SROmlc5RnEZ2w+sBrGJIV7nVTx7mlWiAZBMhZMy0pBrifudeKgantQuWx6cj3cP4
	NX8qBjxXGRF2hv7hz+8f177KbiJ+8fEdZnznXDixqXax5KtypiKaPKHG//02dFvw
	==
X-ME-Sender: <xms:iSVSYAbQJmD1-7OKsmk2FwLdG_uH0yUc3NjlLG7IZVJvw1lRlmQ53w>
    <xme:iSVSYPvhi2bjlbvvLY8myW2tygETLUsl2_pIFD8iiM5XO9xRMQjj06f-2H4y5k5AS
    mslW9lwGHOJfw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudefgedgkeegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefirhgvghcu
    mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucggtffrrghtthgvrhhnpeevueehje
    fgfffgiedvudekvdektdelleelgefhleejieeugeegveeuuddukedvteenucfkphepkeef
    rdekiedrjeegrdeigeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrih
    hlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:iSVSYKFsjy-pdRUVwZzX2yjXrul8RU6IBB1vDsERILaE0m9aoUsRwQ>
    <xmx:iSVSYCze54_NyFJTawpebZt8u775JZoGk4jM39a1gzwsG5PHUkAXGA>
    <xmx:iSVSYBgpY8QtTpPpu27bC8UV3tcGPk2_mL_ibkz3io2I4VMZlgFQ3A>
    <xmx:iiVSYJpwUAkoGNlSe4BFwNkL8mEDd39meWYjFYW4wNLNL48CT1UNRQ>
Date: Wed, 17 Mar 2021 16:51:35 +0100
From: Greg KH <greg@kroah.com>
To: Evgenii Shatokhin <eshatokhin@virtuozzo.com>
Cc: oss-security@lists.openwall.com
Message-ID: <YFIlh+AKXSV7Wt5Y@kroah.com>
References: <CAKx+4-qgvO4_R8fTqwxKLqwud42wUkG3V2POGeXE6C6Bv+zrxg@mail.gmail.com>
 <YFIdcSI6NvjeqFKp@kroah.com>
 <ab4fb69d-bbc1-0ee7-d3b9-58871ea096d8@virtuozzo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ab4fb69d-bbc1-0ee7-d3b9-58871ea096d8@virtuozzo.com>
Subject: Re: [oss-security] CVE-2021-20219 Linux kernel: improper
 synchronization in flush_to_ldisc() can lead to DoS

On Wed, Mar 17, 2021 at 06:36:29PM +0300, Evgenii Shatokhin wrote:
> On 17.03.2021 18:17, Greg KH wrote:
> > On Wed, Mar 17, 2021 at 07:45:59PM +0530, Rohit Keshri wrote:
> > > Hello Team,
> > > 
> > > A denial of service vulnerability was found in n_tty_receive_char_special
> > > in drivers/tty/n_tty.c of the Linux kernel.  In this flaw a local attacker
> > > with a normal user privilege could delay the loop (due to a changing
> > > ldata->read_head, and a missing sanity check) and cause a threat to the
> > > system availability.
> > > 
> > > 'CVE-2021-20219' was assigned by Red Hat.
> > > 
> > > Acknowledgements: Evgenii Shatokhin (Virtuozzo Research LLC)
> > 
> > Really?  Not the tools or people that reported this issue and fixed it
> > in the community back in 2018?
> 
> The description is misleading, unfortunately.
> 
> RedHat backported that original fix (commit 3d63b7e4ae0d "n_tty: Fix stall
> at n_tty_receive_char_special().") long ago.
> 
> I just found that their backport was incomplete: one hunk of the patch was
> lost. This lead to the problem I reported: the reproducer program caused
> n_tty_receive_char() to loop forever. As a result, other processes could
> hang too.

Ah, so the above text should have said "of the Red Hat Enterprise Linux
Kernel release XX.XX only", right?

Given that the above CVE is not public in any database that I can find,
one can only hope that the text will reflect what really is happening
here.  Rohit, why was this even published?

Again, stuff like this is just causing extra work by everyone else for
no good reason that I can see.

Rohit, PLEASE work on making these types of "announcements" reflect what
is actually happening.  I understand your company process rules require
the assignment of CVEs to issues to make things get resolved easier, but
that doesn't mean you should inflict that pain on the rest of the
world...

thanks,

gre gk-h
