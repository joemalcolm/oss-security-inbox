X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["298" "Friday" "22" "July" "2016" "13:27:04" "-0700" "Greg KH" "greg@kroah.com" "<20160722202704.GA6498@kroah.com>" "13" "Re: [oss-security] panic at big_key_preparse #4.7-r6/rc7 & master" nil nil nil "7" "2016072220:27:04" "[oss-security] panic at big_key_preparse #4.7-r6/rc7 & master" (number mark "U       greg@kroah.c Jul 22   13/298   " thread-indent "\"Re: [oss-security] panic at big_key_preparse #4.7-r6/rc7 & master\"\n") "<517068.13990.bm@smtp211.mail.bf1.yahoo.com>" ("<517068.13990.bm@smtp211.mail.bf1.yahoo.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17437 invoked by uid 550); 22 Jul 2016 20:27:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17419 invoked from network); 22 Jul 2016 20:27:04 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=AxDMeIH1ceJ88Dudgpsiwq+hh/Q=; b=gqEhQ
	VfccDl+VHyTImHuFwbldI46xoOgf8sx0QeCQfE3DOizdWBmh/rFGh300cfr5k0BN
	qUGBfpdEBIk7bWNi4DDyeNEJEj6Svl6BOwnlY4XikCaaVK4NVo6U2MR0FBQ0+kFr
	9d9UZHJlNYegy0aC7xkLQtGdxHPd+bNBWrm+Qw=
X-Sasl-enc: bOdPm8rluNO6P2cPOCJSxt6k56HTCRVBivIgYjM/d6o+ 1469219210
Date: Fri, 22 Jul 2016 13:27:04 -0700
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Cc: "cve-assign@mitre.org" <cve-assign@mitre.org>,
	Marco Grassi <marco.gra@gmail.com>
Message-ID: <20160722202704.GA6498@kroah.com>
References: <517068.13990.bm@smtp211.mail.bf1.yahoo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <517068.13990.bm@smtp211.mail.bf1.yahoo.com>
User-Agent: Mutt/1.6.2 (2016-07-01)
Subject: Re: [oss-security] panic at big_key_preparse #4.7-r6/rc7 & master

On Fri, Jul 22, 2016 at 10:54:09PM +0800, zer0mem@yahoo.com wrote:
> Hi,
> 
> Following code will panic 4.7-rc6/rc7 & master
> 
> However will not panic at latest stable 4.6.4 kernel apparently

Did you email the Linux kernel developers responsible for this code to
report this?

thanks,

greg k-h
