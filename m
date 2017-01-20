X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1797" "Friday" "20" "January" "2017" "12:14:38" "+0100" "Greg KH" "greg@kroah.com" "<20170120111438.GA1582@kroah.com>" "48" "Re: [oss-security] CVE REQUEST: linux kernel: process with pgid zero able to crash kernel" "^Cc:" nil nil "1" "2017012011:14:38" "[oss-security] CVE REQUEST: linux kernel: process with pgid zero able to crash kernel" (number mark "        greg@kroah.c Jan 20   48/1797  " thread-indent "\"Re: [oss-security] CVE REQUEST: linux kernel: process with pgid zero able to crash kernel\"\n") "<1484908781.11949.37.camel@redhat.com>" ("<1484880112.11949.24.camel@redhat.com>" "<20170120082635.GB28326@kroah.com>" "<1484908781.11949.37.camel@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18112 invoked by uid 550); 20 Jan 2017 11:14:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18092 invoked from network); 20 Jan 2017 11:14:58 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-me-sender:x-me-sender:x-sasl-enc:x-sasl-enc; s=
	smtpout; bh=18X7aexoy0avtyxnfu3RNDWyhlE=; b=O4V3xD/EqK3upgygyHyq
	PtL/jhKeGhzrl+2OaD+JWM3hasZEGnNLDBav5L+COSKhalGvdQ1b3QkM02cZakWV
	3lpy5A5c+I+aG11AqrqZnaISAaYNcZs2t0MZbOQ04mFROo5+jDMRUwAZiyBh6+QC
	pLgaDyyu2Bqjobv5DWK5LZM=
X-ME-Sender: <xms:JvGBWHZYJtCwoaMkFtwYAv0nzJgkyoPTMPMWQEf8KpP24KKW8RC1Iw>
X-Sasl-enc: /4Kd45PHZYVy+fQ8SpQifFg3f5xF62b0Mwk9bujaRMg1 1484910886
Message-ID: <20170120111438.GA1582@kroah.com>
References: <1484880112.11949.24.camel@redhat.com>
 <20170120082635.GB28326@kroah.com>
 <1484908781.11949.37.camel@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1484908781.11949.37.camel@redhat.com>
User-Agent: Mutt/1.7.2 (2016-11-26)
Cc: oss-security@lists.openwall.com,
	Jesse Hertz <Jesse.Hertz@nccgroup.trust>,
	Wade Mealing <wmealing@redhat.com>
Date: Fri, 20 Jan 2017 12:14:38 +0100
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE REQUEST: linux kernel: process with pgid zero
 able to crash kernel
To: Harshula <harshula@redhat.com>

On Fri, Jan 20, 2017 at 09:39:41PM +1100, Harshula wrote:
> Hi Greg,
> 
> On Fri, 2017-01-20 at 09:26 +0100, Greg KH wrote:
> > On Fri, Jan 20, 2017 at 01:41:52PM +1100, Harshula wrote:
> > > Hi Folks,
> > > 
> > > Red Hat Product Security has been notified of a kernel vulnerability
> > > that a local attacker can exploit to crash/panic the kernel and cause a
> > > denial of service.
> > > 
> > > This was reported to Red Hat by Jesse Hertz (CC'd) (reproducer:
> > > rt411016):
> > > 
> > > "A process that is in the same process group as the ``init'' process
> > > (group id zero) can crash the Linux 2 kernel with several system calls
> > > by passing in a process ID or process group ID of zero. The value zero
> > > is a special value that indicates the current process ID or process
> > > group. However, in this case it is also the process group ID of the
> > > process."
> > > 
> > > I've been testing whether RHEL is vulnerable and found the following:
> > > 
> > > * Upstream/mainline is not vulnerable
> > 
> > Is this true for the mainline kernel tree that RHEL 6 was based on?
> > 
> > > * RHEL 7 is not vulnerable
> > > * RHEL 6 is vulnerable
> > > * RHEL 5 is partially vulnerable
> > 
> > So this is only due to a specific set of patches that were added to RHEL
> > 6 and RHEL 5 yet never made it upstream?  I ask as we want to make sure
> > some of the older LTS mainline kernels might be affected and it would be
> > good to ensure they are not.
> 
> Good questions, I had not looked at it from a mainline timeline
> perspective.
> 
> 1) Mainline kernels containing patches [a], [b] and [c] are not
> vulnerable.

Ah, nice, all of these showed up in the 2.6.35-rc1 release.  Any distro
based on something older than that needs to worry here.

Thanks for the details.

greg k-h
