X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["735" "Thursday" "15" "October" "2015" "06:53:48" "-0700" "Greg KH" "greg@kroah.com" "<20151015135348.GA8128@kroah.com>" "22" "Re: [oss-security] CVE Request: Linux Kernel heap corruption on debug_read_tlb" nil nil nil "10" "2015101513:53:48" "[oss-security] CVE Request: Linux Kernel heap corruption on debug_read_tlb" (number mark "        greg@kroah.c Oct 15   22/735   " thread-indent "\"Re: [oss-security] CVE Request: Linux Kernel heap corruption on debug_read_tlb\"\n") "<CAJpd-bHmTaQ37Tykmfu7HAJrfu1JuW7wgFR32u1MWy0BjcTv6Q@mail.gmail.com>" ("<CAJpd-bHmTaQ37Tykmfu7HAJrfu1JuW7wgFR32u1MWy0BjcTv6Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3636 invoked by uid 550); 15 Oct 2015 13:54:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3610 invoked from network); 15 Oct 2015 13:54:03 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=oh4tD0Ef42mkSG5
	JEYxMpk477do=; b=ImlG+HGNhKYJ9HlBE3NXzh9mUhBtfmzLPzkGCMgP6FXtxGZ
	VoFEKi1yyniEL37uWa1HvpwD7HCsN7xj17pb6XhsatYza831ZhBp/TRNrQOpbVEj
	ANgqkLlbzrQkuoX2LfWU2mJ5n3+eD7q8qdGOh88GmIZibfmuIJfywcQV73Oo=
X-Sasl-enc: DTxaA0B16XffF7fLI3YTswuUXl/yeBTz9V3xnnRX12J5 1444917229
Message-ID: <20151015135348.GA8128@kroah.com>
References: <CAJpd-bHmTaQ37Tykmfu7HAJrfu1JuW7wgFR32u1MWy0BjcTv6Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAJpd-bHmTaQ37Tykmfu7HAJrfu1JuW7wgFR32u1MWy0BjcTv6Q@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Thu, 15 Oct 2015 06:53:48 -0700
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: Linux Kernel heap corruption on
 debug_read_tlb
To: oss-security@lists.openwall.com

On Thu, Oct 15, 2015 at 10:30:04AM +0200, Salva Peiró wrote:
> Hello,
> 
> Is there a CVE for this? If not, could one be assigned, please?
> 
>      https://patchwork.kernel.org/patch/6853351/
>      commit e203db293863fa15b4b1917d4398fb5bd63c4e88
>      iommu/omap: Fix debug_read_tlb() to use seq_printf()
> 
>      The debug_read_tlb() uses the sprintf() functions directly on the
> buffer
>      allocated by buf = kmalloc(count), without taking into account the size
>      of the buffer, with the consequence corrupting the heap, depending on
>      the count requested by the user.
> 
>      The patch fixes the issue replacing sprintf() by seq_printf().

For a root-only-readable file?  Why is a CVE needed?

thanks,

greg k-h
