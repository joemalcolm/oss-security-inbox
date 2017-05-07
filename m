X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1025" "Sunday" "7" "May" "2017" "12:12:59" "-0400" "Kash Pande" "kash@tripleback.net" "<73bb24ef-176d-0ea1-e0a3-5f4a9542ea50@tripleback.net>" "25" "Re: [oss-security] [white-paper] Pwning PHP mail() function For Fun And RCE (ver 1.0)" "^Date:" nil nil "5" "2017050716:12:59" "[oss-security] [white-paper] Pwning PHP mail() function For Fun And RCE (ver 1.0)" (number mark "        kash@tripleb May  7   25/1025  " thread-indent "\"Re: [oss-security] [white-paper] Pwning PHP mail() function For Fun And RCE (ver 1.0)\"\n") "<CADSYzstfctEZTo4GKGR-H2WXC3kZRSAj7sj7ZHCAu9C7Ff5BYw@mail.gmail.com>" ("<CADSYzstfctEZTo4GKGR-H2WXC3kZRSAj7sj7ZHCAu9C7Ff5BYw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19608 invoked by uid 550); 7 May 2017 16:42:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25959 invoked from network); 7 May 2017 16:13:12 -0000
References: <CADSYzstfctEZTo4GKGR-H2WXC3kZRSAj7sj7ZHCAu9C7Ff5BYw@mail.gmail.com>
Message-ID: <73bb24ef-176d-0ea1-e0a3-5f4a9542ea50@tripleback.net>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CADSYzstfctEZTo4GKGR-H2WXC3kZRSAj7sj7ZHCAu9C7Ff5BYw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Date: Sun, 7 May 2017 12:12:59 -0400
From: Kash Pande <kash@tripleback.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] [white-paper] Pwning PHP mail() function For Fun
 And RCE (ver 1.0)
To: oss-security@lists.openwall.com


On 03/05/17 04:32 PM, Dawid Golunski wrote:
> Here's a paper I wrote back in December.  It was originally meant to go
> into Phrack but the team wanted a more general article on parameter injection
> as mail() was supposedly an outdated technique.
> Meanwhile, the RCE-chain continues :) So I decided to post it as it is without
> changing it as mail() injection deserves a separate article imho.
>
> https://exploitbox.io/paper/Pwning-PHP-Mail-Function-For-Fun-And-RCE.html

This article purposely uses a litany of poor programming practices to 
expose an alleged exploit in PHP mail().. I'd like to see the same 
exploit, without assuming the developer on the software had no idea what 
they're doing (passing non-sanitized variables to functions). As well, 
you noted in your own article that this 'discovery' was first published 
in 2011 by someone else.

>
> I reveal some exim code-execution vectors in there that should change
> the whole game slightly :)

Not really, because it still relies on unfiltered input.



