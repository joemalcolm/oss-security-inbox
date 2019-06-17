X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1132" "Monday" "17" "June" "2019" "20:20:23" "+0200" "Greg KH" "greg@kroah.com" "<20190617182023.GA19768@kroah.com>" "31" "Re: [oss-security] Linux and FreeBSD Kernel: Multiple TCP-based remote denial of service issues" "^Cc:" nil nil "6" "2019061718:20:23" "[oss-security] Linux and FreeBSD Kernel: Multiple TCP-based remote denial of service issues" (number mark "        greg@kroah.c Jun 17   31/1132  " thread-indent "\"Re: [oss-security] Linux and FreeBSD Kernel: Multiple TCP-based remote denial of service issues\"\n") "<84db7fe5-446a-4445-96db-8445fd43395c@saasmail.netflix.com>" ("<84db7fe5-446a-4445-96db-8445fd43395c@saasmail.netflix.com>") nil nil nil nil nil nil nil "Re: [oss-security] Linux and FreeBSD Kernel: Multiple TCP-based remote denial of service issues" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29707 invoked by uid 550); 17 Jun 2019 18:55:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30097 invoked from network); 17 Jun 2019 18:20:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-transfer-encoding:in-reply-to; s=fm1; bh=F
	FsTRpmy6Y903rBCJ8CfxKYOY+J0xtvv3CxW1EybfUU=; b=m+bF4p5BNfDIfe6RK
	f5RtIBB8O2YZn1tltcvkzH3qF59HjdVKQzNj4Gk1/+mseHNAk3FQVJrRe4BaQB3Y
	2HlFdm/y3SbJWzaHxca9NGLn8GpfgS/Azoss5lsXnH4TTOr4YZwiD7BM154vmnki
	tGxrruhHA5+U1lBl5ufKzH8s07p6cc+c8FIY5ThSI0nN7ik+mQx5BL8jvfURX0zI
	KhNxoh7m4GKWQkciPd29K/QnrW5gAvoWuwHFq+CnAZYfC5Le3RWEyviANMGl1ZIn
	urS+snrlA8SP1DJX48U3EcG5oV1sL2twhgvwfgGt384+/IjWT3fuqgUwjIidm9r7
	N5ukw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; bh=FFsTRpmy6Y903rBCJ8CfxKYOY+J0xtvv3CxW1Eybf
	UU=; b=M2nRxLO3EuG8efjiUCme5CwIISFLkVnmbQQHk+LVbojnqesGRpjxOglZC
	sCZBhmnND3dm0l+ec+2OjAM+yUhjaniph12lD7c/rEOTmOj17XOe1f4cl7v3wEjl
	sTXW3vsuNbtdbQm7cQaMdM7DSEqr4pY+aH4xRytOPqQqurdrNI6BGXR3wM/h/QiM
	H4Id9BUhaCWxJvZSwGe75n7eb+5owOhEjWHu/pHcrdkYRxIPsFDQqx8ZQpCkBOh9
	+oVZj9/eRYdykpi+jsc1DOgOtZsC3VO0HzzmjGXcief54d4t9sYlVcZmk6S/WGET
	39wmQN4PnVtY+UlWz2nsExKQjg58Q==
X-ME-Sender: <xms:6dkHXW1zQhCId5ppwUkHP9lW2x2NWrQuxcb7jLCF791IbX4Nxo-6ow>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddrudeijedguddvgecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvuffkfhggtggugfgjfgesthekredttderjeenucfhrhhomhepifhr
    vghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecukfhppeekfedrkeeirdekle
    druddtjeenucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhm
    necuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:6dkHXR2q-GxL9L7PKivHe_ouDDIGPnJs3EV4yYFYVAEOF2XDzLahuQ>
    <xmx:6dkHXUV9vTYbM-dSUK2aOeLehLvMQYJwx1_zm4HQuH2NXLvNLOOjnA>
    <xmx:6dkHXbjcvvqBKDPlBDqMYEZiIcI-LFvwg-VBgvBgPOOYyh-qXPXRAA>
    <xmx:6tkHXYkpUu1mJ3NEbFh645WPfPSCD5wgQYEClXwMl936cOuf_1Wl2Q>
Message-ID: <20190617182023.GA19768@kroah.com>
References: <84db7fe5-446a-4445-96db-8445fd43395c@saasmail.netflix.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <84db7fe5-446a-4445-96db-8445fd43395c@saasmail.netflix.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Cc: Security Report <security-report@saasmail.netflix.com>,
	security-report@netflix.com
Date: Mon, 17 Jun 2019 20:20:23 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux and FreeBSD Kernel: Multiple TCP-based
 remote denial of service issues
To: oss-security@lists.openwall.com

On Mon, Jun 17, 2019 at 10:33:38AM -0700, Security Report wrote:
> Netflix has identified several TCP networking vulnerabilities in FreeBSD 
> and Linux kernels.
> 
> The vulnerabilities specifically relate to the minimum segment size (MSS) 
> and TCP Selective Acknowledgement (SACK) capabilities. The most serious, 
> dubbed “SACK Panic,” allows a remotely-triggered kernel panic on recent 
> Linux kernels.
> 
> There are patches that address most of these vulnerabilities. If patches 
> can not be applied, certain mitigations will be effective. We recommend 
> that affected parties enact one of those described below, based on their 
> environment.

To answer all of the paniced emails I have already started to get, all
of these patches are now in the following Linux stable kernel releases
that just went out a few minutes ago:
	4.4.182
	4.9.182
	4.14.127
	4.19.52
	5.1.11

Other than the 3.16.y kernel branch, all other kernel branches are
end-of-life, and will not be getting updates for these, or any other,
bugfixes.  I do not know when/if Ben will be doing a release for 3.16.y
with these fixes.

thanks,

greg k-h
