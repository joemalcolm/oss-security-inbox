X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1515" "Wednesday" "27" "September" "2017" "14:51:49" "+0200" "Solar Designer" "solar@openwall.com" "<20170927125149.GA2500@openwall.com>" "29" "Re: [oss-security] Linux kernel CVEs not mentioned on oss-security" "^Date:" nil nil "9" "2017092712:51:49" "[oss-security] Linux kernel CVEs not mentioned on oss-security" (number mark "        solar@openwa Sep 27   29/1515  " thread-indent "\"Re: [oss-security] Linux kernel CVEs not mentioned on oss-security\"\n") "<CAADPF4OszZShcGb+x79UZQzBT3XONwNH6E970MVwrUdXyJDmiw@mail.gmail.com>" ("<EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov>" "<1978278.8CZP0B31Sj@wanheda>" "<20170926073214.GA8108@kroah.com>" "<4188502.8b3PN4uBSd@wanheda>" "<20170926150446.GA11530@kroah.com>" "<CAADPF4OszZShcGb+x79UZQzBT3XONwNH6E970MVwrUdXyJDmiw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19731 invoked by uid 550); 27 Sep 2017 12:52:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19472 invoked from network); 27 Sep 2017 12:52:00 -0000
Message-ID: <20170927125149.GA2500@openwall.com>
References: <EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov> <1978278.8CZP0B31Sj@wanheda> <20170926073214.GA8108@kroah.com> <4188502.8b3PN4uBSd@wanheda> <20170926150446.GA11530@kroah.com> <CAADPF4OszZShcGb+x79UZQzBT3XONwNH6E970MVwrUdXyJDmiw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAADPF4OszZShcGb+x79UZQzBT3XONwNH6E970MVwrUdXyJDmiw@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Date: Wed, 27 Sep 2017 14:51:49 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel CVEs not mentioned on oss-security
To: oss-security@lists.openwall.com

On Wed, Sep 27, 2017 at 10:14:04AM +0100, Muhammed Mustapha Abiola wrote:
> Isn't this exactly what Vendor-Sec tried to solve?

No.  Not even similar.

vendor-sec was / linux-distros is solely about the subset of issues that
are initially embargoed, but OTOH not limited to the Linux kernel.
So there wasn't / isn't meant to be more than a slight overlap between
issues handled on those lists vs. all Linux kernel security issues/fixes.

Besides, Greg focuses on the problem that some ignore the stable kernels
or the "curated and tested stream of fixes" that could be seen in there,
whereas another concern mentioned earlier in the thread is that the
stream is also incomplete because some security fixes are not marked as
such and not CC'ed to stable.  So that's two problems mentioned in the
thread, but vendor-sec was not / linux-distros is not related to either.

Alexander

> On Tue, Sep 26, 2017 at 4:04 PM, Greg KH <greg@kroah.com> wrote:
> > The rule for the kernel is, "if a distro/company/user is not following
> > the stable kernel updates, they are on their own".  I recommend either
> > using the stable kernels, or paying for a company that knows what they
> > are doing in this area and provides support (Red Hat, SuSE, etc.)
> >
> > And if you try to argue "just tell us what needs to be fixed", well, we
> > are, am, we are providing about 10-12 patches a day that people should
> > be incorporating into their kernels.  Why they ignore that curated and
> > tested stream of fixes is beyond me...
