Received: (qmail 17920 invoked by uid 550); 24 Sep 2025 11:50:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17885 invoked from network); 24 Sep 2025 11:50:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=1wt.eu; s=mail;
	t=1758714598; bh=Pf8TlTu1SvvXdIm/m4b+EMVz/YrjMf7Leq2MIDRM2ZY=;
	h=From:Message-ID:From;
	b=LyNRsSaMT32/GkDCzzpuPphBCS6jFo0VO+DgZRI6S9LNcUWoli/dWsgVNkXgxjl+d
	 +PO0tTI6Iq30drPFSzoLghI3p2syZ4H9FOBQv7LtAbFsi4ToXDNKO8FjR6XBBWpmXp
	 AFN90rEFxe2xwc+aWTOeTUj1CkO83L2bDDOQArOg=
Date: Wed, 24 Sep 2025 13:49:57 +0200
From: Willy Tarreau <w@1wt.eu>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com, Van1sh <van1sh@pm.me>
Message-ID: <20250924114957.GB9673@1wt.eu>
References: <20250803015543.GA4607@openwall.com>
 <20250924022256.GA20793@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250924022256.GA20793@openwall.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] Linux kernel: eBPF vulnerabilities

Hi Alexander,

On Wed, Sep 24, 2025 at 04:22:56AM +0200, Solar Designer wrote:
> Hi Van1sh,
> 
> Do you have any update on these issues?  Are you aware of any fixes?

So I asked the maintainers about this, and their conclusion is that
none of the reported problems constitute security issues and that as
such no fix was developed.

Hoping it helps,
Willy
