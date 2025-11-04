Received: (qmail 12210 invoked by uid 550); 4 Nov 2025 23:23:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12165 invoked from network); 4 Nov 2025 23:23:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm3; t=1762298593; x=1762384993; bh=66u4NzDZAO
	X/rKOWgCeapKzXjzxRjeSOPmmFOqVdKNo=; b=ewreCLR7etYdQmdIGX7LeTfpDe
	1os2TBrSou9k5kSvlGNEG7OqGf0v0VR8A94tl8Fonoc4l9soojV+2vPhHaeRFHxs
	J4LriELXXgZ+80mtxz8PcpboFFis4CB38B4foeh+Eayp/4RlgO1Mcn+soqncX1Hx
	eUv26MD6g80U9BycwcJ/DjCd+LU0NWZh6K3/CWUSVC7pwL6QgPamkop7GM98cQ5y
	1gvSENu2n7kaM+4Pq0GDrLr2dVq70EYog2SebsSY1k7JWYBm9R7WKXgz5hpmbvTY
	k/DBsYPY+pSNK9NDsOorEVVbdeIwGGSskN8qvxCJy8Wrnkvd+4YogVbpRAFw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1762298593; x=1762384993; bh=66u4NzDZAOX/rKOWgCeapKzXjzxRjeSOPmm
	FOqVdKNo=; b=fay8uhq1dfI66e1nC4OIX022Pxo+vbeLTnzzs7eZqxa5YZrNrIC
	Hauti3zxbLl4C5XAdtTA2s74OI3Z21N4WJDdXGSuSOfYGSn3CF8T4g+yb8tRAA2+
	Z2SgiVxvAcBsCnDwnXnFuX4pIC2JhnKuiy1LJcHtesW+0amtry19qmlj/RLXB3Cn
	snxGFfbj3fJ3pJe7aYVH60WMU/2rT06BK6CpSpyd1r5CrR/3ByfVVZ4oyW5OPA3b
	i+x3EEig65AavPvp8t9nKlsu4Vnlvlg0A4fbtqTKejz3AeqMOurcbm0nLE3VMul0
	mxebvwM7uLer5jqim6EePKz6jD6HHCYS/3g==
X-ME-Sender: <xms:4YoKadcA4zf2LOiH_V74VhhTEe9CxBt5dKrZG3cF5fkLiBkOxAFIzw>
    <xme:4YoKaZLOdh5SG7zoipnRWXsxVwSBBb1HF0vUYHdK8ScbknJPd8MUHjh9mi4kXbLGj
    vo3Ww_Imzg1y3MdRNFk0CgfW-Rvsm239Qq43SeboaGpmjhE1w>
X-ME-Received: <xmr:4YoKaeGdi6r3iTehzd13oRz9ppfnah_14nrJR-rlANEzhUDCB8ZK8J4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddukedvfeefucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtredttd
    dtvdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecu
    ggftrfgrthhtvghrnhepffffhfdvtdfhudefhfeukeeitdetvdekffeileehtddufefgtd
    efudegveehfefgnecuffhomhgrihhnpehophgvnhhsshhfrdhorhhgnecuvehluhhsthgv
    rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrd
    gtohhmpdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhuthdprhgtphhtthho
    pehoshhsqdhsvggtuhhrihhthieslhhishhtshdrohhpvghnfigrlhhlrdgtohhm
X-ME-Proxy: <xmx:4YoKaTpKTlQU1FzFLXaL0nI_yAWDjabW7m2vf9GrKeLv0u4W3FixLQ>
    <xmx:4YoKaXRpEtFluInliMvLrgmrI3ktr7I_XVSVWpTQCxnXYSZNp3PnuA>
    <xmx:4YoKaQMWVxDBGVywq3FvdI5jzpwvEIOQarZPXypU-Pgv7Xc9l1Gudw>
    <xmx:4YoKaaMZHUz5JOzI3BfKNhZbRupYpYZUO8rk7OlASCN-LHkcgQvRDQ>
    <xmx:4YoKad02V9ABDNf9Nfu7ckQ6F9aYTmcHCNmgc3rLTax7tMkwOAAxsJPg>
Feedback-ID: i787e41f1:Fastmail
Date: Wed, 5 Nov 2025 08:23:09 +0900
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <2025110538-probation-thickness-0517@gregkh>
References: <CAHjsZGZvy3zeN3st9-Ya4Hxu+29My68sXc9WJnZw_Pd2c_AF6Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHjsZGZvy3zeN3st9-Ya4Hxu+29My68sXc9WJnZw_Pd2c_AF6Q@mail.gmail.com>
Subject: Re: [oss-security] Becoming a CVE Naming Authority for your project

On Tue, Nov 04, 2025 at 08:47:35AM -0300, Rodrigo Freire wrote:
> Open Source Project Maintainers,
> 
> Managing security vulnerabilities is currently a significant pain,
> especially with the recent increase in dubious CVE reports due to AI
> assistants. The discussion around questionable CVEs reported against
> projects like dnsmasq, curl highlights a growing concern within the
> open source community.
> 
> One effective way to combat the influx of bogus CVEs and ensure
> accurate vulnerability reporting is for open source projects to become
> their own CVE Numbering Authority (CNA). As a CNA, your project gains
> control over the CVE assignment process.
> 
> Taking ownership of your project's as a CNA ensures that you are in
> control of the CVE assignment. There will be some requirements to it,
> sure thing. Check
> https://openssf.org/blog/2023/11/27/openssf-introduces-guide-to-becoming-a-cve-numbering-authority-as-an-open-source-project/

I totally agree that all "major" open source projects should become a
CNA, and strongly recommend taking back control over stuff like this.

But, for "smaller" open source projects, it would be _great_ if a root
CNA could become the default for all of open source so that we don't
have the problem where any CNA can assign CVEs against any random
software without any repercussions.

thanks,

greg k-h
