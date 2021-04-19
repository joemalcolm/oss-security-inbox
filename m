X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1617" "Monday" "19" "April" "2021" "12:15:59" "-0600" "Ariadne Conill" "ariadne@dereferenced.org" nil "37" "Re: [oss-security] xscreensaver package caps gets raw socket" nil nil nil "4" nil nil (number mark "U       ariadne@dere Apr 19   37/1617  " thread-indent "\"Re: [oss-security] xscreensaver package caps gets raw socket\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] xscreensaver package caps gets raw socket" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24312 invoked by uid 550); 19 Apr 2021 18:18:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23831 invoked from network); 19 Apr 2021 18:16:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dereferenced.org;
	s=mailbun; t=1618856159;
	bh=8COms30UU/XFFwYpDDRqlomEwTCF8/v9MWTSA5HrR8A=;
	h=Date:From:To:cc:Subject:In-Reply-To:References;
	b=VcxqKxcCHnPcDDV/2bjV6Tve7YJOEibouuFD1MYSVKVUF8SDu8dZ97KKJSWJIkNVJ
	 IRlug1XJ7A/NST+Y8ZFtdO776yfly4rQRCPi14Ld5f+hIYnGBlsgxCk6+MEDl5s6lL
	 v1f6bOVsBXjy1iCCCFIsT7zXLyKtDfs3mmYxSn7banhatFncZYAYeDenBOnbO7xW7m
	 w4P/MddPRuB/aIsSjq30eOS62TKChOD/YQ50Dk66qO1YXskPHtgiqc/3yUV3hXAvBh
	 lzu2TwHkh6X9DuetzWkFaxTgNdRRmfJZXz4oLV173mIumJqL06xl/osCoZcQTgEqmk
	 q7BMOSHEqb4Nw==
Date: Mon, 19 Apr 2021 12:15:59 -0600 (MDT)
From: Ariadne Conill <ariadne@dereferenced.org>
To: oss-security@lists.openwall.com
cc: security@debian.org
In-Reply-To: <93DB9621-4F4E-492B-94E9-EB86E5D09CE0@dwheeler.com>
Message-ID: <7b5533cb-2b98-ce2e-20ba-bef0fb133e3@dereferenced.org>
References: <YHwlS06UV25JUeqh@momentum.pseudorandom.co.uk> <CEA32CF0-DCF5-4746-9BDB-5AF9CEA1118A@dwheeler.com> <fba0d965-fe1-a7af-bda3-5871ba9450d6@dereferenced.org> <93DB9621-4F4E-492B-94E9-EB86E5D09CE0@dwheeler.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="0-398445581-1618856160=:15938"
Subject: Re: [oss-security] xscreensaver package caps gets raw socket

--0-398445581-1618856160=:15938
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

Hello,

On Mon, 19 Apr 2021, David A. Wheeler wrote:

>>> On Apr 18, 2021, at 8:25 AM, Simon McVittie <smcv@debian.org> wrote:
>>> Scraping is undesirable, but sometimes needed. If this is a common need, a
>>> long-term solution might be to create an option on ping to generate a standard
>>> format that’s easier to machine-parse.
>>
>> On Apr 19, 2021, at 1:35 PM, Ariadne Conill <ariadne@dereferenced.org> wrote:
>> This already exists as fping(1), for example:
>
> The problem for application developers is that “ping” exists practically everywhere,
> while fping does not.

Absolutely true, but fping is packaged in most Linux distributions, as 
well as all of the BSDs, due to its use by various network monitoring 
programs such as smokeping and nagios, so it seems like a reasonable 
dependency for cases like these.

IMO, it's better that programs declare something like fping as a 
dependency, so that we don't have to deal with yet another program years 
from now having elevated privileges and being abused to run tcpdump... :)

Seriously, if anyone on this list ever finds themselves writing a program 
where they need to fire off some pings, instead of making their program 
SUID or granting it cap_net_raw, just use fping instead.  At the very 
least, you'll be happier because you don't have to write your own ping 
code, and the distribution maintainers of the world will be happier 
because you *didn't* write your own ping code.

Ariadne
--0-398445581-1618856160=:15938--
