X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["822" "Thursday" "22" "June" "2017" "09:23:41" "-0700" "Eduardo Valentin" "eduval@amazon.com" "<20170622162341.GC11634@u40b0340c692b58f6553c.ant.amazon.com>" "29" "Re: [oss-security] stackguard fix in Red Hat and Ubuntu kernels" nil nil nil "6" "2017062216:23:41" "[oss-security] stackguard fix in Red Hat and Ubuntu kernels" (number mark "U       eduval@amazo Jun 22   29/822   " thread-indent "\"Re: [oss-security] stackguard fix in Red Hat and Ubuntu kernels\"\n") "<20170622133812.GA1672@kroah.com>" ("<20170622121330.GA18550@openwall.com>" "<20170622121833.GI32005@suse.de>" "<20170622133812.GA1672@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27844 invoked by uid 550); 22 Jun 2017 16:35:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20458 invoked from network); 22 Jun 2017 16:23:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1498148637; x=1529684637;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=bBD3exPTNCwis7q3S6JNiC9UpgAG/roKbApbsOstjoI=;
  b=urv5Q4sNz9QY+V6rDx1QfOrCUEYgVmTJr042yyN5Y15Ye5ClilPxPh5I
   JSr3cCoVluyZSBdCTjBuSwDIK6G3g7x8uHmwEmzc0NZeDVIb+HYSX5TRX
   dCbtY2GsnOF6OZotheFvmnDUNwBqZaqAcw6Rg7eY+EaYUPUVJhodHkCGr
   U=;
X-IronPort-AV: E=Sophos;i="5.39,373,1493683200"; 
   d="scan'208";a="676033299"
Date: Thu, 22 Jun 2017 09:23:41 -0700
From: Eduardo Valentin <eduval@amazon.com>
To: <oss-security@lists.openwall.com>
CC: Vasily Averin <vvs@virtuozzo.com>,
        Konstantin Khorenko
	<khorenko@virtuozzo.com>
Message-ID: <20170622162341.GC11634@u40b0340c692b58f6553c.ant.amazon.com>
References: <20170622121330.GA18550@openwall.com>
 <20170622121833.GI32005@suse.de> <20170622133812.GA1672@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20170622133812.GA1672@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [oss-security] stackguard fix in Red Hat and Ubuntu kernels

On Thu, Jun 22, 2017 at 09:38:13PM +0800, Greg KH wrote:
> On Thu, Jun 22, 2017 at 02:18:33PM +0200, Marcus Meissner wrote:
> > Hi,
> > 
> > Yes, we at SUSE are seeing similar crashes. Thanks for the reproducer!
> 
> The patches upstream in Linus's tree should resolve these crashes,
> correct?  If not, please let the kernel developers know, as we ended up

We could not repro the segv with the upstream version at our end. So, I think upstream is fine for this case.

> going with a different set of changes than the distros shipped, and are

Just to my understanding, do you know why we ended up having a version for linux-distro and another for upstream?

> still working on getting these backported to older stable kernels at the
> moment.

Thanks!!

> 
> thanks,
> 
> greg k-h
> 

-- 
All the best,
Eduardo Valentin
