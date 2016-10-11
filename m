X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["918" "Tuesday" "11" "October" "2016" "16:46:45" "+0200" "Greg KH" "greg@kroah.com" "<20161011144645.GB3606@kroah.com>" "29" "Re: [oss-security] linux kernel do_blockdev_direct_IO invalid memory access" nil nil nil "10" "2016101114:46:45" "[oss-security] linux kernel do_blockdev_direct_IO invalid memory access" (number mark "U       greg@kroah.c Oct 11   29/918   " thread-indent "\"Re: [oss-security] linux kernel do_blockdev_direct_IO invalid memory access\"\n") "<CAFkTriL_sGQ=0ym3ALDXjWMYNJxKC3UH02Lx7v9Zj_CsX9NOiA@mail.gmail.com>" ("<CAFkTriL_sGQ=0ym3ALDXjWMYNJxKC3UH02Lx7v9Zj_CsX9NOiA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17631 invoked by uid 550); 11 Oct 2016 14:46:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17610 invoked from network); 11 Oct 2016 14:46:50 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=LtLjfgA/Fb1z/9/2CZ82PtZnrSc=; b=GcqOS
	5SGG+JfNrswJNe96tlht4wz0IMjBe0OU5L2R8Rz/tc7BLiorCycE/11JyIgdciaN
	N9pJyg3sA3xlAADJ1nVsefmgaSzjLA7gjrGwRSLA3lcct/SL0OLK5uSXmBFCV58l
	AQfio174YEpgu53cb0x01fM7mfUcb9bMzZ3YV4=
X-Sasl-enc: GDqRe8u7da2imU4Y4La8884RP67uoPxqHHvk+JOKLH1/ 1476197197
Date: Tue, 11 Oct 2016 16:46:45 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <20161011144645.GB3606@kroah.com>
References: <CAFkTriL_sGQ=0ym3ALDXjWMYNJxKC3UH02Lx7v9Zj_CsX9NOiA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFkTriL_sGQ=0ym3ALDXjWMYNJxKC3UH02Lx7v9Zj_CsX9NOiA@mail.gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Subject: Re: [oss-security] linux kernel do_blockdev_direct_IO invalid memory
 access

On Tue, Oct 11, 2016 at 10:22:48PM +0800, Marco Grassi wrote:
> Hello,
> 
> I posted this to ask feedback on security at kernel dot org, but I think my
> mail got bounced back. Not sure if from the mailing list or from some
> single recipient.

It got there, you could have given us a few more hours to respond,
especially as most of the USA was still asleep, and others of us were in
a conference during the day in Europe. :(

> Anyway reposting here,
> 
> the following program will cause a invalid memory access
> 
> BUG: KASAN: wild-memory-access on address 0005080000000000
> 
> See this link for the full sanitizer report, stacktrace and trigger poc
> 
> https://gist.github.com/marcograss/40850adb3c599ac38e0beac31617d56b
> 
> tested on current master, with KASAN.

Can you take this to the linux-fsdevel mailing list now that you have
made it public?  That's the best place to resolve this.

thanks,

greg k-h
