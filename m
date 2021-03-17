X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1134" "Wednesday" "17" "March" "2021" "11:11:04" "+0100" "Greg KH" "greg@kroah.com" nil "28" "Re: [oss-security] CVE-2021-3428 Linux kernel: integer overflow in ext4_es_cache_extent" nil nil nil "3" nil nil (number mark "U       greg@kroah.c Mar 17   28/1134  " thread-indent "\"Re: [oss-security] CVE-2021-3428 Linux kernel: integer overflow in ext4_es_cache_extent\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-3428 Linux kernel: integer overflow in ext4_es_cache_extent" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30342 invoked by uid 550); 17 Mar 2021 10:11:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30321 invoked from network); 17 Mar 2021 10:11:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=8+qPP7jCHY1bwGtmX2Uo/6W8GkQ
	aFgtb4PXio58KyMw=; b=c6oNnVUlCTH8OwAIDAC6XxeIqrl/od4NifFUUhswmDl
	vUqwhIN2Nr41xAIHwDixkmlPbljvr/SsYZp2Pz0Bv3Fz+Zyf7LYVSLx229V6Q+xG
	Tyh1RFgDJ1AEQCY2b3vNcKGftThy8FTZTHwu112WmN915beyYevvr7q+Hv8IpBKh
	d0fgAmps03iQvClIfbsWwHbDkN8QT4qDawcgqXt7ITomgPVHVeClycAS6/NjPnJM
	BY/d+aBJyx5mNGqAPxgCDX7QoG2AFn3Ezqt42W+fr32mfZuJuDwBdfs6SDRvg2uU
	TI/YlczsWOtjyAcP7wfIe5c1gtswUvDSLJLXrv+G3Dw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=8+qPP7
	jCHY1bwGtmX2Uo/6W8GkQaFgtb4PXio58KyMw=; b=gcWGwVE4ZOG5PxT2/UaGNM
	1gxzM4mWWbdQJ3pHHYbziSq2QeylV+cvW04fqKkLusDbh8XORjjS+KE/ziSdIobM
	MxXMIq3K33b5r+gx0P7g+nxjU/NFl/Zk2zyz5U2CTnbjGTB1YYnx5YstzZXQ+/1K
	XtO0jA2gT0mpq+uaKTVJ72I/h6iRY9wvdIrBCbaYsfklPOJHUAHsU4tAGFssY2G3
	082qBYJ9xCY/jpqOgRo+/kcoo+N/XPyuzq2ELzAp/E+4nLQgoJSqiAGKwCJBAFcb
	g0IOMcGMlA9C9N72zFfsy6V4LL3HUXGvkvf+w86slk8jOatdkyk03QrK9BqFmY4g
	==
X-ME-Sender: <xms:vNVRYJ-NCukIwZ8aTVQ0oiGG6HfBL26UgPwlpZHmC0M09s9z6fppCg>
    <xme:vNVRYNtCRW3ktskwvm6p1DC7g3jamf6U5NKCY-DG-_siHgVr0iOIzqgXEvsuIyX85
    0b8V6tE7gxnHQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudefgedgudefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
    dttddtvdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
    necuggftrfgrthhtvghrnhepueelledtheekleethfeludduvdfhffeuvdffudevgeehke
    egieffveehgeeftefgnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucfkphepkeel
    rddvtdehrddufedurddutdeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
    hmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhm
X-ME-Proxy: <xmx:vNVRYHCR0kPWEIm8WJIww-eeTV_7LqtVP06gQBYeIskkXQjx8zenVg>
    <xmx:vNVRYNf4dYeAE7Jqesf4HMhMFwd58GkLpqmPa4FVg2kDfOJvHiAVtQ>
    <xmx:vNVRYOPhQ79V26mWeqnq-HqyiIL73pwgxfsmJqefFQ5scpgzgsWHUA>
    <xmx:vNVRYEZtnV11570WzaFh_E8tzDlWiZZpnvyT47Ybwi90YJrXIBVlfQ>
Date: Wed, 17 Mar 2021 11:11:04 +0100
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <YFHVuDKj+oMwxBZX@kroah.com>
References: <CAKx+4-oZ3YabEpWXYSs8LccRc8PcC_o2fbg7V5FpLT+nVBn66w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKx+4-oZ3YabEpWXYSs8LccRc8PcC_o2fbg7V5FpLT+nVBn66w@mail.gmail.com>
Subject: Re: [oss-security] CVE-2021-3428 Linux kernel: integer overflow in
 ext4_es_cache_extent

On Wed, Mar 17, 2021 at 11:21:23AM +0530, Rohit Keshri wrote:
> Hello Team,
> 
> A flaw was found in the Linux kernel. A denial of service problem is
> identified if an extent tree is corrupted in a crafted ext4 filesystem in
> fs/ext4/extents.c in ext4_es_cache_extent. Fabricating an integer overflow,
> A local attacker with a special user privilege may cause a system crash
> problem which can lead to an availability threat.

Please include what kernel version things like this were "found in" and
when it was fixed, otherwise you force everyone to go scramble just to
find that this was reported in July of 2020 and fixed then in the 5.9
kernel release and has already been backported to all relevant stable
kernel releases in August of last year.

In other words, no one running an updated kernel version from kernel.org
is vulnerable today, right?  Are you saying that specific distro kernels
are vulnerable to this?  If so, which ones?

> 'CVE-2021-3428' was assigned by Red Hat.

Are you sure that SUSE didn't already assign one to this?

And if not, why not and why do this now?  Who is this report for?

thanks,

greg k-h
