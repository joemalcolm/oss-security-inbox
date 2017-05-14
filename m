X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["500" "Sunday" "14" "May" "2017" "12:41:20" "+0200" "Greg KH" "greg@kroah.com" "<20170514104120.GA29066@kroah.com>" "13" "Re: [oss-security] Kernel 4.1.y might not contain patches for CVE-2016-10229" nil nil nil "5" "2017051410:41:20" "[oss-security] Kernel 4.1.y might not contain patches for CVE-2016-10229" (number mark "U       greg@kroah.c May 14   13/500   " thread-indent "\"Re: [oss-security] Kernel 4.1.y might not contain patches for CVE-2016-10229\"\n") "<F98F0BB5-6485-45D0-BF61-186895EAAA33@technologysecure.com>" ("<F98F0BB5-6485-45D0-BF61-186895EAAA33@technologysecure.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14035 invoked by uid 550); 14 May 2017 10:41:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14002 invoked from network); 14 May 2017 10:41:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=fm1; bh=aCeSb0QbJa7dNo8Xfr
	+pR1a+aUfHwLYCYeuNgJjbpp4=; b=B+GGPv+/FGRBj1wkBwAp6qkodE6qZt9TwE
	/QIR7AlPApPrKTcU861O3NkkYo0DDjIsN2ipmqIOapJVc6L6EjjhL7784nRl2TX0
	20zbfU11f1E1fRv5KFdeN0dZvOX+714MYCs0ijVPiO5QG+lesSI3Rbjq573eYRBh
	yGw2AkWed6c5+f5XnCQzS1USJgLQgMOHa1UTWAjfYBXQeKy5qOGNbAFeZueYl9eN
	Fwyit22xWBOKx4te1Ei9SMus2rgV6XNSRowg41pWrm1ND53KpZUaVrJ6v5UARRIf
	pNeXy+oVNIktePw4nmWyusBA4ZifDbFiKz7e0mp68F6+gGPXrvOQ==
X-ME-Sender: <xms:VzQYWXIWpyKTFVzFqHoLquu5CEOprwiVO31pWtxCHYK8Fj0YTHfItg>
X-Sasl-enc: COdKv5Z9FHEfyNXYlq8CsxemOuZ6dqaeN7kDlSvstaoR 1494758487
Date: Sun, 14 May 2017 12:41:20 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <20170514104120.GA29066@kroah.com>
References: <F98F0BB5-6485-45D0-BF61-186895EAAA33@technologysecure.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <F98F0BB5-6485-45D0-BF61-186895EAAA33@technologysecure.com>
User-Agent: Mutt/1.8.2 (2017-04-18)
Subject: Re: [oss-security] Kernel 4.1.y might not contain patches for
 CVE-2016-10229

On Sat, May 13, 2017 at 10:44:44PM -0400, Yury German wrote:
> This is just a small notice that Linux Kernel 4.1.y might not contain
> patches to CVE-2016-10229 [1]. This is a reference to the Vanilla
> Linux sources without any distribution specific patching. Typically a
> number of distributions apply their own patches to the standard
> vanilla Kernel. 

Given that the last 4.1.y kernel was released on March 13, there are
lots of things missing in that tree at the moment :)

thanks,

greg k-h
