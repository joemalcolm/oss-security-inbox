X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["857" "Wednesday" "31" "October" "2018" "22:00:23" "+0100" "Greg KH" "greg@kroah.com" "<20181031210023.GF4132@kroah.com>" "19" "Re: [oss-security] Linux 4.19.0-rc3 Bluetooth out-of-bounds-read and use-after-free" nil nil nil "10" "2018103121:00:23" "[oss-security] Linux 4.19.0-rc3 Bluetooth out-of-bounds-read and use-after-free" (number mark "U       greg@kroah.c Oct 31   19/857   " thread-indent "\"Re: [oss-security] Linux 4.19.0-rc3 Bluetooth out-of-bounds-read and use-after-free\"\n") "<20181031141138.GA25071@openwall.com>" ("<20181031141138.GA25071@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13730 invoked by uid 550); 31 Oct 2018 20:59:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13709 invoked from network); 31 Oct 2018 20:59:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm2; bh=/svSPjuc/z3TS+fmgruJ7uw6H9C
	iQ0jyu9cRdLGxrrQ=; b=Xl9FqIByUAOdu7HS8X1clN+rggU/B9KvCUZEbQ8e0yc
	xlgqSuG37bA/4AUojV1TrAqv4ShSrmUb9t0V5669CzxKg8KKz5cxm8oh1JNdcWfI
	cGV4++mafFLjYcGl6CC55P+5hEEW6fRiUERhR1DMFvQaGOnkrXAkf5E+Tl+jb/uz
	j2h94X+fL2L/MsoIm1NlR3lM9VWNDBgaEXBMg4jUux2KDLhCaNiJzTcDc6l154zZ
	1kLd90GUMPlalDGQjelfxIHkXRUEZ34/BkBD/feeEc+rmiVZ2XFnzUC6dJl/ZbtE
	dnxKia+kMwaGjAfMSSFBpLMhy/KEDItmPI1GVz4g7FQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=/svSPj
	uc/z3TS+fmgruJ7uw6H9CiQ0jyu9cRdLGxrrQ=; b=r6qdTKUy7uPKGl8QMRMFMw
	vWAymcvBN7AIB/OQDYF5M1EscmD3zSB4T+Pl4ypGqj15EHaVyis1hpxyHxsd6ZW2
	na5RZIg8bs0YUKJ4J2RYFigVQTOagScbA5MFaQUw1elUq0RytXvoTxoSNBOgZ7Ly
	Kceoj+aQzQPA40dJHWJRoPvW64Yq/Y6lT2gugMy83tN9oHjUHdUyQ5MXh5ITn51I
	B0wHFjg4wvqgdh4cmTwEXWz4uLNDL9uOHKsjhiFMoruKDGgkiiTmBrlwrFx0wNF1
	VUerMJsspel49N8kscQPrZVCQzcnLmuk+jhmpB00FHOvOS+emTnOM5nvNE35p6JA
	==
X-ME-Sender: <xms:vBfaW8QW2ENsQ6fAgBfhwGo8mDDuU7Ctpqj4MlRlGYT2bXILkHYvfQ>
X-ME-Proxy: <xmx:vBfaWxVL9OvADysRr-yt9DEPgr7pilw9ieodEDdsS-4SKn_7Rcpx_A>
    <xmx:vBfaW9Aja66G4SmHDH5rhZRQ5JLAFqJLCiUovx2G62lqRiyVswIXGg>
    <xmx:vBfaWw4zdnGA2tSKwJGRqmjfHENlgaDt_fXIDKaszKWShgDlKyOnDQ>
    <xmx:vBfaW4w3R9G4CUboPtYtzrXVCX5otOkJPbSYajKvvJ6czU5yfG5dzQ>
    <xmx:vBfaW3wBXVc_KjkmU_J8MIezw_EqPFyS9YzdGvg4OkKATxI3r7zC8w>
    <xmx:vBfaW_gn3GiciPF_8Iz7DAlbUvvAYGkNHrjl0jFjCd4XtoR9xa4Gvg>
Date: Wed, 31 Oct 2018 22:00:23 +0100
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <20181031210023.GF4132@kroah.com>
References: <20181031141138.GA25071@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181031141138.GA25071@openwall.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] Linux 4.19.0-rc3 Bluetooth out-of-bounds-read and
 use-after-free

On Wed, Oct 31, 2018 at 03:11:38PM +0100, Solar Designer wrote:
> As you can see below, in one message the sender offered to coordinate
> with security@k.o and asked for a CVE ID.  However, this was in response
> to my questions about those aspects as it relates to the sender's other
> message, and I don't know whether the sender actually proceeded to
> coordinate with security@k.o (I tried asking the sender and got no
> response) and no CVE ID was assigned by distros (since the sender also
> didn't respond to my inquiry about security relevance).

security@k.o generally tells all people who submit syzbot reports to
just contact the upstream developers on their mailing list for issues
reported by that tool, as that is what the tool's team does.

And I think we did that for this report as well, but never heard
anything back :(

thanks,

greg k-h
