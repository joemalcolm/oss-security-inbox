X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2522" "Thursday" "6" "February" "2020" "17:24:57" "+0100" "Amadeusz =?UTF-8?B?U8WCYXdpxYRza2k=?=" "amade@asmblr.net" nil "76" nil "^Cc:" nil nil "2" nil nil (number mark "        amade@asmblr Feb  6   76/2522  " thread-indent "\"[oss-security] Re: GNU screen \"out of bounds access when setting w_xtermosc after OSC 49\"\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: GNU screen \"out of bounds access when setting w_xtermosc after OSC 49\"" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28339 invoked by uid 550); 6 Feb 2020 16:34:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22005 invoked from network); 6 Feb 2020 16:24:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=asmblr.net;
	 s=default; h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
	In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=AdJ+Da0YHTK9oNJ0K890REZcLU45HTbWIR8y5blV1+M=; b=rHdfilzaWlDq1wpYjsEqxnjdqy
	owGY4ZZO1/5/iBV6q6+XM5yzTW9UBfD0gnJZtZIVrvWDhjYCsXBeUIxG2Rj+mtg7g9L6bVwbLnCd9
	cwpxX508wi0EL02FG287yFWFj14huqPR0k9Ccpx6ejFAR8g0OMCRv9S8CXDfx7IKA3akOJdxRBECz
	UZIoLrjNGYNV2mLS6iowZCGdQ7kX3iEKuS13YhuqM4O7PXf9eo6jEDT1TfEcVkWEWN857nCou2x/H
	wFVD+RVKFOpMHI7XljwlyUoUYT21BLST23ew9eeF17ZOmDIzmampJ8Y9gwDWnUNtQ54T5EBJ6KBDw
	e+6KRvEg==;
Message-ID: <20200206172457.5b138fd5@milkyway.galaxy>
In-Reply-To: <20200206140418.GA26959@openwall.com>
References: <20200206140418.GA26959@openwall.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - srv2.anyservers.com
X-AntiAbuse: Original Domain - lists.openwall.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - asmblr.net
X-Get-Message-Sender-Via: srv2.anyservers.com: authenticated_id: amade@asmblr.net
X-Authenticated-Sender: srv2.anyservers.com: amade@asmblr.net
Cc: oss-security@lists.openwall.com
Date: Thu, 6 Feb 2020 17:24:57 +0100
From: Amadeusz =?UTF-8?B?U8WCYXdpxYRza2k=?= <amade@asmblr.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: GNU screen "out of bounds access when setting w_xtermosc after
 OSC 49"
To: Solar Designer <solar@openwall.com>

Hi,

> 
> The fix commit is:
> 
> ---
> commit 68386dfb1fa33471372a8cd2e74686758a2f527b
> Author: Amadeusz Slawinski <amade@asmblr.net>
> Date:   Thu Jan 30 17:56:27 2020 +0100
> 
>     Fix out of bounds access when setting w_xtermosc after OSC 49
>     
>     echo -e "\e]49\e;                                    \n\ec"
>     crashes screen.
>     
>     This happens because 49 is divided by 10 and used as table index
>     resulting in access to w_xtermosc[4], which is out of bounds with table
>     itself being size 4. Increase size of table by 1 to 5, which is enough
>     for all current uses.
>     
>     As this overwrites memory based on user input it is potential security
>     issue.
>     
>     Reported-by: pippin@gimp.org
>     Signed-off-by: Amadeusz Slawinski <amade@asmblr.net>
> ---
> 
> This is followed by another related commit:
> 
> ---
> commit 0dd53533e20d2948351a99ec5336fbc9b82b226a
> Author: Amadeusz Slawinski <amade@asmblr.net>
> Date:   Wed Feb 5 21:05:28 2020 +0100
> 
>     Increase permitted length of OSC
>     
>     hyperlink feature used by some terminals requires lots of characters
>     https://gist.github.com/egmontkob/eb114294efbcd5adb1944c9f3cb5feda#length-limits
>     mentions around 2083 characters, set it to a bit more.
>     
>     Bug: 57718
>     
>     Signed-off-by: Amadeusz Slawinski <amade@asmblr.net>
> ---
> 
> Combined, these two commits change:
> 
>   char   w_xtermosc[4][MAXSTR]; /* special xterm/rxvt escapes */
> 
> (where MAXSTR is 768) to:
> 
>   char   w_xtermosc[5][2560];   /* special xterm/rxvt escapes */
> 

The report which resulted in second commit just happened to be reported
at similar time and is not related to the issue at hand apart from same
location in source code.

> These are as seen on the screen-v4 branch.  On that branch, and thus in
> all screen releases so far, the bug appears to be exposed only when
> building with the "--enable-rxvt_osc" option.  Builds and packages made
> without that option appear to be safe.  Amadeusz, can you confirm this?

Yes builds without this option should be safe, however do note that
as far as I know most distributions do enable it (I checked Debian,
Arch Linux, Fedora and Gentoo).

> 
> On master branch, the functionality is always enabled (and the option is
> dropped), thus (not too ancient) builds from that branch are vulnerable
> (until the above fixes, which were also made to that branch).

Yes, however do note that all v4 releases are done from screen-v4 branch.

Amadeusz

