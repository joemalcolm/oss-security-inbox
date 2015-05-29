X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1834" "Saturday" "30" "May" "2015" "00:36:19" "+0300" "Henri Salo" "henri@nerv.fi" "<20150529213619.GE24340@lakka.kapsi.fi>" "40" "Re: [oss-security] CVE request: vulnerability in the kernel tty subsystem." nil nil nil "5" "2015052921:36:19" "[oss-security] CVE request: vulnerability in the kernel tty subsystem." (number mark "        henri@nerv.f May 30   40/1834  " thread-indent "\"Re: [oss-security] CVE request: vulnerability in the kernel tty subsystem.\"\n") "<20150526145247.GB23156@kroah.com>" ("<926476450.3946717.1432609079414.JavaMail.zimbra@redhat.com>" "<435842836.3987672.1432621133397.JavaMail.zimbra@redhat.com>" "<20150526145247.GB23156@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12036 invoked by uid 550); 29 May 2015 21:36:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12013 invoked from network); 29 May 2015 21:36:33 -0000
Message-ID: <20150529213619.GE24340@lakka.kapsi.fi>
References: <926476450.3946717.1432609079414.JavaMail.zimbra@redhat.com>
 <435842836.3987672.1432621133397.JavaMail.zimbra@redhat.com>
 <20150526145247.GB23156@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150526145247.GB23156@kroah.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-SA-Exim-Connect-IP: 2001:1bc8:1004::1
X-SA-Exim-Mail-From: fgeek@kapsi.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
Cc: oss-security@lists.openwall.com, cve-assign@mitre.org
Date: Sat, 30 May 2015 00:36:19 +0300
From: Henri Salo <henri@nerv.fi>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: vulnerability in the kernel tty
 subsystem.
To: Greg KH <greg@kroah.com>

Please correct me if I am wrong somewhere in this email. I just want to
understand why you said this.

On Tue, May 26, 2015 at 07:52:47AM -0700, Greg KH wrote:
> For a 2 year old bugfix?

Age does not matter for CVE assigment as far as I can tell.

> I know you all like to try to track bugs for old and obsolete products,
> but really, there's no end of CVEs you could request if you wish to do
> this.  Heck, I could start asking for multiple CVEs for every single
> stable kernel release I do, which would just be pointless.
> Please just mark this as a "oh look, a bug was fixed years ago and we
> need to backport it because we have old kernels out in the wild and our
> customers don't like to upgrade" type issue.
> Don't force CVEs to play by the odd enterprise rules that you all wish
> perpetuate.

CVE is defined as "common identifiers for publicly known information-security
vulnerabilities in publicly released software packages".

How is it pointless to request CVE identifier for security issue in kernel or
other software if that software is released and used by some distro or other
entity? How do you calculate how many users are using some kernel if it is
released in public website? Please note that this might be easier for kernel
than some other software like web-application project in GitHub.

One reason I could think of for not requesting CVEs for issues is that it
creates workload to MITRE or other CNA (and in some cases users of CVE when they
are tracking issues). If that is the case could you or MITRE tell me where
should that line be drawn?

Or if this is not the case do you mean that "vulnerability in the kernel tty
subsystem" is not critical enough for CVE? If that is the case how is that
calculated?

Or even "vulnerability in the kernel tty subsystem" is not a security issue?

-- 
Henri Salo
