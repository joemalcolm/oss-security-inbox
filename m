X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["349" "Wednesday" "11" "November" "2020" "09:12:39" "-0500" "Michael Orlitzky" "michael@orlitzky.com" "<2af0cd5a-cd88-6373-6101-a4eab6bce65d@orlitzky.com>" "11" "Re: [oss-security] Dash executes code when noexec (\"-n\") is specified" nil nil nil "11" "2020111114:12:39" "[oss-security] Dash executes code when noexec (\"-n\") is specified" (number mark "U       michael@orli Nov 11   11/349   " thread-indent "\"Re: [oss-security] Dash executes code when noexec (\"-n\") is specified\"\n") "<20201111094035.5fbewlsfpj76zumb@jwilk.net>" ("<20201111044821.GA15234@sinister.lan.codevat.com>" "<20201111094035.5fbewlsfpj76zumb@jwilk.net>") nil nil nil nil nil nil nil "Re: [oss-security] Dash executes code when noexec (\"-n\") is specified" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13358 invoked by uid 550); 11 Nov 2020 14:12:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13337 invoked from network); 11 Nov 2020 14:12:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1605103960; bh=iupPL+TqLv2KC3GyFbpIQLbB9mXduSr7+s7J4m+SpcM=;
	h=Subject:To:References:From:Date:In-Reply-To;
	b=vXXmZlGXs5SJIAn1rvuLCDenPO0MKlNLTs5kHwZqM82sOo3VPHK+BWX39kHK0Djhy
	 9fQDq1MEsZplI3rTs7YRaTWkgLx4myAvlSkt8/RakX/2jO5gmhrRyM0UWF0dgvT09y
	 s2irPsFlE1rds3sxMrC+l1Hr8ZaroRXQXOAOpsrk=
To: oss-security@lists.openwall.com
References: <20201111044821.GA15234@sinister.lan.codevat.com>
 <20201111094035.5fbewlsfpj76zumb@jwilk.net>
From: Michael Orlitzky <michael@orlitzky.com>
Message-ID: <2af0cd5a-cd88-6373-6101-a4eab6bce65d@orlitzky.com>
Date: Wed, 11 Nov 2020 09:12:39 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <20201111094035.5fbewlsfpj76zumb@jwilk.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Dash executes code when noexec ("-n") is specified

On 11/11/20 4:40 AM, Jakub Wilk wrote:
> * Eric Pruitt <eric.pruitt@gmail.com>, 2020-11-10, 20:48:
>>     $ dash -n -c 'echo this should not be executed'
>>     this should not be executed
> 
> This was reported in 2017:
> https://bugs.debian.org/858288
> 

I forwarded this to Herbert, who maintains Dash and supplied the patch 
on the Debian bug.
