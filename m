X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["721" "Friday" "23" "August" "2019" "06:25:26" "-0700" "Greg KH" "greg@kroah.com" "<20190823132526.GA28250@kroah.com>" "17" "Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" "^Cc:" nil nil "8" "2019082313:25:26" "[oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" (number mark "        greg@kroah.c Aug 23   17/721   " thread-indent "\"Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2\"\n") "<20190822211311.1d435223@jabberwock.cb.piermont.com>" ("<CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>" "<C1E053CF-5359-43A3-8572-BE6CDFDCC2B1@oracle.com>" "<20190822093122.GQ6086@suse.de>" "<ECC3E425-3E0F-4671-AC2B-CA5FD8958FBD@oracle.com>" "<CA+fCnZfpGc0qK9MRp-BQJkLPrZhf-Md-UYCOtPi0RhbwJqmAHQ@mail.gmail.com>" "<20190822135753.10d124a4@jabberwock.cb.piermont.com>" "<9c8ef246-0e75-793b-6995-51e50a730701@ehuk.net>" "<20190822150054.1a7ef060@jabberwock.cb.piermont.com>" "<e690b8e0-0f3e-6370-8b1c-41baa4e13a71@ehuk.net>" "<20190822211311.1d435223@jabberwock.cb.piermont.com>") nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18174 invoked by uid 550); 23 Aug 2019 13:25:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18156 invoked from network); 23 Aug 2019 13:25:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm1; bh=r4ice2tXD+oL0hteLG+1llhQ06g
	fRMJd0QwpzDlTiL4=; b=T6Ce5UA4wLdXzPtvAmfpEdjGVaLpFdXWrIsZzfeeyus
	38sMy653YisGrFgxgbF42IRkgSDdhxZOFsaEtjRppmsjAhQHH2DTFIeHh/ejBPgC
	hMuDEgCBydzVml5Jb35WksskFH1kimlGrS+5yVKfWdRo6viK70WWK2Jg8KctrWjU
	WMKWvO6i7o/tqdeaWcXTHRluUT6NA4XLZOIUIWqC3Ws+58BY27mXtHOiAsqUdNnl
	mGkATJtIiRzDQzhWr0el6WuQqKf4hvvf15+qrf1Iq4+2loSXim6mDYMQt/aScZpr
	sXFArNr9Rmmyp1iQwF1QUP6L3iO01qRvxPXePTNgFKw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=r4ice2
	tXD+oL0hteLG+1llhQ06gfRMJd0QwpzDlTiL4=; b=g4wq8NQis4SaN/e4ve9IKJ
	/jatN1ws+/ZRHG3I0zHEVkyQs+X7dNtI8r113Naxc79y0M60c7y/KDAvuGgwH4/n
	UBED5vjGVHRf/aoDwyW/P1SUsngeMF26QepR9TlBNJ3cdal/3Wfj+bkfQVsiS9e5
	mydqjMR9zGg1/b8JntLSu6AmdxXbvhOJdPAX2vGySNPGRBlXEGieFfhnL36jGvyY
	jyA9Hfql1A0okWCdIvD6cRqCuzSF+Cni2ZXD352RxO6B70jFVU5z+So9riensPwo
	z9OyfmFzyJnGgZNwyTPNHVFiAqmPITChKkZAem9+goSaEKfPMPZe8DbRuJln4pTQ
	==
X-ME-Sender: <xms:R-lfXb6_GuXW_wIBmmvSwKBiHunWY22ZfmNBL_8yMxTV0X-EUxXaPw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudegkedgieduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomhepifhrvghg
    ucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecukfhppeduvddrudeiiedrudejge
    drheenucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhmnecu
    vehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:R-lfXe2fCXJrtqH_7HP5fo1kY51FU8GaPoxuat6WS_VgX3tnvdsW7g>
    <xmx:R-lfXUxHtR8bT-mTLkR9l95c9WAkpKAobClhfltpmKypRJA_r-is3w>
    <xmx:R-lfXQv-EEnwKTAAfDnYFVxcaGb-giB_5Hw3Y_v4c_35gdSidiUyeg>
    <xmx:SOlfXbEsKsxSsBWdSJUxQYPXrGzLVnDhFyyX-AhvR4lSCaOOdOaR8w>
Message-ID: <20190823132526.GA28250@kroah.com>
References: <CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>
 <C1E053CF-5359-43A3-8572-BE6CDFDCC2B1@oracle.com>
 <20190822093122.GQ6086@suse.de>
 <ECC3E425-3E0F-4671-AC2B-CA5FD8958FBD@oracle.com>
 <CA+fCnZfpGc0qK9MRp-BQJkLPrZhf-Md-UYCOtPi0RhbwJqmAHQ@mail.gmail.com>
 <20190822135753.10d124a4@jabberwock.cb.piermont.com>
 <9c8ef246-0e75-793b-6995-51e50a730701@ehuk.net>
 <20190822150054.1a7ef060@jabberwock.cb.piermont.com>
 <e690b8e0-0f3e-6370-8b1c-41baa4e13a71@ehuk.net>
 <20190822211311.1d435223@jabberwock.cb.piermont.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190822211311.1d435223@jabberwock.cb.piermont.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Cc: Eddie Chapman <eddie@ehuk.net>
Date: Fri, 23 Aug 2019 06:25:26 -0700
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB
 subsystem x2
To: oss-security@lists.openwall.com

On Thu, Aug 22, 2019 at 09:13:11PM -0400, Perry E. Metzger wrote:
> Given this, I think fixing bugs that might lead to privilege
> escalation, even if they require physical connection of USB devices,
> does indeed seem reasonable.

No one has said anything about not fixing these bugs.  The Linux USB
developers have been spending a lot of time in the past weeks doing just
that, so please do not think that is an issue here.

Now the "mount a purposfully corrupted filesystem image" issues, that's
another story :)  CERT has a long-running thread with a number of kernel
developers about issues they have found in that area over the past
years, which has not lead to many fixes for various reasons :(

thanks,

greg k-h
