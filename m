Received: (qmail 17952 invoked by uid 550); 2 Oct 2025 14:34:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17925 invoked from network); 2 Oct 2025 14:34:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm2; t=1759415669; x=1759502069; bh=iBRyAn490G
	J98LRD+Ya+NXNz5XWwIAf3GsFPXwvC+Bc=; b=AyUFu1ZhV/gzC2+crDSyvZccu9
	e6l6Ws+TrrhfvuoqVa9AgUhjVp8xl3is3w5GBabLv1SdggI7o49THeEP+e+iQ7ci
	FC9gNJdZUST7kFWFRBBn58hmOwMZWJd+4SDgqm63/5vl3SYcxs3/ClPI5TVST+U6
	oRPPT7qSQF59fsaLnRrxGuvd1eXBG4NSamV2j+dM4yi3OPVoE85siTfga/QY2Ofh
	hE120COFGFXHLvVnfmK5aJZjo3Zh39aaO58PLzl4VyfVRjitnjqqLzGKg3MPCcVG
	gMosQJjwpX5+JT9gDQ6nW0lY81wVSIqc2dDIF4oqsbTeHeZoEZyTEtQnKSHQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1759415669; x=1759502069; bh=iBRyAn490GJ98LRD+Ya+NXNz5XWwIAf3GsF
	PXwvC+Bc=; b=tzxuk5rFPgHmzpY3BMq0dyvwhqRAcrjGcm3lrGEqepOJamHdQds
	YCEKJT/edwFzc+EeyGtD9yszs2vIvWZHNEjhdeLll6TEsMThwSeh+3qLzz7GoG5W
	Xg8Z9E5FLCyfxk5bdxcasXPJzHn8MCRm0wLHg83t94+S5/5oWCgxRiqpcNhPudsm
	SshTM0y92KzbZzjRHkPmstKa/Ihk0w0pFpb2Mlg1l9yJTDgWQD/tgIcxHrwdXhla
	REop1COKG4A+RNQ1c50aJ0kNLL5xv9JZCvuYz7xZCFAClS8hqqi7TyqBUyU57Ke3
	gX4g0nnxQhE8oElai8iHvYhyrR9LdyS1A0Q==
X-ME-Sender: <xms:dY3eaO_W-H8zbuHgPcK-0U0XnGldGFU_42lzso1v68Ys1tFtpsj2Cw>
    <xme:dY3eaMqGPJyLkZatTSB1RWg4NgdlTNNzBe0XiQht2-yLAPUvGvE1p8p0eYoivcNeu
    qtuI_mZkb5vvBRgKRLSkcvQyEUHOAyCV2wvgBKwPFdhss_Upg>
X-ME-Received: <xmr:dY3eaLld3T7pzI10wxduyW_0IeWl3A-oabCqlYa2lThzHrocZWFJTY2ovi17c0u3Lma15OSVl2okMjyADixwNn32xS5ke84H9hZhAQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdekiedvjecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttdertddttd
    dvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucgg
    tffrrghtthgvrhhnpeevueehjefgfffgiedvudekvdektdelleelgefhleejieeugeegve
    euuddukedvteenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhr
    ohhmpehgrhgvgheskhhrohgrhhdrtghomhdpnhgspghrtghpthhtohepvddpmhhouggvpe
    hsmhhtphhouhhtpdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdho
    phgvnhifrghllhdrtghomh
X-ME-Proxy: <xmx:dY3eaDIJmRgZuJV_xRjWFa8NeGHfj5RolNcovx7tCA2TbxIjcYQYEw>
    <xmx:dY3eaAyJGKktLAI6PfThNIllJ-mU9KX9a-Y9LW4t0VmHGMv5sMuDEQ>
    <xmx:dY3eaLsZdXsukqBBUPo24NkVlxxv0urZjNOGQKt1nIrREDw1pJSoRA>
    <xmx:dY3eaPv-29yfUottFL78uepUUoFhAni2GXFYTIT-gsTJLvAJd-OhVQ>
    <xmx:dY3eaLWceApwvDWuT1CH0X5t4vZn4i5xIWnm1v4zHINwP-aVENSRyyRr>
Feedback-ID: i787e41f1:Fastmail
Date: Thu, 2 Oct 2025 16:34:26 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <2025100255-cage-squall-f003@gregkh>
References: <07bdaddb-1414-492b-a178-93b38f8ac3a0@gmail.com>
 <2025060713-aloe-decency-a74c@gregkh>
 <40b4dd6d-eb00-4076-8f38-546a1c3589a1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <40b4dd6d-eb00-4076-8f38-546a1c3589a1@gmail.com>
Subject: Re: [oss-security] Re: Re: Linux kernel: HFS+ filesystem
 implementation, issues, exposure in distros

On Thu, Oct 02, 2025 at 03:11:17PM +0200, Attila Szasz wrote:
> 
> For the sake of product security folks who rely on consistency: the Linux
> CNA recently registered a batch of HFS/HFS+ CVEs that require manipulating
> malformed filesystems as a first step. This seems inconsistent with how
> similar cases were previously handled.

If you feel the Linux CNA has issued CVEs in an inconsistent way, please
contact them and the people there will be glad to research the issue and
get back to you.  They are issuing, on average, 13 CVEs a day, and so
stuff like this easily gets lost in the firehose.

The Linux CNA is also currently "backfilling" many old CVE entries that
previously came from the GSD database, and perhaps the issues you are
referring to came from there.  If so, again, please contact them and
they will be glad to discuss it.

thanks,

greg k-h
