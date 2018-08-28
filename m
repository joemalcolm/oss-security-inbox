X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1356" "Tuesday" "28" "August" "2018" "14:55:30" "+0200" "Greg KH" "greg@kroah.com" "<20180828125530.GB14413@kroah.com>" "34" "Re: [oss-security] CVE-2018-10938: Linux kernel: net: infinite loop in net/ipv4/cipso_ipv4.c:cipso_v4_optptr() allows a remote DoS" "^Date:" nil nil "8" "2018082812:55:30" "[oss-security] CVE-2018-10938: Linux kernel: net: infinite loop in net/ipv4/cipso_ipv4.c:cipso_v4_optptr() allows a remote DoS" (number mark "        greg@kroah.c Aug 28   34/1356  " thread-indent "\"Re: [oss-security] CVE-2018-10938: Linux kernel: net: infinite loop in net/ipv4/cipso_ipv4.c:cipso_v4_optptr() allows a remote DoS\"\n") "<1461055985.6797445.1535361915875.JavaMail.zimbra@redhat.com>" ("<1314155599.6796744.1535361538888.JavaMail.zimbra@redhat.com>" "<1461055985.6797445.1535361915875.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13907 invoked by uid 550); 28 Aug 2018 12:55:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13888 invoked from network); 28 Aug 2018 12:55:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; bh=Nn18Jh9RrIIIYlYCCvwLv3jZmIVG/sflmqodGEzTx+8=; b=Lx5uH+ZQ
	FHd1iUJW8gfyxs/5cVwmL7uR3oV2wA4EvR8jSFMuouVPNzNEohO0ZkQtU95q/aH8
	xd1jSzul7haRzXlrK5LONLLz1Rw+soCQBawqxtu9rMr6YZeACV9fuOBsTMxu098L
	LPbHplw8GfJ4PdN5xNei3z5kkF8ClfHUO2/IdgrPhm/fkv5dA7FhjmpX4tfRk5Gs
	Hhb7sjSDaDtNWE3dYW0d3iPg9AcvBbZHCur6pQFOpDBqtcFTiR0L6lQ3sANtos6t
	fMSDHXN91YqXV1OJEexcX7yrysA6sWq3xrh68quvWRkN2pbuCRh+C23FReBMPYqC
	9lfpDiy5tJwqzw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; bh=Nn18Jh9RrIIIYlYCCvwLv3jZmIVG/
	sflmqodGEzTx+8=; b=P3L8X1etuAzhF0OfLlYMM6PbtoYu9r/i11dCOMIgdXu6z
	NSuIhgTdHFiO+NDKtF1DRVwwTJu8uBf+5Y63a/b40e+1ZxTEK096PeBafWyB0/mc
	NgGbHTLbeTPU7YRB3jeLg1zw5aiLYf4FS2pIR2yuUQVagUiat3pSzPWoJljQq95O
	l0AtpOAT+Npgm9hwDNelG+81f+mf6zbtjG6D5VkTk2+7xcpyzfr9IhXnLc+QOY1t
	/RJUG4u7XZPJPFn3re6abh61vEqIDFdxQ5EXwT3HQtrULHnrl46j0dwPcuMWG/xe
	NjywnQDqQvsbbYmFITM9POmvCG9UzUQdrta7Lr7ow==
X-ME-Proxy: <xmx:T0aFW15tITNsT1HvGyoc8JcXc2xeRCsu_to8mD_2g8Rmw41kaald8g>
    <xmx:T0aFW-D1DJs9PvbXeum7GqGLyvD-jIyg01jJJO_0DZzfXi1us1i_FA>
    <xmx:T0aFW2wgYGvcyLkurONjaMQDzKxZyRfQ7Ol3ZeD7nuSZsYg4vYfJOQ>
    <xmx:T0aFW6vNZz8NbcZNgGm8PG0AJUpcLcZMrea7J-ZHNbIDlHQMk-sMlw>
    <xmx:T0aFW99dM7O6fE60xxdjX_jZIOJYm5SzAVMgFgBEWeDFWs6bfDRJCQ>
    <xmx:T0aFWz587oe5Tr43ys_dwiczaN0CXyc0GawdLvmNk31iEOqENGX-nA>
X-ME-Sender: <xms:T0aFW9h7zLvc7Yzjtt-MzF0pbZBYuFProUHGNntOX_lV3MT3wdoI9w>
Message-ID: <20180828125530.GB14413@kroah.com>
References: <1314155599.6796744.1535361538888.JavaMail.zimbra@redhat.com>
 <1461055985.6797445.1535361915875.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1461055985.6797445.1535361915875.JavaMail.zimbra@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Tue, 28 Aug 2018 14:55:30 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2018-10938: Linux kernel: net: infinite loop
 in net/ipv4/cipso_ipv4.c:cipso_v4_optptr() allows a remote DoS
To: oss-security@lists.openwall.com

On Mon, Aug 27, 2018 at 05:25:15AM -0400, Vladis Dronov wrote:
> Heololo,
> 
> A flaw was found in the Linux kernel present since v4.0-rc1 and through v4.13-rc4.
> A crafted network packet sent remotely by an attacker may force the kernel to enter
> an infinite loop in the cipso_v4_optptr() function in net/ipv4/cipso_ipv4.c leading
> to a denial-of-service.
> 
> All the kernels with the cipso_v4_optptr() function which have not backported
> the upstream commit 40413955ee26 are vulnerable.
> 
> Thanks to Yves Younan from Cisco for mentioning this.
> 
> References:
> 
> https://bugzilla.redhat.com/show_bug.cgi?id=1622404
> 
> Upstream Patch introduced the flaw:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=04f81f0154e4bf002be6f4d85668ce1257efa4d9
> 
> Upstream Patch fixed the flaw:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=40413955ee265a5e42f710940ec78f5450d49149

To be more specific here (as I complained about the other CVE report for
the kernel a minute ago), this means currently the 3.18.y, 4.4.y, and
4.9.y kernels are vulnerable to this problem.  I'll go backport the
patch above now to those trees and it will be included in the next
releases of these kernel trees later this week.

Thanks for posting this here, it is helpful, and I appreciate it.

greg k-h
