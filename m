X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["951" "Wednesday" "4" "May" "2016" "06:21:52" "-0700" "Greg KH" "greg@kroah.com" "<20160504132152.GA25258@kroah.com>" "26" "Re: [oss-security] CVE Request: information leak in wilc1000 module of Linux kernel" nil nil nil "5" "2016050413:21:52" "[oss-security] CVE Request: information leak in wilc1000 module of Linux kernel" (number mark "U       greg@kroah.c May  4   26/951   " thread-indent "\"Re: [oss-security] CVE Request: information leak in wilc1000 module of Linux kernel\"\n") "<CABEk9Yz0mijhgKqKEugbvfAdqJKRcn6-HYyET3MA-D2EROo0tw@mail.gmail.com>" ("<CABEk9Yz0mijhgKqKEugbvfAdqJKRcn6-HYyET3MA-D2EROo0tw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5893 invoked by uid 550); 4 May 2016 13:22:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5875 invoked from network); 4 May 2016 13:22:08 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=PMnSdgFy9FEtJ5x
	nMbJVCFndEvo=; b=q7jgUCiaom4urmSPT6aGk6EeDP6bUYWQlZyQEKhq7ftm9CF
	whyNsgRANbVK3LzVjys5DycnraNK4hs+vhcfVvI5fUhNUZpQ/nZcwH2Lhmb5o8cb
	ItEfz+hwW4AeOhA8SnsPCUSx+JH+7y2DP3FoYg3XKuMqsEuwDUOOzCVSeO+E=
X-Sasl-enc: XbT1mcPR+iP6Ob24AQ5Z5EtttpUXeYiSkzbtGxlC3fRj 1462368115
Date: Wed, 4 May 2016 06:21:52 -0700
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Cc: Taesoo Kim <taesoo@gatech.edu>, Chengyu Song <csong84@gatech.edu>,
	Insu Yun <insu@gatech.edu>
Message-ID: <20160504132152.GA25258@kroah.com>
References: <CABEk9Yz0mijhgKqKEugbvfAdqJKRcn6-HYyET3MA-D2EROo0tw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CABEk9Yz0mijhgKqKEugbvfAdqJKRcn6-HYyET3MA-D2EROo0tw@mail.gmail.com>
User-Agent: Mutt/1.6.1 (2016-04-27)
Subject: Re: [oss-security] CVE Request: information leak in wilc1000 module
 of Linux kernel

On Wed, May 04, 2016 at 09:12:52AM -0400, Kangjie Lu wrote:
> Hello,
> 
> In the milc1000 module (drivers/staging/wilc1000/wilc_wfi_cfgoperations.c),
> The 6-bytes stack object “mac” is not initialized but leaked via “nla_put”.
> This bug may result in leaks of sensitive kernel stack data.
> 
> The patch of this bug has been accepted by Linux kernel maintainer and will
> be
> merged in the next kernel release (see the message bellow).
> 
> Fix info:
> *http://www.spinics.net/lists/linux-wireless/msg150352.html
> <http://www.spinics.net/lists/linux-wireless/msg150352.html>*
> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
> 
> Could you please assign a CVE to it?

I wouldn't recommend CVEs for drivers in the staging portion of the
Linux kernel tree.  It's just too easy to find bugs in them, and very
few distros actually enable them.  Unless you want to prove that CVEs
don't really mean much :)

thanks,

greg k-h
