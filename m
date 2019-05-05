X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["931" "Sunday" "5" "May" "2019" "15:18:23" "+0200" "Greg KH" "greg@kroah.com" nil "25" nil nil nil nil "5" nil nil (number mark "U       greg@kroah.c May  5   25/931   " thread-indent "\"Re: [oss-security] CVE-2019-11683: \"GRO packet of death\" issue in the Linux kernel\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2019-11683: \"GRO packet of death\" issue in the Linux kernel" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12025 invoked by uid 550); 5 May 2019 13:34:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32106 invoked from network); 5 May 2019 13:18:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=srQkAgFxg5OOxjRZuNbMEdEj2ay
	g9d8Dc+ErY02Tn+k=; b=mncTsldUe1xC003+kzL3Dz4o0iGss52qRLVv/PsRwas
	xUuHNVX2ZRz8RWOUs7UON8S7uJ1MsbZrSPI8BmRxs4ztoGoct8Bid/nWsb6jZIex
	OjRtW6VgspgE4xoltdWKRtnwPkViR2JIimihdvnFob9xI4/F3W2vC8qyBdNFQszN
	f873rPwIxVYEmxdmVCKtC6IAS7Q/unoAFtzUJdF0Xj0OeDgUh2sCkspJ9/XXKIpn
	bpJOEHJnOxOQEIX/VoSdKAdXG/B8lB4t8qnCuIFaDUjpp1aHjW3ltAiedVQhsY3x
	iq6ZhSuCh5hpupCrcjM01xMgzL2BJOXKl+U8y9198Cw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=srQkAg
	Fxg5OOxjRZuNbMEdEj2ayg9d8Dc+ErY02Tn+k=; b=xupVgI1nmVQyyGqyuP4Yci
	Vy2xlyRfMCyUCLDb0TINLFwsLguL1+t9A5fuu0WnnIvkEeZtRqVtXexDi+uRa/mV
	oGyndG9auLwnDCfNtknFlZ1aUMp/JVE7Q/24fZ4Ikg4SoCcsaLyyNhLKuiP1L8C2
	ApDG2wOtWmq8o+5xjEZOy1r5jIfImmQUaKyYk2yhPRwBTVagonqrpxailEIePDGM
	OFPDInCGTE+9CnW9qQazO7Iq4bCONAXcr4GQFGBrH+7g8U+oukW0oLnOrHNLreYN
	aKhm1YqYO6rPdEeDPLn/eadMoBgHz67qcNnxgoIBu+RRHVsw4w92QjmK5mSLIM3Q
	==
X-ME-Sender: <xms:oeLOXN7IfyBDCq6Am5iyqZ1WxbHMmdaBaYekmeH7XNLt3eZfCXXvng>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddrjeehgdeilecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjfgesthdtre
    dttdervdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
    necuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucfkphepkeefrdekiedrkeelrddutd
    ejnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomhenucev
    lhhushhtvghrufhiiigvpedu
X-ME-Proxy: <xmx:oeLOXGlIi-oD9_2fad3BL27k1gQjz4Z3FsIl5NPFbuI8plKCT7llYw>
    <xmx:oeLOXIHIY4lOielzQ_pl6bfmOsm4tXBNAeolOxrFWEWe4AgBBP2mgQ>
    <xmx:oeLOXGYTjscgVhdWozVvfiwAb_IC1oNeIK-HRoHaxCR3AYvZ1o5Y7Q>
    <xmx:oeLOXCh6OAAiVFiOZXEEpd-fPk2dmzDVdnhlEevh8wXUjbX5aJ9gkA>
Date: Sun, 5 May 2019 15:18:23 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <20190505131823.GE25640@kroah.com>
References: <CA+fCnZeEm1PAjBzVbMuKzoZuE5rKffqdRPBvNO7C5yNO+JnbXQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+fCnZeEm1PAjBzVbMuKzoZuE5rKffqdRPBvNO7C5yNO+JnbXQ@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
Subject: Re: [oss-security] CVE-2019-11683: "GRO packet of death" issue in
 the Linux kernel

On Thu, May 02, 2019 at 07:14:30PM +0200, Andrey Konovalov wrote:
> Hi,
> 
> syzbot has reported a remotely triggerable memory corruption in the
> Linux kernel. It's been introduced quite recently in e20cf8d3f1f7
> ("udp: implement GRO for plain UDP sockets.") and only affects the 5.0
> (stable) release (so the name is a bit overhyped :).
> 
> CVE-2019-11683 description:
> 
> udp_gro_receive_segment in net/ipv4/udp_offload.c in the Linux kernel
> 5.x through 5.0.11 allows remote attackers to cause a denial of
> service (slab-out-of-bounds memory corruption) or possibly have
> unspecified other impact via UDP packets with a 0 payload, because of
> mishandling of padded packets, aka the "GRO packet of death" issue.
> 
> Fix (not yet upstream):
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git/commit/?id=4dd2b82d5adfbe0b1587ccad7a8f76d826120f37

Now fixed in the 5.0.13 kernel release.

thanks,

greg k-h
