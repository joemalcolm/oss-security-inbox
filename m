X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["727" "Monday" "24" "August" "2015" "10:53:17" "-0500" "Mark Felder" "feld@feld.me" "<1440431597.899479.364570361.7BC0E0E6@webmail.messagingengine.com>" "23" "Re: [oss-security] Double free corruption in JasPer JPEG-2000 implementation (CVE-2015-5203)" nil nil nil "8" "2015082415:53:17" "[oss-security] Double free corruption in JasPer JPEG-2000 implementation (CVE-2015-5203)" (number mark "        feld@feld.me Aug 24   23/727   " thread-indent "\"Re: [oss-security] Double free corruption in JasPer JPEG-2000 implementation (CVE-2015-5203)\"\n") "<20150821145841.GA4492@zoho.com>" ("<CACn5sdSnp7LMeeV_rFbgVQCeQkoqGGTvHLZ3Xo_xgU70bhbOYw@mail.gmail.com>" "<20150821145841.GA4492@zoho.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22035 invoked by uid 550); 24 Aug 2015 15:53:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22004 invoked from network); 24 Aug 2015 15:53:29 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=feld.me; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=mesmtp; bh=uvPLRBvRkvDz1SNTDzlk4S+usCY=; b=o9MhUZ
	UMe5yR/zJw6B7Gurz9GyoTRA3ZfGEe3iIjMqboUnT79U5KmC4t20XdOGGfBo4WMv
	iMGP3/r8wyhiDr3h8EhqSgvXTWHg/BvEpUFkH6hEM9ON19E4o7hgbuUB7BRDE6wQ
	iVx83tLvQOLvnUwUR3+Z7S61qIyFgHsMpGwJQ=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=uvPLRBvRkvDz1SN
	TDzlk4S+usCY=; b=X1Uby/74+Tfdj5Y8Xf1bsjXwd3ZxIFGzkr2Y2BKiVDS/LhD
	PLraiSX6jFrm1VUZV7Ytu4FvjrQ2As9YEfA4bPEEYke3H04+0hGVZJM3TTNCzg+T
	XCQBiKs6C5gv+yHXmDFtkp9OAbKp0rYwVbqn39DX93ui9FFFirz60/YU3IGs=
Message-Id: <1440431597.899479.364570361.7BC0E0E6@webmail.messagingengine.com>
X-Sasl-Enc: 6JLrpKNoWADIRxVq72Sk47K6IgKFewbkVzNqRvGNV6Jm 1440431597
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain
X-Mailer: MessagingEngine.com Webmail Interface - ajax-a8c50604
In-Reply-To: <20150821145841.GA4492@zoho.com>
References: <CACn5sdSnp7LMeeV_rFbgVQCeQkoqGGTvHLZ3Xo_xgU70bhbOYw@mail.gmail.com>
 <20150821145841.GA4492@zoho.com>
Date: Mon, 24 Aug 2015 10:53:17 -0500
From: Mark Felder <feld@feld.me>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Double free corruption in JasPer JPEG-2000
 implementation (CVE-2015-5203)
To: oss-security@lists.openwall.com



On Fri, Aug 21, 2015, at 09:58, mancha wrote:
> On Sun, Aug 16, 2015 at 05:22:50PM +0200, Gustavo Grieco wrote:
> > A new double free affecting JasPer JPEG-2000 (libjasper 1.900) has
> > been found triggered by function jasper_image_stop_load.  Despite this
> > library is used by many programs (
> > http://www.ece.uvic.ca/~frodo/jasper/#overview), there is no one
> > providing support, so there is no fix so far.
> > 
> > This vulnerability was found by QuickFuzz.
> > 
> > Regards, Gustavo.
> 
> Hi all.
> 
> This is the CVE-2015-5203 fix I shared with Gustavo:
> 
> http://sf.net/projects/mancha/files/sec/jasper-1.900.1_CVE-2015-5203.diff
> 

Thanks for posting this. Is there a patch coming for CVE-2015-5221 as
well?
