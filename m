Received: (qmail 7460 invoked by uid 550); 31 Mar 2024 17:23:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16284 invoked from network); 31 Mar 2024 17:13:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=fu-berlin.de; s=fub01; h=Content-Transfer-Encoding:Content-Type:In-Reply-To
	:Cc:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=OfCPSzq8z5vKC89gqZV169l098pXHJtaQQnQdUXvipY=; t=1711905237; x=1712510037; 
	b=g8gC6w4W24kQffamF8Rfd2Js9H6pk6+CrqhV0qkOiwl4H0VCSNoWkDRmqEo0CsXVZ9vd1n3T6Fh
	IP2H5Qb+dKFT+R+fJfIXLjZ7IHDSvh/ACdvr8lO/yrHTd3fTrz9TPIpjWkz6roxLvrT9s1rm+qSqM
	o3xnNxzyMbrnKyago7KL21Yt479OJ7oVS5GibrbxvFFVGNWKUgjfFZjKc1CAM+qBxvg/jrpWnLEbB
	5TW+rACVVamUAp1O9Qb7HFLbGn6KZP9OONtpcbEa4KPP7Shj8iHfYlG7Mx9h/Xq87bFDzV8TaPBhN
	NXWPW/OUpFbSr9kZ1mlOO4wk2meac9tBi+/w==;
Message-ID: <ed2715be-e7a0-4a7f-a3fd-7041f6c6fa49@fu-berlin.de>
Date: Sun, 31 Mar 2024 19:13:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
From: "Michael.Karcher" <Michael.Karcher@fu-berlin.de>
Cc: Andres Freund <andres@anarazel.de>
In-Reply-To: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Original-Sender: Michael.Karcher@fu-berlin.de
X-Originating-IP: 94.134.63.222
X-ZEDAT-Hint: PO
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh
 server compromise

Am 29.03.2024 um 16:51 schrieb Andres Freund:
> Florian Weimer first extracted the injected code in isolation, also attached,
> liblzma_la-crc64-fast.o, I had only looked at the whole binary. Thanks!

Thanks for your excellent write-up, and thanks to Florian Weimer for posting
the injected code.

> I am *not* a security researcher, nor a reverse engineer.  There's lots of
> stuff I have not analyzed and most of what I observed is purely from
> observation rather than exhaustively analyzing the backdoor code.

I am a reverse engineer, and tried some static analysis on that code. One
key feature is that the code does not contain any ASCII strings, neither in
clear text nor in obfuscated form. Instead, it recognizes all relevant
strings using one single deterministic finite automaton, a technique commonly
used to search for terms given by regular expressions.

I wrote a script that decodes the tables for the table-driven DFA and outputs
the strings recognized by it accompanied with the "ID" assigned to the terminal
accepting state that represents that string.

You can find this script (and possibly other stuff I found interesting later)
at https://github.com/karcherm/xz-malware .

Kind Regards,
   Michael Karcher

