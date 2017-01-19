X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1068" "Thursday" "19" "January" "2017" "15:37:00" "+0100" "Greg KH" "greg@kroah.com" "<20170119143700.GA5132@kroah.com>" "30" "Re: [oss-security] CVE Request - Samsung Exynos GPU driver OOB read" nil nil nil "1" "2017011914:37:00" "[oss-security] CVE Request - Samsung Exynos GPU driver OOB read" (number mark "U       greg@kroah.c Jan 19   30/1068  " thread-indent "\"Re: [oss-security] CVE Request - Samsung Exynos GPU driver OOB read\"\n") "<CACCOJE3K5aEk_frgRr7_pt3T635=9OgnVagn+jOj-v1YetE74A@mail.gmail.com>" ("<CACCOJE3M1+PbtZgpvLXQjxMkKFirwu0=506OdZZuBUrTK5VqpA@mail.gmail.com>" "<CACCOJE3K5aEk_frgRr7_pt3T635=9OgnVagn+jOj-v1YetE74A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19836 invoked by uid 550); 19 Jan 2017 14:37:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19808 invoked from network); 19 Jan 2017 14:37:19 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=smtpout; bh=IctL/GVFBlZyhY
	d2pDcHoyEDC20=; b=r1cuUp51LVmotRcurz0kaj9KBixfSIMCv0zLJuisPuvEBm
	eKtw9SDdxaHJv7s55WfsD2EUdf0w6ysj/J5qV4x5hMVaxk16UJ3SBhSowqyJH9AL
	YH1xKr6YWO7Qz5OjrBWKc/0Ya4wbTurixSpkXdHej3aRD0iLdq9l5X7rjd8P8=
X-ME-Sender: <xms:E8-AWFOCYimHUcYliUpkw328JZx3TLtQWjZtRZstsIeRo97tqzjiGA>
X-Sasl-enc: 0XC3r6xRhlYJ1ITTvcCw2KiCUa3P8UyqF6mG0xx/dpgv 1484836627
Date: Thu, 19 Jan 2017 15:37:00 +0100
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Cc: Anarcheuz Fritz <anarcheuz@gmail.com>, cve-assign@mitre.org
Message-ID: <20170119143700.GA5132@kroah.com>
References: <CACCOJE3M1+PbtZgpvLXQjxMkKFirwu0=506OdZZuBUrTK5VqpA@mail.gmail.com>
 <CACCOJE3K5aEk_frgRr7_pt3T635=9OgnVagn+jOj-v1YetE74A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACCOJE3K5aEk_frgRr7_pt3T635=9OgnVagn+jOj-v1YetE74A@mail.gmail.com>
User-Agent: Mutt/1.7.2 (2016-11-26)
Subject: Re: [oss-security] CVE Request - Samsung Exynos GPU driver OOB read

On Thu, Jan 19, 2017 at 02:38:31PM +0800, Idler wrote:
> Hello,
> 
> I'd like to request CVE for the following security issue:
> 
> Security bulletin: http://security.samsungmobile.com/smrupdate.html#SMR-JAN-2017
> 
> SVE-2016-6362: out of bound read in gpu driver
> 
> Severity: Low
> Affected versions: M(6.0), N(7.0) devices with Exynos AP chipsets
> Reported on: May 31, 2016
> Disclosure status: Privately disclosed.
> Vulnerability in gpu driver does not properly check the boundary of
> buffers leading to a possible memory corruption.
> The applied patch avoids an illegal access to memory by checking the boundary.
> 
> Source code:
> Source code of the affected GPU drivers (as part of the Linux kernel
> source) can be downloaded from Samsung Opensource Resource center:
> http://opensource.samsung.com/
> 
> The particular model of phone we used to reproduce this issue is:
> http://opensource.samsung.com/reception/receptionSub.do?method=sub&sub=F&searchValue=SM-G9200

Any pointer to the commit(s) that happened to resolve this issue?

thanks,

greg k-h
