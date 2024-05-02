Received: (qmail 30025 invoked by uid 550); 2 May 2024 09:14:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30001 invoked from network); 2 May 2024 09:14:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm3; t=1714641239; x=1714727639; bh=F3n3Av1mY6
	W49Kve62mkWR02vgSwU/4F3yYdrIzT8Fs=; b=nHKXry24SRC1nTIgazQ9DGF8dB
	g+nWVsyqZY9nWS94+zEv8YRtX3pMpYs51WVoxlFNE3sSdqD/sYkUwIPEfowZOgvw
	9r6K+6R+E+niKT+kVdD96oA4lTMMk7QAEFXVTCd/zTzImf75hnPTxi2L+ldINISS
	mk+kLpgVqPDJtqWoma3XISYOHDyka/c0HtN+mGBVnKb30eZtZf71Q9w5LYxVqSLM
	UZ/tY8Fv58Yux8AJBnhbbdgyxQt2mkLXaS8auSkWZ68A0sp48SW+VkadkJQd3Onh
	i2TP5xZrNHQZMoVBF63pm8eNVlMKJDRpT9D7P5QQev+37PdAzrZxaDiWzH5A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1714641239; x=1714727639; bh=F3n3Av1mY6W49Kve62mkWR02vgSw
	U/4F3yYdrIzT8Fs=; b=OVPF/u090l2rNtHF2KuMZqBHQC+Yd2FFlS/N3h+dvOjc
	rvNW6b3hHf9MQQJry6I78g0/yDN1rRmQ1oTv4Ps3w0WvT5UeTYVQvt2SsZuyyu5J
	MSLXEs7mAdir5+uTKmNZCaV/D7XuKh9Izjq0HXn5KXKkUzXS0fKv4rv4sDP15rGP
	IEwn67naYjlrxclY3YwIMnQTF/mYcAFnKAF4hFBZuJthctHujD/DXWf5BMPN8diI
	VJ9dnqot9YQ4mgR/6KhMjc78lHD6y2AnhPW8lOeb9f2fXcpz8ke4HIdTaVN7wxaB
	VX9ah2SdJ+2pGyH3Lo6NTadmlUAw5CsMJ/wvRd/t3A==
X-ME-Sender: <xms:VlkzZiigQ_nU5Bbbljhf6PdwDfW5WlB2dI1pcTOvq6slQcEVkD1lCw>
    <xme:VlkzZjA9hYA8owzhrYkQBfEXrQAMKrSEUASnFfahaLyjLPA4qEJlWMCz7FJmpoxF3
    G3t3xOpCVFhVA>
X-ME-Received: <xmr:VlkzZqGFVG2TOIW_8sTSuA0AmeTgNFowJQ7DpCAuwUKTNEZXlVtwwNcCNsFM9-slLwfsmZ7ko1RfQ8HL022v35L9YBshxVtvUGoarA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvddukedgudefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
    dttddtvdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
    necuggftrfgrthhtvghrnhepueelledtheekleethfeludduvdfhffeuvdffudevgeehke
    egieffveehgeeftefgnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushht
    vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhh
    drtghomh
X-ME-Proxy: <xmx:VlkzZrT3WpCrZQy5I-2SKMYuSdIQzpn854owZBpZt5uuOJqQneVmng>
    <xmx:VlkzZvzzet9uo7KuxofaPQ-NwJwyXsQBMj7PXchgUi6TxTgJJo7GEg>
    <xmx:VlkzZp7mxJNFvqVLG2_iN4zpSfDQaHGt1j3hx3n3jty6w2ZWGYzhyQ>
    <xmx:VlkzZsy2TeLFklZuHJFe-_9LXLcwUeppafw5HYNUiCDvVMwkxvL_JQ>
    <xmx:V1kzZq8EmrAFMaMnO6Fgl2BgfO5Bp_FuB_zx_5GCvu5luCERpttGR-Yr>
Feedback-ID: i787e41f1:Fastmail
Date: Thu, 2 May 2024 11:13:56 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <2024050229-overrun-crowbar-7f89@gregkh>
References: <7e78b8d8-860c-47f5-bbec-a967c277d539@oracle.com>
 <2661c15d-52d3-41b7-a725-cc66c2094ba4@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2661c15d-52d3-41b7-a725-cc66c2094ba4@oracle.com>
Subject: Re: [oss-security] Re: CVEs issued by the Linux kernel CNA

On Wed, May 01, 2024 at 01:27:06PM -0700, Alan Coopersmith wrote:
> On 2/20/24 15:30, Alan Coopersmith wrote:
> > As recently announced [1], kernel.org is now a CNA for the Linux kernel, and
> > today issued its first 8 CVEs, as seen in the archives of their mailing list
> > at https://lore.kernel.org/linux-cve-announce/ .
> > 
> > Their documentation [2] warns that we should expect a "seemingly large number
> > of CVEs that are issued by the Linux kernel team".
> 
> Quantifying this a bit more now - Greg K-H provided some stats so far in:
> https://social.kernel.org/notice/AhSCMVs4RofbnTftGS
> 
> which says:
> 
> > Year Reserved Assigned Rejected Total
> > 2019:   47        2        1      50
> > 2020:   37       13        0      50
> > 2021:   39      304        7     350
> > 2022:    7       43        0      50
> > 2023:   60      180       10     250
> > 2024:  107      435        8     550
> > Total: 297      977       26    1300
> > 
> > 
> > Anything older than 2023 is us back-filling in from the GSD database, and we
> > still have a long way to go for there. Some 2023 ones are in there too from
> > GSD, but mostly not, all of 2024 is since we took over being a CNA.

And, if anyone wants to play along at home, they can get the same
information directly from our git repo at:
	https://git.kernel.org/pub/scm/linux/security/vulns.git/
by cloning it locally and then running:

	$ ./scripts/summary
	 Year	Reserved	Assigned	Rejected	Total
	  2019:    47	            2	            1	           50
	  2020:    37	           13	            0	           50
	  2021:    39	          304	            7	          350
	  2022:     7	           43	            0	           50
	  2023:    60	          180	           10	          250
	  2024:   107	          435	            8	          550
	 Total:   297	          977	           26	         1300

No need for anyone to rely on random updates from me on
social.kernel.org for that type of thing.

thanks,

greg k-h
