Received: (qmail 26484 invoked by uid 550); 8 May 2026 08:56:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26463 invoked from network); 8 May 2026 08:56:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1778230585;
	 x=1778316985; bh=3VRN32EX9cYCJxijIRjcXA02ydwsYcXRAImNPZCiU1E=; b=
	eYVWl70fxhfoyW288VrY0AK8v/3ydl2BDrox4+FCRo7IN/2llLPoOjrGdOkjWJbw
	8WMtd7CG5E9N17vmmPEvV2M/BFEjEEfjmmBoCniXZ3aIBv+9iDZ0oUhf+GmK2SeN
	CDNdArAxX1OSGQsNG4UGUBYDe/Bd2PGlUWlzq30OlgBvccDM2PqTOpe3gki3OtzU
	mOU0PZDKrVfigq5Z5lpAYxrZRDibKlJAuaX7s106St/XQiwX21t0h0yKJqEsnIHU
	q8KYTftokWocoBKCawV5ZqyPFDC9EmzpW7Dtn5ikT2GrkbL4PfMMqHQycSQ4mwHp
	Q9Yciu1tFMm6kQCcnfwkbw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1778230585; x=
	1778316985; bh=3VRN32EX9cYCJxijIRjcXA02ydwsYcXRAImNPZCiU1E=; b=t
	V7J+YlENNImLzGrcIPpQ4utRcbsLq+zlalu0G9OaXpbVezBaUxmWR6Ydy/Gdslxw
	1/S8D13N19Zvb3IFLXRQp7dP1lT0voyX3AjD7p1RPJEt4T/+3CkXwmCJhlIk5oBi
	6CUkI56RsfOY8tFHb6Yr0jXUoE7D+vYzmer4bF/9gMXQ1IuGxFZIVVD9NvD4qrR/
	rLOYCl5B5s36XA3FgZIcXNiDax55Q/u7HIK6m5kyvSjZIICo8TMGPQgBGsnNyepV
	Lj5Yel8NpmJGvd1YipASo6Tz30ZXQvkwMgO0kJSetN7DN7+FjEFk3KDb0L4PD1LB
	oX56rDWHy8vwpQw+pjtWQ==
X-ME-Sender: <xms:OKX9aU7oJQKRCtor16YP4kLGsg9wffnwOoBQPSKXoCDpCrrBbpM8gg>
    <xme:OKX9af4aqzmGpTgtBGhwcoiKXLc75XjAio6qFn0OwGFmhwMALRsBUtY_uHESXHbzP
    WejcitokbZ85Ui4eDCNhdUZXFQMsjnIbWRz5BXY7osyJPIAaw>
X-ME-Received: <xmr:OKX9aaFAgZa3xhXUDVf6rzx4k8EQz9TBQOeR2hDJVHsRMu-GXJc-szVDzHvGe_KktWqQeTwMbwbVmkvWGz2Fhs7UFg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgddutdelledvucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepfffhvfevuffkfhggtggugfgjsehtkeertddttdejnecuhfhrohhmpefirhgvghcu
    mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucggtffrrghtthgvrhhnpefgkeffie
    efieevkeelteejvdetvddtledugfdvhfetjeejieduledtfefffedvieenucevlhhushht
    vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhh
    drtghomhdpnhgspghrtghpthhtohepkedpmhhouggvpehsmhhtphhouhhtpdhrtghpthht
    ohepshgrrhhohiesrhgvughhrghtrdgtohhmpdhrtghpthhtohepohhsshdqshgvtghurh
    hithihsehlihhsthhsrdhophgvnhifrghllhdrtghomhdprhgtphhtthhopegtvhgvsehk
    vghrnhgvlhdrohhrghdprhgtphhtthhopehimhhvgegsvghlsehgmhgrihhlrdgtohhm
X-ME-Proxy: <xmx:OKX9aXUoPUjsZ_MvZhhMVQPalfbHf_txMECp_NDApXU7xItUv9zg2g>
    <xmx:OKX9aWWoAvnV3qUlgedDgKpjuEgw2UitNh44v9TmAvSFIHayjUJgug>
    <xmx:OKX9aVJRPG9Hy7UtB0-ZFddX8h76AdMI0Zlzrai6I_qcMsYwy7H68Q>
    <xmx:OKX9aeAgdCgXgwYD1Rt0-7Ddw_mzbhAJBj7mXoIJYGsIc_KPsBFc5w>
    <xmx:OaX9abgO5t_zGy9jmetLuiY1T_Q3il75Oyy8gj4_BJyGZNy89cCiseIw>
Feedback-ID: i787e41f1:Fastmail
Date: Fri, 8 May 2026 10:56:23 +0200
From: Greg KH <greg@kroah.com>
To: Sandipan Roy <saroy@redhat.com>
Cc: oss-security@lists.openwall.com, cve@kernel.org, imv4bel@gmail.com
Message-ID: <2026050820-unabashed-viral-ef9d@gregkh>
References: <afzgS2SCWNcZU3vU@v4bel>
 <CAJ33NAVT3SKdcF6LFSnn4zuCUyxnjih0KET_cCTrMmgnhwNPbA@mail.gmail.com>
 <2026050843-chump-specks-dd29@gregkh>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2026050843-chump-specks-dd29@gregkh>
Subject: Re: [oss-security] Dirty Frag: Universal Linux LPE

On Fri, May 08, 2026 at 09:24:01AM +0200, Greg KH wrote:
> On Fri, May 08, 2026 at 12:43:59AM +0530, Sandipan Roy wrote:
> > Hi,
> > 
> > This stated that “no patches or CVEs exist” because the embargo was broken.
> > Could you please provide an update on the CVE assignment status for this
> > issue?
> 
> CVE-2026-43284 is now assigned.

That was for the first issue, and that is now fixed in the latest round
of stable kernel updates.  The second has CVE-2026-43500 reserved for it
if you need to track this, and is not fixed in any released kernel
version yet.

thanks,

greg k-h
