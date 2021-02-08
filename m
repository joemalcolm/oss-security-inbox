X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1610" "Monday" "8" "February" "2021" "13:28:57" "+0100" "Greg KH" "greg@kroah.com" "<YCEuiRh1ryqAtwvX@kroah.com>" "60" "Re: [oss-security] CVE-2021-20226 kernel: use-after-free in io_uring feature" nil nil nil "2" "2021020812:28:57" "[oss-security] CVE-2021-20226 kernel: use-after-free in io_uring feature" (number mark "U       greg@kroah.c Feb  8   60/1610  " thread-indent "\"Re: [oss-security] CVE-2021-20226 kernel: use-after-free in io_uring feature\"\n") "<CAKx+4-qGABkT2ssKnXPrGY2_1BT0RKxr+-XiDnBcB0yFCP8mJw@mail.gmail.com>" ("<CAKx+4-p+SyakmdxCd0XDm-1U3inx6uMdCNbhg_Y6270aXkaNJg@mail.gmail.com>" "<CAFRnB2W5J+vibKP58U36UJkq=G1BAzSLKtNHqodgi+LAhkrvNg@mail.gmail.com>" "<CAKx+4-qGABkT2ssKnXPrGY2_1BT0RKxr+-XiDnBcB0yFCP8mJw@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-20226 kernel: use-after-free in io_uring feature" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11793 invoked by uid 550); 8 Feb 2021 12:29:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11774 invoked from network); 8 Feb 2021 12:29:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=ozc9oWEpsipkk0PzxsARAcQWi9/
	ogzA0+IuhTtBMZbs=; b=nfhyV8q34lwUlV/vw0dZyppeQjx6jpz5KyFHd7VVMD5
	Pv94LIfz9a8jFHQvf1k+jVcL8q/TyFeFtAZQAganhT0YbuEovs7zX6LDK0j4ZS3u
	8XgIsdDQ4yKSS9CcJxzjC68C3nt8Z3yoiJw9O6L3zhDHZqoTzGh8MzDOBuz23Ao4
	ss/ET4WXFhpE2lzPaBWA61722ZLj2DnBwEhTJDMc1jqPbjvRx8t8ysdK1hu73uYj
	AThNSnsG9pY3RE06K2dQxB8a+spsfVq9kGUEHxhrCLnJITVIJf1FQUDaDomgJ1bk
	MhsxCU2slQzprVhoVt/yUoEgSZ9Sag5N5fh0PyjlC0A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=ozc9oW
	Epsipkk0PzxsARAcQWi9/ogzA0+IuhTtBMZbs=; b=phu1tcAS/v79dOzyuKcDw5
	vczVKpsiUXpSd5/ymdyjuDfv6DDtMJXRDDJ6Dc+bA7sR8cgV3ysMfaZnWp+H9hn3
	FN+Qx1nC+1vrUXcqlwC6jj9FsSyWNijnccN6BW0li4UxL5B7j62Mcqiy4XkUPBfN
	qyFR3gIdPFY95iakENNTxDzsEPMbhZ6478u6IpkQRU5VmbQeYYzozopVGOxvNJ2Z
	xlT7AuCeM8ZKVsdVUQSiUcRbOXgwr6okwF5bPvniNLGrxaUpGeoQpdAnHtXwQnRw
	NZu4XEkmH+4Ldg372aeV9UsKmEthRYsjSW1a2D4uUa79wxilq1w/J+vbz9Kp/H1w
	==
X-ME-Sender: <xms:iy4hYGOohWn1kYNEcaQyJ6JU1x_DstS3hA8Wy86ENW3AgnwA5vFSmQ>
    <xme:iy4hYE_Aa2AGiABTRJn18zFLh7O30awJDUxVso7AI16PU16GHiFPLCVSkhe6c7yEc
    HwBNy_d0N1oGw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrheefgdeflecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttdertd
    dttddvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhmqeen
    ucggtffrrghtthgvrhhnpeevueehjefgfffgiedvudekvdektdelleelgefhleejieeuge
    egveeuuddukedvteenucfkphepkeefrdekiedrjeegrdeigeenucevlhhushhtvghrufhi
    iigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:iy4hYNQz3J43hFKtdM-5n4KnwS11-z299G2heK22hyTmDOY5cjIo8Q>
    <xmx:iy4hYGv1pV5TY6X_uzg8mrpHFKs6l_jNl8ESETlOBT2cSt6m4NDiag>
    <xmx:iy4hYOdkD6zLa4ybC3BvNPCMATiw9C6KcemCdsMAxuDO53JncRTSvw>
    <xmx:jC4hYAoOhKagXM0mUWkto12L1OorfqqtS5_09ZcXPihohpR-PfiW6g>
Date: Mon, 8 Feb 2021 13:28:57 +0100
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Cc: alex.gaynor@gmail.com
Message-ID: <YCEuiRh1ryqAtwvX@kroah.com>
References: <CAKx+4-p+SyakmdxCd0XDm-1U3inx6uMdCNbhg_Y6270aXkaNJg@mail.gmail.com>
 <CAFRnB2W5J+vibKP58U36UJkq=G1BAzSLKtNHqodgi+LAhkrvNg@mail.gmail.com>
 <CAKx+4-qGABkT2ssKnXPrGY2_1BT0RKxr+-XiDnBcB0yFCP8mJw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKx+4-qGABkT2ssKnXPrGY2_1BT0RKxr+-XiDnBcB0yFCP8mJw@mail.gmail.com>
Subject: Re: [oss-security] CVE-2021-20226 kernel: use-after-free in io_uring
 feature

On Mon, Feb 08, 2021 at 03:00:18PM +0530, Rohit Keshri wrote:
> Hello,
> 
> The flaw CVE-2021-20226 is identified as a use-after-free problem with
> breach to data integrity, confidentiality and system availability, and
> this may even cause escalated privileges with good troubleshooting
> skills.
> 
> 
> I also wanted to add that the affected souce (as was reported for
> kernel v5.7.0) has been modified from v5.10 kernel version with patch
> 233295130e53 with following cleanup details.
> 
> ~~~
> 
> $ git show 233295130e53
> commit 233295130e53c8dfe6dbef3f52634c3f7e44cd6a
> Author: Pavel Begunkov <asml.silence@gmail.com>
> Date:   Sat Oct 10 18:34:06 2020 +0100
> 
>     io_uring: clean up ->files grabbing
> 
>     Move work.files grabbing into io_prep_async_work() to all other work
>     resources initialisation. We don't need to keep it separately now, as
>     ->ring_fd/file are gone. It also allows to not grab it when a request
>     is not going to io-wq.
> ..
> 
> $ git tag --contains 233295130e53
> v5.10
> v5.10-rc1
> v5.10-rc2
> v5.10-rc3
> v5.10-rc4
> v5.10-rc5
> v5.10-rc6
> v5.10-rc7
> v5.11-rc1
> v5.11-rc2
> v5.11-rc3
> v5.11-rc4
> v5.11-rc5
> v5.11-rc6
> v5.11-rc7

That's odd, don't use `git tag --contains`, the better thing to do is:

$ git describes --contains 233295130e53
v5.10-rc1~167^2~10

Which means is showed up in the tree in the 5.10-rc1 release, so
anything newer than that is fine.

Note, this does not include tests for backports to stable kernel
releases or distro kernels.  That kind of query is left as an exercise
for the reader :)

Hope this helps,

greg k-h
