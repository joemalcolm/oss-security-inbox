X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1165" "Tuesday" "26" "September" "2017" "17:04:46" "+0200" "Greg KH" "greg@kroah.com" "<20170926150446.GA11530@kroah.com>" "28" "Re: [oss-security] Linux kernel CVEs not mentioned on oss-security" "^Cc:" nil nil "9" "2017092615:04:46" "[oss-security] Linux kernel CVEs not mentioned on oss-security" (number mark "        greg@kroah.c Sep 26   28/1165  " thread-indent "\"Re: [oss-security] Linux kernel CVEs not mentioned on oss-security\"\n") "<4188502.8b3PN4uBSd@wanheda>" ("<EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov>" "<1978278.8CZP0B31Sj@wanheda>" "<20170926073214.GA8108@kroah.com>" "<4188502.8b3PN4uBSd@wanheda>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10014 invoked by uid 550); 26 Sep 2017 15:04:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9993 invoked from network); 26 Sep 2017 15:04:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-me-sender:x-me-sender:x-sasl-enc:x-sasl-enc; s=
	fm1; bh=m1HBvfZwSheBTELVRJBPcJHsLpGRC4uYLx0B+o63Fdg=; b=gx7lQpq+
	OdoiyoRjLTyryY7xMjjTjBbZ7ImaduO9DG9dU5lTA26dv0DB9VKXXKJc7G7jhva+
	jPPyDsUHHh4/98q2Td0Qki9D9mF0sDjrETiQdWM758iZcRY1Q3eKhxVyDMXvlIWE
	FX5G7IJB6bGSgRgsd/NjCjeaWZ8L99lyLGzWrGVlm5p1ATP0F5YWloF5gUEkNfOQ
	a9exQM3D1RmEIdn4fhBgcUJKGdOhX6v0oKS3qhKO5ePu0gw96O3+5INJlkkfHRdI
	efn+eki6+zHdteBLQEpfIOLl+2sAicMy2smpfQJH60jwZKBrPiUs0VI08faAEqXE
	0aEjYojZKqjjJQ==
X-ME-Sender: <xms:hGzKWaiIyMxKreBnpJpSA5RnXdcgw41dUpcwTOv-CRNBHgOa65qFoQ>
X-Sasl-enc: 3uOw3pUWy2/5Lz+/RmP0/GEu7jlwls7oMKx3pCWs9W6f 1506438275
Message-ID: <20170926150446.GA11530@kroah.com>
References: <EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov>
 <1978278.8CZP0B31Sj@wanheda>
 <20170926073214.GA8108@kroah.com>
 <4188502.8b3PN4uBSd@wanheda>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4188502.8b3PN4uBSd@wanheda>
User-Agent: Mutt/1.9.1 (2017-09-22)
Cc: oss-security@lists.openwall.com
Date: Tue, 26 Sep 2017 17:04:46 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel CVEs not mentioned on oss-security
To: Agostino Sarubbo <ago@gentoo.org>

On Tue, Sep 26, 2017 at 04:50:10PM +0200, Agostino Sarubbo wrote:
> On martedì 26 settembre 2017 09:32:14 CEST Greg KH wrote:
> > > I guess this would be benefit for all.
> > 
> > Define "all" 
> 
> You know, for example in Gentoo we are following the upstream releases. So 
> from time to time we stabilize a newer kernel that "syncs" with upstream.
> This does not happen for non-rolling (release) distros that may want to patch/
> backport the security fix.

I understand the issue well, I talk to companies all the time about this :)

The rule for the kernel is, "if a distro/company/user is not following
the stable kernel updates, they are on their own".  I recommend either
using the stable kernels, or paying for a company that knows what they
are doing in this area and provides support (Red Hat, SuSE, etc.)

And if you try to argue "just tell us what needs to be fixed", well, we
are, am, we are providing about 10-12 patches a day that people should
be incorporating into their kernels.  Why they ignore that curated and
tested stream of fixes is beyond me...

Anyway, this is getting a bit off-topic here, sorry for the noise.

Best of luck,

greg k-h
