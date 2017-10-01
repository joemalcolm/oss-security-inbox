X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1202" "Sunday" "1" "October" "2017" "08:37:55" "+0100" "Eddie Chapman" "eddie@ehuk.net" "<1e5a78ac-a93f-f4cf-b8a2-25fde5189a63@ehuk.net>" "24" "Re: [oss-security] clamav: Out of bounds read and segfault in xar parser" "^Date:" nil nil "10" "2017100107:37:55" "[oss-security] clamav: Out of bounds read and segfault in xar parser" (number mark "        eddie@ehuk.n Oct  1   24/1202  " thread-indent "\"Re: [oss-security] clamav: Out of bounds read and segfault in xar parser\"\n") "<20170929150922.15b800f8@pc1>" ("<20170929150922.15b800f8@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27914 invoked by uid 550); 1 Oct 2017 13:10:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26545 invoked from network); 1 Oct 2017 07:38:08 -0000
DKIM-Filter: OpenDKIM Filter v2.10.3 schatzi.steelbluetech.co.uk 920641DC66
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ehuk.net; s=default;
	t=1506843475; bh=GMCND4HpGR8s7sNOGbcgg42WbZsDoBGfc48UTAOBRkQ=;
	h=Subject:To:References:From:Reply-To:Date:In-Reply-To:From;
	b=MnhIth58ZBpn1O/sOaPWZxwyjCtxRBX+ySfcZRGy9yLpLirk3ZJ8bgTrjqTe9VV38
	 9HoKp4XwwXFpQdTJPAKNkkRqcZp9UtUPimRO3iBR0QPrDbsuKzb0PVbfJNfJN1G/MU
	 G2EjAap4VNZYn2E75GmVjEGENWb07QhveCgPE35I=
References: <20170929150922.15b800f8@pc1>
Message-ID: <1e5a78ac-a93f-f4cf-b8a2-25fde5189a63@ehuk.net>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20170929150922.15b800f8@pc1>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
Date: Sun, 1 Oct 2017 08:37:55 +0100
From: Eddie Chapman <eddie@ehuk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] clamav: Out of bounds read and segfault in xar
 parser
To: oss-security@lists.openwall.com, =?UTF-8?Q?Hanno_B=c3=b6ck?=
 <hanno@hboeck.de>

On 29/09/17 14:09, Hanno Böck wrote:
> Meta-level comment:
> It seems to me clamav development has mostly stalled. Detection rates
> are very low and I'm considering to stop using it for mail filtering.
> (also there's of course the whole AV debate, however I never saw
> clamav as a security tool, more as something like a spam filter that
> prevents crap in my inbox. Still of course it needs to have secure
> parsers.)

I agree with much of this, and I think you're right that the 
effectiveness of Clamav in mail filtering contexts can be debated, 
though maybe more in terms of the AV debate, as you say.  As a user 
myself with it deployed filtering multi-user domains, I agree that 
detection rates are low.

However, checking just now on Github I do not get the impression at all 
that development has stalled. Judging purely by number of commits, every 
month there are consistently a very healthy number. But what has stalled 
is stable releases; the last one being 0.99.2 on 22nd April 2016, so 
something is not quite right. But I've seen many open source/free 
software projects stalled over the years and definitely Clamav does not, 
IMO, fit that description (at least not yet).

Eddie
