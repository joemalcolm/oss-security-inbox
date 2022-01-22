X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["595" "Saturday" "22" "January" "2022" "13:12:12" "+0100" "Greg KH" "greg@kroah.com" nil "17" "Re: [oss-security] usbview polkit policy local root exploit (CVE-2022-23220)" nil nil nil "1" nil nil (number mark "U       greg@kroah.c Jan 22   17/595   " thread-indent "\"Re: [oss-security] usbview polkit policy local root exploit (CVE-2022-23220)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] usbview polkit policy local root exploit (CVE-2022-23220)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22268 invoked by uid 550); 22 Jan 2022 12:12:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22250 invoked from network); 22 Jan 2022 12:12:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; bh=uyp5rzfzKLbLPrU+NWFw95FCQcNMpjGE3euU6a
	g4y3s=; b=PyZXYcpK9YfluzYYPC242PVFb31gST2jikv5PVVyrnqAkg8abgDOd7
	iSd7DmFZsE8uqPIkCcm0CGeokzp6LboQI7g23xhD5MSpe1ybzxIKsrvB/n4f0KHq
	KRuFynt3XjDx0d8risjvejMfpxmbZ12Xx8R5T0N6HAuXs1T0RFBC1S2/vyoYuPA/
	BaKPx6EVR7syic9y0/fNoUZ5JGVcouivZBtY95SkL/ssLWxoJTW8s+Q46ionFejd
	jLZ2DWc7Yg4Qzn37IHlVaqTGAYlRL1Fryhcqgwt3DyXXdV8P1hSRHoR3/cjRDpjU
	Af42tXRuYq3ZMrb5HzutgfmsCwbjcpKQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=uyp5rzfzKLbLPrU+N
	WFw95FCQcNMpjGE3euU6ag4y3s=; b=mFEQq3yoLvPIVRV1/arGfCR4GoAJHYMhB
	OUU5ivAcR+E+9/5h5GKm3uLYdp+QEU3oO9Ff76Rv4dUPggll0fkVAVjfCcIla/AS
	cVV6H3FbcJhLRDx4RXzsXO7lQWRpMpYcSmkmokxjA2IfuilBsT13mk2XTzQhvWCo
	lPfNtgEldRHZYk4gAWDsznj9mQ0N6UuqI1eRJYM+I1s/cLnOpME6C++ZqUn+klI6
	Mg1xyaWjAgoQoUsdQ/h8mYcJRi02IdhKi5+ZW13Z9/84L9T1xeTeqZ+CBGiM/oiu
	eezI1k21iRGt4NGdR+TxrJaKM6/wA5zwuK+JcymXrA5CNEBptG8OQ==
X-ME-Sender: <xms:nvTrYV-B6WIWh9efWD7X-T1DVYVyWFUhqA8gAYILEnk7lqNd_2qjtw>
    <xme:nvTrYZuLMdUDWwV5RSv4R4aCdWhlY8MmZCF2hi4mx09qKtgHjaR8yQAXezMqVhxVj
    FIilLO18OWuyA>
X-ME-Received: <xmr:nvTrYTALyl3AyUnFDYsGJgY7Mrhs2wSI-MepOlsest8LceUTEOFLG8JGr2rmWvJi1mi9QaITCR2AJgNZ0AKGMGKrFexXRdYD>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrvddvgdefkecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttdertd
    dttddvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhmqeen
    ucggtffrrghtthgvrhhnpeevueehjefgfffgiedvudekvdektdelleelgefhleejieeuge
    egveeuuddukedvteenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
    fhhrohhmpehgrhgvgheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:nvTrYZdPN6pzFnd6EYkS_GhBbPkB5CHnlsG5d3QYCOoLJAHHLL9aiA>
    <xmx:nvTrYaNRhrhxn7W4qEQB9BbwjiTKDPSko3TdxJjZZxLj5FmqkTU1dw>
    <xmx:nvTrYbnQs1sS3gLFd822tZ0FhiBZ6ThyOClbaWPhpUxUXcjDMECS7g>
    <xmx:n_TrYUVeOyp_NFv8QtxIjF2tVglpdJSIja_SV_kdmZlBkon51-pr8Q>
Date: Sat, 22 Jan 2022 13:12:12 +0100
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <Yev0nNQ9yB/ucgQU@kroah.com>
References: <YerETqS+HCN4qz/Z@f195.suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YerETqS+HCN4qz/Z@f195.suse.de>
Subject: Re: [oss-security] usbview polkit policy local root exploit
 (CVE-2022-23220)

On Fri, Jan 21, 2022 at 03:33:50PM +0100, Matthias Gerstner wrote:
> Hello list,
> 
> this is to inform you about a local root exploit I found in usbview [1]
> release 2.1. This finding was embargoed for 7 days on the linux-distros
> mailing list and the fix has been published today.
> 
> The upstream author Greg KH is currently working on an improved version
> of usbview that will no longer require root privileges to run.

That new version is now released as 3.0, which should prevent the need
for any of this mess in the future as no root permissions are needed at
all.

thanks,

gre gk-h
