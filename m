X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["493" "Wednesday" "17" "March" "2021" "13:54:47" "+0100" "Greg KH" "greg@kroah.com" nil "16" "Re: [oss-security] Use After Free and Double Free bugs in Linux Kernel mainline" nil nil nil "3" nil nil (number mark "U       greg@kroah.c Mar 17   16/493   " thread-indent "\"Re: [oss-security] Use After Free and Double Free bugs in Linux Kernel mainline\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Use After Free and Double Free bugs in Linux Kernel mainline" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24479 invoked by uid 550); 17 Mar 2021 12:55:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24458 invoked from network); 17 Mar 2021 12:55:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=lgWlMgErxH1PFYQ/rbaYmkDdxgD
	bLb0iSD9PieFKCBI=; b=JZniYOMl4OnObGxRx3dMc3ToAEGDh6oaWUf+Hw9zNq2
	sdo6U7y7QKZ8SwMbeiDWrPTljGPXcz/68rK0LCFspKocq2WXGZR8+yy/qyFqc/7o
	J6EfFqO4JdWeRyEnaqIEyw0C0Q9XjtfXg6i5s+SfWF+MqSVQmtSMawLaSVdLZXAv
	VGasjDT7O+ZrXwgwUkxLiRy7IBtZPaDizp2IzNVWre+fKMTqoJ5KDyJWOUrDJZ0b
	sehLDbGBd+o6F74bQCIFeZLeNHr3p2By0ovCMB2MOp8wjCa9caazCKpON+0FJ9Gf
	T0apqxqodL4w+Z5yddGiKba4NGfBSZmoHtSWuPwT6MA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=lgWlMg
	ErxH1PFYQ/rbaYmkDdxgDbLb0iSD9PieFKCBI=; b=DLBCrjO+F/d+c7oWX30h22
	9NirM33oNPBsUQr/zAbq6gTQYy9ghmANBMA8yxxHXMmDSnbxlEgJRfOkKWCYFN3j
	58Hafr3UkQ8UsKXcs8rgyKzlLnJNLONdQ4PB6Bxw/k9dTmL1CE8XYdVtAetihwnL
	YCvcmXZQ9SkXm4DdoqO5h0e1Jm+rBVBxQ3urPO+S6UqPmFDKzKsxPH1K883I55kY
	mUm4iChL/qufNtXfdrYjmDuJFACHurGjUZmt0Nj/oC5U94Ulf93wt7GVbr1aPh9V
	mLSjO0aobIIpEGzIqr0A2CxDcXYauxN1wggMl/42H6PC1IqJH8Gan33mR4oCKmRQ
	==
X-ME-Sender: <xms:G_xRYL8549wfli0eDa5RmjKykHaHDddWflOipKZAMCOFPZA-Qbap9A>
    <xme:G_xRYHtMq1gjEVbnE4Yk95eeeS-n-pW9VBG73nr6c87Kvf4tcoimTBV4E-wFOJAU9
    Onq5uqmUKckww>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudefgedggeeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
    dttddtvdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
    necuggftrfgrthhtvghrnhepveeuheejgfffgfeivddukedvkedtleelleeghfeljeeiue
    eggeevueduudekvdetnecukfhppeekfedrkeeirdejgedrieegnecuvehluhhsthgvrhfu
    ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtoh
    hm
X-ME-Proxy: <xmx:G_xRYJBqasrTe-1RDZj2_2dBBKSkNNMWoiK1Flt-MEdGSPBK5_HnvA>
    <xmx:G_xRYHcrsCxPxJ56GFC3R0C_JhEjT6_8hP9O53mWEHZIMFH32T0BnQ>
    <xmx:G_xRYAMwB85bVVuM7RF9M0GG0-kmk19UF0OPQ6nSL1JPr_1SlTiqqg>
    <xmx:G_xRYGZ9EyAMmJkzUdHKW1K7J5RnamgfILH2iq-rFkvIkOLGtBfM2Q>
Date: Wed, 17 Mar 2021 13:54:47 +0100
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <YFH8FxuqgoM20wT4@kroah.com>
References: <150fb1c3.1c2a0.17840082a2e.Coremail.lyl2019@mail.ustc.edu.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <150fb1c3.1c2a0.17840082a2e.Coremail.lyl2019@mail.ustc.edu.cn>
Subject: Re: [oss-security] Use After Free and Double Free bugs in Linux
 Kernel mainline

On Wed, Mar 17, 2021 at 07:53:00PM +0800, lyl2019@mail.ustc.edu.cn wrote:
> Hi,
>    I have found 4 security bugs in Linux Kernel mainline recently,
> and all of these bug are confirmed by the kernel maintainers.
> 
> Details are below. I'm trying to request CVE IDs for these bugs.

Please just ask MITRE directly for CVE ids if you really want them,
that's the correct location for them.

And have you submitted these fixes to the kernel developers yet?  If
not, why not?

thanks,

greg k-h
