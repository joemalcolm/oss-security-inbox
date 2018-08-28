X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["992" "Tuesday" "28" "August" "2018" "15:18:00" "+0200" "Greg KH" "greg@kroah.com" "<20180828131800.GA14585@kroah.com>" "25" "Re: [oss-security] Linux kernel: CVE-2018-14619 kernel: crash (possible privesc) in kernel crypto subsystem." "^Cc:" nil nil "8" "2018082813:18:00" "[oss-security] Linux kernel: CVE-2018-14619 kernel: crash (possible privesc) in kernel crypto subsystem." (number mark "        greg@kroah.c Aug 28   25/992   " thread-indent "\"Re: [oss-security] Linux kernel: CVE-2018-14619 kernel: crash (possible privesc) in kernel crypto subsystem.\"\n") "<63a8aed5-d44a-a975-a2a3-932374b57a6c@redhat.com>" ("<CALJHwhQyQQjyWxczrjtBgt8GSmHHarzfSDPPFKt3xY0Sk0Sd_g@mail.gmail.com>" "<20180828125140.GA14413@kroah.com>" "<63a8aed5-d44a-a975-a2a3-932374b57a6c@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15969 invoked by uid 550); 28 Aug 2018 13:18:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15948 invoked from network); 28 Aug 2018 13:18:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; bh=Wj/T2w8ScWgVtGy/Q5GXPHrUjl2eh8o1FRWTmkFd1wM=; b=2KZft4uc
	Mj5nG/mmnFvrPpMT6Z1taHLofbA47moqDtaXdZNpkmjGw9NYDP4hou9ICXGG8ESd
	5MBje0dM3TkMBMaPsC2217V5SDXhuVe9w9kYhTGxPnWK2srSek8EqieHbV+Lx/Xf
	6M94NMIXxO2uktSJ6RguJlHRSLYRv993h2ozE2gf8jqi8ktQ6GpQMuE1K1AXledH
	60PbZFiUhoZafdsfhvKVTaEu36KIJgsaZWJoUWByUjHYhtXtNCR6eLGspnWRDH0P
	evRxx8X+jeLiDo+mbrzTSYUIwcnERPOW+XYLHHWB9sujVqXYzyqx9V7iPILQnnc6
	+bVdKA+ftX0EKQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; bh=Wj/T2w8ScWgVtGy/Q5GXPHrUjl2eh
	8o1FRWTmkFd1wM=; b=HWwBiaIOcqwF0BK2DVdcnwVK7jv7L619c2JKbnpWV5Gdp
	+Pn89++urRSk0diA/ZILNA6uYwvnhio5JHG3zEwZmq+1ecEs6/I4tnwLVIqZBmC6
	gGU3TXXMA1u46gJMFSoRk9rbCtyd9DJ3WbG1QY2TlImIg9gCy2UegNtX6OQkPJ6Y
	gNLOPlfxcfuEAUWrPhE1T7HQgW2TcImeZ88BEKgEgqArxk81GSX16B4+sW2Wm9ka
	Vf1J78yNdsRTFLDRXWsI0jb8kP66av62yT66LvLBqX+z4SBj4yRJ1uMMBtGFRVW0
	nXIz0JGli/DUDJdjAo3q5/1xjN/4ea6fJIJ25bteA==
X-ME-Proxy: <xmx:j0uFWxveYttCYs5v5afkpSHzBK3Dyotc6AR5sqd_SUcP-wCTA8h0iw>
    <xmx:j0uFW_WqWuTHpjZ6yv666l55SP-K5C04xBflSy8gaa1A9ITlXfye3A>
    <xmx:j0uFW9UwW_M2Vh4s3e484MWG2GGS-CzDVUa5C9l25WFNtc7PUFhsJw>
    <xmx:j0uFW5d3EiLIzs7l5Txq3kBY81kRiT4MvyhgpTcWW6_4R1lANDUiSQ>
    <xmx:j0uFW058llNaSl2FcLjZzwk0duB2R0PNw3EihidpqhVT-t39Ce3ahw>
    <xmx:j0uFW3Uts5nL9d9CfMlwfeUwnXQ0VqVgSG4YL367ilkeYgDRe8OqVA>
X-ME-Sender: <xms:j0uFW2uoeBarz2etKt0CaR1OppXGn4DfuKKrFY4TafTjHWJprST-rA>
Message-ID: <20180828131800.GA14585@kroah.com>
References: <CALJHwhQyQQjyWxczrjtBgt8GSmHHarzfSDPPFKt3xY0Sk0Sd_g@mail.gmail.com>
 <20180828125140.GA14413@kroah.com>
 <63a8aed5-d44a-a975-a2a3-932374b57a6c@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <63a8aed5-d44a-a975-a2a3-932374b57a6c@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: oss-security@lists.openwall.com
Date: Tue, 28 Aug 2018 15:18:00 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: CVE-2018-14619 kernel: crash
 (possible privesc) in kernel crypto subsystem.
To: Florian Weimer <fweimer@redhat.com>

On Tue, Aug 28, 2018 at 03:08:18PM +0200, Florian Weimer wrote:
> On 08/28/2018 02:51 PM, Greg KH wrote:
> > On Tue, Aug 28, 2018 at 04:49:14PM +1000, Wade Mealing wrote:
> > > Gday,
> > > 
> > > Syzkaller/syzbot found a use-after-free bug in the cryptographic
> > > subsystem of the Linux kernel [1], that can be used to panic the
> > > system and possibly escalate privileges.
> > 
> > Are we seriously now going to be assigning cves to everything that
> > syzbot finds?  If so, great, this is going to be fun!
> > 
> > If not, why this specific patch?  What makes it specia from the hundreds
> > of other syzbot finds that have been fixed (and not fixed yet)?
> 
> > If RHEL is not exposed, why does Red Hat care about this?
> 
> We have shipped supported kernels with this vulnerability.
> 
> But the real reason why I want this fixed is that the Python 3 test suite
> triggers this bug and panics some of our RPM builders. 8-/

Heh, ok, fair enough, thanks for being honest :)

greg k-h
