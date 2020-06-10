X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1518" "Wednesday" "10" "June" "2020" "17:36:45" "+0200" "Greg KH" "greg@kroah.com" "<20200610153645.GB2107284@kroah.com>" "33" "Re: [oss-security] kernel: Multiple SSBD related flaws CVE-2020-10766 , CVE-2020-10767, CVE-2020-10768" "^Date:" nil nil "6" "2020061015:36:45" "[oss-security] kernel: Multiple SSBD related flaws CVE-2020-10766 , CVE-2020-10767, CVE-2020-10768" (number mark "        greg@kroah.c Jun 10   33/1518  " thread-indent "\"Re: [oss-security] kernel: Multiple SSBD related flaws CVE-2020-10766 , CVE-2020-10767, CVE-2020-10768\"\n") "<CALJHwhQ8BM=WpLme2x4oKUy2+u7Q_DBeHjP2Ot6GFvvGmdr1ZQ@mail.gmail.com>" ("<CALJHwhSuSiuK+gU07w1-MNoB1sW0XQwfpYCOzcXhky5K5Ynj9w@mail.gmail.com>" "<20200610114427.GA1895802@kroah.com>" "<CALJHwhQ8BM=WpLme2x4oKUy2+u7Q_DBeHjP2Ot6GFvvGmdr1ZQ@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] kernel: Multiple SSBD related flaws CVE-2020-10766 , CVE-2020-10767, CVE-2020-10768" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30614 invoked by uid 550); 10 Jun 2020 15:37:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30593 invoked from network); 10 Jun 2020 15:37:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm1; bh=vboOW25xeTNbHN2XCkJrlC1px9/
	YGTWB+HluX7Cr1j0=; b=I/CKI0YKLcpp15sQBneeG0FzQX92i6XnU5G9o2xmkcM
	8iBN3BB7YxWZ2Y/sgU44DAkO21mVlKdaJ1TOiCpbZVGEvEbPyjAGBEgT9GXEMd1N
	BWPWIzOpMJcQInxo0eUAtI6kn7W3wEMmMuxoqzyaf4KAqvJq9frrPuCkunsUO19e
	Uq1BhUN68lOLeykWri5RzI8S1QOp9ujYQ1x00/s18jYpsNOz+qGvefuOq/81K0Xm
	Te7AHyuVMB9Th3ynAdrsUDZQfxQw1iCKY5jp3Elwq5ItBfitJAAZIZPrb7O84yKu
	RFMkdX4op9zYIjEDXnCrLjYurhlUS3PxSpaSmfvP0yA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=vboOW2
	5xeTNbHN2XCkJrlC1px9/YGTWB+HluX7Cr1j0=; b=spbBJLbOFhxeFpuS1QyyDm
	C3XVCj2n5RK6wRuwwN1eX6n51u0zIP1T21gSNTGMN3dsV5Xh5VKh4vmVbl3pigp1
	JBhy/12zR48xgS9vumL6lKiR332BEc8u5qHjnlJncz0O+5ZiY+SQgmQ5ISSD6a9J
	CAcAQRbpEfvTvxpjsP+jcjQhpSMu9j/M+DkSw0qwSSP7cJSnlwUfgVqIPNQZZQWv
	gsfjzVVG/Fc/fhks576W8jMdLY2TzZu34ujj6cSAtw8O91giYvbSHhXZiOIbZ2P9
	2pioVHKJ0imhXqaZvWLyWejUqdoTiesmyIIdsJ0nvvNSRimV6gDECjoT4NkmWOFg
	==
X-ME-Sender: <xms:E_7gXpyh-g_DUbLKiUnP4lIlBCrz6YBa-EJ5WkB94f-aI-7V-wmtJw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehiedgleefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
    dttddtvdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
    necuggftrfgrthhtvghrnheptedtgefffeeuteehteevuefhgfefjeeiffeiudduveevtd
    ehtdetveejveeiheffnecuffhomhgrihhnpehmihhtrhgvrdhorhhgpdhkvghrnhgvlhdr
    ohhrghenucfkphepkeefrdekiedrkeelrddutdejnecuvehluhhsthgvrhfuihiivgeptd
    enucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhm
X-ME-Proxy: <xmx:E_7gXpQTr4aWCxOmk0akGL5zNwlYxFlR4YiBVMD1Zzh561KITGXlFA>
    <xmx:E_7gXjWm8v_GtW_ZxaRWL5hp9VuSiW6J2XC-NLC6_pCPjRaTRVx41w>
    <xmx:E_7gXrjOY28F77UwDXC3Oj_8WOZiRksPCdKMxXKUABYu7-_lHGDVnA>
    <xmx:E_7gXvysI4oLyxopY9O16OsjQlWKZ6yJp40kks7ssZTlyo4brzRIiw>
Message-ID: <20200610153645.GB2107284@kroah.com>
References: <CALJHwhSuSiuK+gU07w1-MNoB1sW0XQwfpYCOzcXhky5K5Ynj9w@mail.gmail.com>
 <20200610114427.GA1895802@kroah.com>
 <CALJHwhQ8BM=WpLme2x4oKUy2+u7Q_DBeHjP2Ot6GFvvGmdr1ZQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALJHwhQ8BM=WpLme2x4oKUy2+u7Q_DBeHjP2Ot6GFvvGmdr1ZQ@mail.gmail.com>
Date: Wed, 10 Jun 2020 17:36:45 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] kernel: Multiple SSBD related flaws
 CVE-2020-10766 , CVE-2020-10767, CVE-2020-10768
To: oss-security@lists.openwall.com

On Thu, Jun 11, 2020 at 01:14:03AM +1000, Wade Mealing wrote:
> > Did you ask the authors of the patches?  I think they might have already
> > assigned CVEs from Google's pool, based on previous interactions with
> > those developers...
> 
> I am in discussions with Anthony Steinhauser from Google, Anthony
> stated there were no CVE's assigned.  This message was mainly for the
> other CNA's  ( https://cve.mitre.org/cve/request_id.html ) who may be
> able to assign CVE's.

Is oss-security the place to sync up on those things?  I thought you all
had your own list to sync on those things, as that must happen often.

> If the kernel was a CVE Numbering Authority, they could assign their
> own ( https://cve.mitre.org/cve/cna.html#become_a_cna ) and this whole
> problem would not exist.  I'm not on the security@kernel.org mailing
> list (even after asking), so I can't really say what goes on behind
> those closed doors, I would think it falls under their interests.

The kernel does NOT want to become a CVE Numbering Authority, and our
documentation explicitly states that if you want a CVE for a kernel
issue, you can just go ask MITRE or someone else for it:
	https://www.kernel.org/doc/html/latest/admin-guide/security-bugs.html

There's loads of reasons why CVEs don't really work for the kernel at
all, as has been discussed many times here on this list, and in other
places, and even with MITRE themselves (and they agree with me).

I don't think we want to rehash that again here :)

thanks,

greg k-h
