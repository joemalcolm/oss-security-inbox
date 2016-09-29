X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["956" "Thursday" "29" "September" "2016" "15:45:26" "+0200" "Greg KH" "greg@kroah.com" "<20160929134526.GA24474@kroah.com>" "26" "Re: [oss-security] CVE request - Linux kernel through 4.6.2 allows escalade privileges via IP6T_SO_SET_REPLACE compat setsockopt call" "^Cc:" nil nil "9" "2016092913:45:26" "[oss-security] CVE request - Linux kernel through 4.6.2 allows escalade privileges via IP6T_SO_SET_REPLACE compat setsockopt call" (number mark "        greg@kroah.c Sep 29   26/956   " thread-indent "\"Re: [oss-security] CVE request - Linux kernel through 4.6.2 allows escalade privileges via IP6T_SO_SET_REPLACE compat setsockopt call\"\n") "<F73DA7D7DA7D984B81025139D7CADECC0120DCFC@EX02.corp.qihoo.net>" ("<F73DA7D7DA7D984B81025139D7CADECC0120DCFC@EX02.corp.qihoo.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9515 invoked by uid 550); 29 Sep 2016 13:45:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9490 invoked from network); 29 Sep 2016 13:45:37 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=/U5FnQeFU8bXu6J
	6Y6id27p0PF0=; b=njnDwqPNbKKPn2IQSjDE1wva+8mftywqEtsQTLV9B7T1Cj6
	EqqRLTm393S+DXlLwTdzaIcUbPPvgiE3QA+i0dzGxxEOutZ7RPHSxHqqSWd7q8eh
	wN49iXn9C0BvuHLjvxbWfd542EMzzsfw+2j78EPml5XemRseSMDigr1ydYoY=
X-Sasl-enc: wmrpYf400X9JEJaYqmASGn2okPeTqFZHJDbOtUpzd4kX 1475156723
Message-ID: <20160929134526.GA24474@kroah.com>
References: <F73DA7D7DA7D984B81025139D7CADECC0120DCFC@EX02.corp.qihoo.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <F73DA7D7DA7D984B81025139D7CADECC0120DCFC@EX02.corp.qihoo.net>
User-Agent: Mutt/1.7.0 (2016-08-17)
Cc: "cve-assign@mitre.org" <cve-assign@mitre.org>
Date: Thu, 29 Sep 2016 15:45:26 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request - Linux kernel through 4.6.2 allows
 escalade privileges via IP6T_SO_SET_REPLACE compat setsockopt call
To: oss-security@lists.openwall.com

On Thu, Sep 29, 2016 at 07:43:35AM +0000, 张谦 wrote:
> Hi there,
> 
> I found a memory corruption vulnerabiliry in Linux kernel through 4.6.2, and I
> have a working exploit to escalade privileges which requires the ip6_tables
> module to be loaded, that it is properly blocked on all up-to-date versions.
> 
> Due to the number of users running vulnerable code(not update to 4.7 or
> higher), and that this exploit is only available to security researchers and
> kernel packagers upon request but that I don't want it to spread.
> 
>  
> 
> I have reported this issue to Linux kernel official and they have already fixed
> this.

Note, this was fixed many months ago, in May of 2016, and went into the
stable kernel updates in June, 2016.  Any distro that updated to the
stable kernel updates received this fix then.

Any distro that hasn't updated their kernel since then, well, you need
to revaluate your trust of such a distro :)

thanks,

greg k-h
