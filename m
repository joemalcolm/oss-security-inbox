X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1687" "Tuesday" "28" "August" "2018" "14:51:40" "+0200" "Greg KH" "greg@kroah.com" "<20180828125140.GA14413@kroah.com>" "38" "Re: [oss-security] Linux kernel: CVE-2018-14619 kernel: crash (possible privesc) in kernel crypto subsystem." "^Date:" nil nil "8" "2018082812:51:40" "[oss-security] Linux kernel: CVE-2018-14619 kernel: crash (possible privesc) in kernel crypto subsystem." (number mark "        greg@kroah.c Aug 28   38/1687  " thread-indent "\"Re: [oss-security] Linux kernel: CVE-2018-14619 kernel: crash (possible privesc) in kernel crypto subsystem.\"\n") "<CALJHwhQyQQjyWxczrjtBgt8GSmHHarzfSDPPFKt3xY0Sk0Sd_g@mail.gmail.com>" ("<CALJHwhQyQQjyWxczrjtBgt8GSmHHarzfSDPPFKt3xY0Sk0Sd_g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32099 invoked by uid 550); 28 Aug 2018 12:52:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32077 invoked from network); 28 Aug 2018 12:52:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; bh=/RN6Ya+NcujGwq84Lo9wdeY75szaNH8bpK03juov40o=; b=iIDEGFmM
	GVE5L4h6/CZjOoWvZDH5yOBd7/oZrgKQzMk1a1TrU1Tr5MVietKmAYEYi1JIe2y5
	zUnadJkMP5e2x6qt9wrF1lPRQIsELP9wxQvPLLu8p7ysEFu/G87S/Gb5kpmAJhNc
	N0glZrGrGREqktLwU67NsF8htovztjt5Yp+oiSj4Mz5MYChwSAhSBMIDiAIsqZUj
	X4tAu26ieWCZ7z/3k+nEawwbyj4McfKTJpVih5DWmC61DojQvE1aWOZKUdKORHkq
	dtP0t9BWni/39OSB5M8Cw1LlU7GX/SH8HZHpgTVEqNVf/EifHTwTF4ivrbcPnFGr
	bBg/saJazyB85A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; bh=/RN6Ya+NcujGwq84Lo9wdeY75szaN
	H8bpK03juov40o=; b=sEg7ieQ2/oMJHtJhPXCRKmkegpu7klKkAX7uuh9X6wbFI
	40FkDnDRU500P9c0ArBJd7wcyAEd3g8z+qkx/r3yN8cTWvDqGuOPouzgcOAcXp6E
	KIpOJqJ34YFFgHyRyGjv1JPc/K+auMLXg9dhE5hP8NXL4dP0OjhlDezuTGkXrsGT
	WMpKjLuy8icAG1X/F+Px7+4t1OomnOyNZqTN6lm9Nz70Vl1n76ygmBtTR/j5dYHz
	qz6QcXo1NP6wIDRkGMILAxFqo9vVRAPO8As/Qf1nAJHkDaB4BTGrOQmclKYiwqmE
	PYP1DhSfsCdsZrIVTiWfymSLobkHuEdyzvk9cAYgQ==
X-ME-Proxy: <xmx:aUWFW1IVGEMHCJNQIcd5z6imqqDqUefYochKCzN2HM7JTWSn5pDi_Q>
    <xmx:aUWFWxA_4xgBkTByZFfnqVrLN0ebBYqZMrWnlkdfXAg1PNuOW0Lw_A>
    <xmx:aUWFW7BAAh28tHkSFLy8SMObqucCBNvF_Vz-Y_nbFA70yruBQ-dUkQ>
    <xmx:aUWFWyliBIoQyNxrFe6v3NBrVvwVkqpL_Yn798NXfTalZgS0GQCAVQ>
    <xmx:aUWFW5h2YvZJD87cMeJaRg7evMJHl9rl3bHyVbMI6wOqbnURKRwxGA>
    <xmx:aUWFW2wYbEnMkT0TKEghI40jNYnuVdZA2lhG9fGYJBGQ5Vk5PyMfQw>
X-ME-Sender: <xms:aUWFWxhtk5xqCn8APDmNsJ2CZg7SFuk9_NXkCYAx0WCW6qbvNCCj5g>
Message-ID: <20180828125140.GA14413@kroah.com>
References: <CALJHwhQyQQjyWxczrjtBgt8GSmHHarzfSDPPFKt3xY0Sk0Sd_g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALJHwhQyQQjyWxczrjtBgt8GSmHHarzfSDPPFKt3xY0Sk0Sd_g@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Tue, 28 Aug 2018 14:51:40 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: CVE-2018-14619 kernel: crash
 (possible privesc) in kernel crypto subsystem.
To: oss-security@lists.openwall.com

On Tue, Aug 28, 2018 at 04:49:14PM +1000, Wade Mealing wrote:
> Gday,
> 
> Syzkaller/syzbot found a use-after-free bug in the cryptographic
> subsystem of the Linux kernel [1], that can be used to panic the
> system and possibly escalate privileges.

Are we seriously now going to be assigning cves to everything that
syzbot finds?  If so, great, this is going to be fun!

If not, why this specific patch?  What makes it specia from the hundreds
of other syzbot finds that have been fixed (and not fixed yet)?  This
seems like an odd choice, given:

> The bug was introduced in commit 72548b093ee3, and has been addressed
> in b32a7dc8aef1882fbf983eb354837488cc9d54dc, a reproducer is available
> on the tail end of  syzbots email to kernel list (
> https://lkml.org/lkml/2017/11/27/866 ).  Most RHEL kernels are not
> affected as they do not have the feature, but it does affect the
> kernel-alt package (the 4.11 based kernel for 64-bit ARM , IBM POWER9
> (little endian ) and IBM z Systems ).

So this was introduced in 4.14 which was released Nov 12, 2017, and
fixed in 4.14.8 which was released on Dec 20, 2017.  A very small
window, don't you think.  And one that happened almost a year ago.

If RHEL is not exposed, why does Red Hat care about this?  Who cares
about it?  Anyone running a 4.14.y kernel has had this fixed for a very
long time ago, and anyone not running a 4.14.y kernel is not affected.

Again, I'm really confused why this was chosen for a CVE here.  Care to
explain it a bit better?  Is it because you have to have a CVE for every
bugfix in the RHEL kernel-alt package (something that I would love to
see happen for various other reasons...)

thanks,

greg k-h
