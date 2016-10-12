X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["645" "Wednesday" "12" "October" "2016" "07:57:36" "+0200" "Greg KH" "greg@kroah.com" "<20161012055736.GA23681@kroah.com>" "20" "Re: [oss-security] Re: linux kernel do_blockdev_direct_IO invalid memory access" nil nil nil "10" "2016101205:57:36" "[oss-security] Re: linux kernel do_blockdev_direct_IO invalid memory access" (number mark "U       greg@kroah.c Oct 12   20/645   " thread-indent "\"Re: [oss-security] Re: linux kernel do_blockdev_direct_IO invalid memory access\"\n") "<20161011162708.0C94F3AE011@smtpvbsrv1.mitre.org>" ("<CAFkTriL_sGQ=0ym3ALDXjWMYNJxKC3UH02Lx7v9Zj_CsX9NOiA@mail.gmail.com>" "<20161011162708.0C94F3AE011@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15869 invoked by uid 550); 12 Oct 2016 05:57:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15848 invoked from network); 12 Oct 2016 05:57:39 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=qin1thbLy0pvHmMrN4ApUxYXafQ=; b=Lcpf9
	edgXg8JON8YugQXKuoL7Cj3JPinsKgBG5K860C0VmFoKGTHenp8Kg1uPWUAIMmIP
	bKidGbhd/0VIFmQOCOsrqkp8MODSmtNmXRXAvCZMtX1iSDnZRCksniXWEI9Svrx7
	P4UMMYSc6D3vXEmRX/yZtTmLyIv/ccMy99oCAE=
X-Sasl-enc: OQjPqTtN3fXf3axyQF1GOrRPf7lkH0fNu8TfbGsfMZ5g 1476251846
Date: Wed, 12 Oct 2016 07:57:36 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Cc: marco.gra@gmail.com, cve-assign@mitre.org
Message-ID: <20161012055736.GA23681@kroah.com>
References: <CAFkTriL_sGQ=0ym3ALDXjWMYNJxKC3UH02Lx7v9Zj_CsX9NOiA@mail.gmail.com>
 <20161011162708.0C94F3AE011@smtpvbsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161011162708.0C94F3AE011@smtpvbsrv1.mitre.org>
User-Agent: Mutt/1.7.1 (2016-10-04)
Subject: Re: [oss-security] Re: linux kernel do_blockdev_direct_IO invalid
 memory access

On Tue, Oct 11, 2016 at 12:27:08PM -0400, cve-assign@mitre.org wrote:
> > BUG: KASAN: wild-memory-access on address 0005080000000000
> > https://gist.github.com/marcograss/40850adb3c599ac38e0beac31617d56b
> > 
> >   int fd = open("./hurrdurr", O_APPEND|O_RDWR|0x40);
> >   fcntl(fd, 4, 0x44000, 0, 0, 0);
> >   fallocate(fd, 0, 0x21, 0xafa6);
> >   sendfile(fd, fd, &offset, 0x800);
> 
> Use CVE-2016-8601.

That was fast, and pointless, as the bug has never been in a -rc kernel
release, and is currently fixed in Linus's tree.

So please mark this CVE as "unused" or however you withdraw a CVE, as it
doesn't affect anyone.

thanks,

greg k-h
