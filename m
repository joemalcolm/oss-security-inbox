Received: (qmail 30336 invoked by uid 550); 6 Feb 2025 21:37:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30060 invoked from network); 6 Feb 2025 21:28:34 -0000
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 1.3.0 at rivendell.linuxfromscratch.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfromscratch.org;
	s=cert4; t=1738877305;
	bh=h3qifux00cG+FxTdaD69rX0F6bH09xWwEwy0nocCwcI=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=a1Dpl0wDnTylDBzmdCYkf3+gMblCrvi79ph3Tvwe345sS3lQ+DCtrLKvslBkaubTP
	 1478P8skODmv/Lqd4Sjt5f/dy3g1aZysgcUIdm+gAMLgo5tv30s1im3k8SNNvOLUbr
	 63r/JE+BIPerRJhAUFefQDiQZuEg94QoJ2Bz0dp9oSn+Q0oH3ncNOiVIMiPaCPLGr2
	 RFI9Apt9A/U9LcvoLKyiI8UR7LbO/ep88rZGqQFNkZHAGZBDrHzdW3dRozxJo6GUee
	 PNHPCl6YyYAf1wKQk1QnO7cw+TLcvW39DxycLN48OH3oEl1ecpM/M7RNt76/2FBwca
	 cqdyqkD8rj7gg==
Message-ID: <0ffab6a0-3e06-4722-89bb-531cc84e44ff@linuxfromscratch.org>
Date: Thu, 6 Feb 2025 15:28:48 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <Z6TNVqmdQvyPUnFY@kasco.suse.de>
Content-Language: en-US
From: "Douglas R. Reno" <renodr@linuxfromscratch.org>
In-Reply-To: <Z6TNVqmdQvyPUnFY@kasco.suse.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] pam_pkcs11: Possible Authentication Bypass in Error Situations
 (CVE-2025-24531)


On 2/6/25 8:55 AM, Matthias Gerstner wrote:
> 4) Affected Distributions and Configurations
> ============================================
>
> The issue was introduced in pam_pkcs11 version 0.6.12, released in July
> 2021. Any PAM stack that relies on pam_pkcs11 as the only
> authentication factor will be affected by the issue.
>
> On openSUSE Tumbleweed the issue became apparent only due to the
> mentioned changes in GDM [7], which cause YubiKeys to be treated as
> smart cards in some situations. We believe plugging in any kind of
> mismatching smart card (or YubiKey) on openSUSE Tumbleweed with GDM as a
> display manager will allow to bypass login.
>
> Similar situations could occur on other Linux distributions if GDM smart
> card login is enabled and smart cards are autodetected. Even then, an
> affected "gdm-smartcard" PAM stack still needs to be in place for the
> issue to trigger. gdm-smartcard PAM stacks relying on pam_pkcs11 are
> found in the GDM repository for:
>
> - Arch Linux [22]
> - Exherbo Linux [23]
> - Linux from Scratch [24]

Hello Matthias!

I wanted to chime in here on behalf of my official capacity at Linux 
 From Scratch. We don't carry the pam_pkcs11 module, so I don't think 
our users are affected by this particular vulnerability either.

Douglas Reno
Linux From Scratch

