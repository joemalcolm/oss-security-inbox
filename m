X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["642" "Thursday" "29" "September" "2016" "16:23:57" "+0200" "Greg KH" "greg@kroah.com" "<20160929142357.GA25419@kroah.com>" "17" "Re: [oss-security] CVE request - Linux kernel through 4.6.2 allows escalade privileges via IP6T_SO_SET_REPLACE compat setsockopt call" "^Cc:" nil nil "9" "2016092914:23:57" "[oss-security] CVE request - Linux kernel through 4.6.2 allows escalade privileges via IP6T_SO_SET_REPLACE compat setsockopt call" (number mark "        greg@kroah.c Sep 29   17/642   " thread-indent "\"Re: [oss-security] CVE request - Linux kernel through 4.6.2 allows escalade privileges via IP6T_SO_SET_REPLACE compat setsockopt call\"\n") "<CACXSKC8AZevw7LatqKf8RdVWR9srfkEQ49RQABHbQeK38Ono+w@mail.gmail.com>" ("<F73DA7D7DA7D984B81025139D7CADECC0120DCFC@EX02.corp.qihoo.net>" "<20160929134526.GA24474@kroah.com>" "<CACXSKC8AZevw7LatqKf8RdVWR9srfkEQ49RQABHbQeK38Ono+w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32445 invoked by uid 550); 29 Sep 2016 14:24:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32427 invoked from network); 29 Sep 2016 14:24:03 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=gJ+0/E26dho/LCXBtuOOb9v6Ld4=; b=aGmgG
	AihUi+SC7HW0gTzaYjWoYddZTGKx4OFjtnYgEqF8yLVGcjdj3kaPzBS++HSm+Sim
	l4BRTrEWaon7IC3hPp15lQDb4vF83trifgIPvKTnkdYr1GyrwjstP6Bj2rSxbCGF
	Wl1DhdLQajVYKUY9Ifje2ijA8iRHGEBAz1d97U=
X-Sasl-enc: qkPR/p2Sf1EO5ngOuL6jMcI6YMIXDVotSQqhAjU8eg21 1475159032
Message-ID: <20160929142357.GA25419@kroah.com>
References: <F73DA7D7DA7D984B81025139D7CADECC0120DCFC@EX02.corp.qihoo.net>
 <20160929134526.GA24474@kroah.com>
 <CACXSKC8AZevw7LatqKf8RdVWR9srfkEQ49RQABHbQeK38Ono+w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACXSKC8AZevw7LatqKf8RdVWR9srfkEQ49RQABHbQeK38Ono+w@mail.gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)
Cc: "cve-assign@mitre.org" <cve-assign@mitre.org>
Date: Thu, 29 Sep 2016 16:23:57 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request - Linux kernel through 4.6.2 allows
 escalade privileges via IP6T_SO_SET_REPLACE compat setsockopt call
To: oss-security@lists.openwall.com

On Fri, Sep 30, 2016 at 12:14:04AM +1000, Vitaly Nikolenko wrote:
> Wasn't this already covered by CVE-2016-4997? There's a public exploit
> 
> https://www.exploit-db.com/exploits/40049/
> 
> I'm assuming for IPv6 this would be exactly the same except for
> changing the setsockopt optname from IPT_SO_SET_REPLACE to
> IP6T_SO_SET_REPLACE. The code path for IPv6 looks almost identical
> unless I'm missing something?
> 
> Commit ce683e5f9d045e5d67d1312a42b359cb2ab2a13c included fixes for
> ARP, IP and IPv6 and my assumption was that CVE-2016-4997 covered all
> of them.

I knew this looked familiar, thanks for bringing this up.

greg k-h
