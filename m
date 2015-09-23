X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2174" "Wednesday" "23" "September" "2015" "11:54:42" "-0700" "Greg KH" "greg@kroah.com" "<20150923185442.GA4974@kroah.com>" "47" "Re: [oss-security] Vulnerability in WhiteHEAT Linux Driver-CVE-2015-5257" nil nil nil "9" "2015092318:54:42" "[oss-security] Vulnerability in WhiteHEAT Linux Driver-CVE-2015-5257" (number mark "        greg@kroah.c Sep 23   47/2174  " thread-indent "\"Re: [oss-security] Vulnerability in WhiteHEAT Linux Driver-CVE-2015-5257\"\n") "<20150923031706.GB18670@kroah.com>" ("<56019762.70002@istuary.com>" "<5601F731.3090409@istuary.com>" "<20150923031706.GB18670@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19472 invoked by uid 550); 23 Sep 2015 18:55:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18419 invoked from network); 23 Sep 2015 18:55:32 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=mBpd22xWPt2KPCF
	gl7VTHlilpC8=; b=mMaUmfh86txIb8PMJItsbmbz2oEfOMs0Jwso2pjkRVWo7Ss
	GcpRD0lglC68dGf4RraN7x5lbJ67vUgNtoqo5cMgWYTEJmbHmws+7f1h5WJHV+qv
	CyyvrbrDiFzY2lW7LAX2QdV61lZlYnSEs/wN3dngrxcrFcZ9qg0BYeHNPnUc=
X-Sasl-enc: VXzST0gSdyRElm470unJH9XIgF68FQ1nSyjeZAGsLusb 1443034521
Message-ID: <20150923185442.GA4974@kroah.com>
References: <56019762.70002@istuary.com>
 <5601F731.3090409@istuary.com>
 <20150923031706.GB18670@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20150923031706.GB18670@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Wed, 23 Sep 2015 11:54:42 -0700
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Vulnerability in WhiteHEAT Linux
 Driver-CVE-2015-5257
To: oss-security@lists.openwall.com

On Tue, Sep 22, 2015 at 08:17:06PM -0700, Greg KH wrote:
> On Tue, Sep 22, 2015 at 05:49:53PM -0700, Moein Ghasemzadeh wrote:
> > Hello,
> > 
> > We have discovered a vulnerability in a linux kernel module and would
> > like to inform you so that required actions could be taken.
> > 
> > Assigned CVE ID : CVE-2015-5257.
> > 
> > Below is the description of the vulnerability.
> > 
> > 1. Software name and vendor name:
> > USB WhiteHEAT serial driver by ConnecTech in the Linux kernel
> > v3.19.0-28, but likely to exist in all kernel versions.
> > 
> > 2. Type of vulnerability or attack outcome:
> > 
> > The vulnerability triggers a kernel NULL pointer dereference. It causes
> > the OS to freeze on many machines and requires a cold reboot, causing
> > denial of service.
> > 
> > 3. A description of the affected code (e.g. the function name, the
> > vulnerable web page, link to the affected code, a bug entry, etc.):
> > 
> > The flaw exists in the "whiteheat_attach" function in
> > drivers/usb/serial/whiteheat.c in the Whiteheat USB Serial Driver in the
> > Linux kernel.
> > (http://lxr.free-electrons.com/source/drivers/usb/serial/whiteheat.c?v=3.19)
> > 
> > 
> > In the driver, the “COMMAND_PORT” variable is hard coded and is set to
> > “4” (5th element). So, the driver assumes that the number of ports
> > always will be 5 and takes the port number 5 as the command port. But,
> > using a specially made USB device in which the number of ports was set
> > to a number less than 5 (e.g. 3) we were able to perform Denial of
> > Service on the system due to a kernel NULL pointer dereference. The
> > system froze and requires a reboot.
> > 
> > You may find more information regarding the bug from the logs attached
> > to this email. Please let us know if you have any questions or concerns.
> 
> FWIW, the USB serial subsystem maintainer was just told about this an
> hour or so ago, and is working on a patch for this, which should be
> merged into Linus's tree by the end of the week or so.

And here's a patch if distros care to pick it up earlier than "normal":
	https://lkml.kernel.org/r/<1443033702-29600-1-git-send-email-johan@kernel.org>
