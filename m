X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["508" "Thursday" "29" "June" "2017" "08:41:50" "-0600" "Todd C. Miller" "Todd.Miller@courtesan.com" "<86060bb926b8d69f@courtesan.com>" "12" "Re: [oss-security] TIOCSTI not going away" "^Date:" nil nil "6" "2017062914:41:50" "[oss-security] TIOCSTI not going away" (number mark "        Todd.Miller@ Jun 29   12/508   " thread-indent "\"Re: [oss-security] TIOCSTI not going away\"\n") "<20170629142346.GA30874@openwall.com>" ("<20170603165813.GA20708@openwall.com>" "<20170629142346.GA30874@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9546 invoked by uid 550); 29 Jun 2017 14:42:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9524 invoked from network); 29 Jun 2017 14:42:04 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=courtesan.com; h=from:to
	:subject:in-reply-to:references:mime-version:content-type
	:content-id:date:message-id; s=selector1; bh=vxcfihVPXJEXb0sYpP5
	uvwvBf1Y=; b=gtIJuCi28rBOV2od77taAfpzQT+AXR7emVpenNbZFdZeGC92001
	S4fSZfPGEaorGfP7e+ZXhF0JZ9ViTud2hQhP1s1wCotjc68h1e5MHA/EPmZ9tRki
	8OqnuZ1Ds2SURZpPS/mPwhVabUmGNnvmMVrgjs5hQur81v7emsaZ+YuI=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=courtesan.com; h=from:to
	:subject:in-reply-to:references:mime-version:content-type
	:content-id:date:message-id; q=dns; s=selector1; b=ohfGdptheeNFk
	+75S1lMyC6nPTI+5Lk2sJHwTJpTOv3ONnyy8rp2v0/d0fmXj0I4b+3ikDKumS+nf
	VYc26CY2lZ6hdDtGDU2XqUpdF71KAaSQ3jvTnr1LFkBIZxIilEadLd62q0ACJvyI
	yiATYA0RK+WT9LJ4jjAX6PUe3BRrFM=
In-reply-to: Your message of "Thu, 29 Jun 2017 16:23:46 +0200."
             <20170629142346.GA30874@openwall.com>
References: <20170603165813.GA20708@openwall.com> <20170629142346.GA30874@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <94309.1498747310.1@xerxes.courtesan.com>
Message-Id: <86060bb926b8d69f@courtesan.com>
Date: Thu, 29 Jun 2017 08:41:50 -0600
From: "Todd C. Miller" <Todd.Miller@courtesan.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] TIOCSTI not going away
To: oss-security@lists.openwall.com

On Thu, 29 Jun 2017 16:23:46 +0200, Solar Designer wrote:

> While TIOCSTI is apparently not going away on Linux, it is on OpenBSD,
> and here's some analysis of the apparently almost non-existent impact
> this will have on Emacs (which was one of the primary examples cited for
> keeping TIOCSTI on Linux):

There were two cases of TIOCSTI usage in OpenBSD base: csh and
mail/mailx.  Both have been converted to use an IO-loop where ICANON
is disabled and a single char of input is read at a time.

 - todd
