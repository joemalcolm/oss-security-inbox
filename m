X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2515" "Wednesday" "20" "January" "2016" "14:34:21" "+0100" "Yann Droneaud" "ydroneaud@opteya.com" "<1453296861.9500.81.camel@opteya.com>" "60" "Re: [oss-security] Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778" "^Date:" nil nil "1" "2016012013:34:21" "[oss-security] Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778" (number mark "        ydroneaud@op Jan 20   60/2515  " thread-indent "\"Re: [oss-security] Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778\"\n") "<569CE313.4060002@redhat.com>" ("<20160114171301.GH28298@localhost.localdomain>" "<5698D299.6020202@redhat.com>" "<1452862593.9500.48.camel@opteya.com>" "<569CE313.4060002@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 2043 invoked by uid 550); 20 Jan 2016 13:34:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 2025 invoked from network); 20 Jan 2016 13:34:33 -0000
Message-ID: <1453296861.9500.81.camel@opteya.com>
In-Reply-To: <569CE313.4060002@redhat.com>
References: <20160114171301.GH28298@localhost.localdomain>
	 <5698D299.6020202@redhat.com> <1452862593.9500.48.camel@opteya.com>
	 <569CE313.4060002@redhat.com>
Organization: OPTEYA
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.18.3 (3.18.3-1.fc23) 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 80.12.91.199
X-SA-Exim-Mail-From: ydroneaud@opteya.com
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on ou.quest-ce.net)
Date: Wed, 20 Jan 2016 14:34:21 +0100
From: Yann Droneaud <ydroneaud@opteya.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - Roaming through the
 OpenSSH client: CVE-2016-0777 and CVE-2016-0778
To: oss-security@lists.openwall.com

Hi,

Le lundi 18 janvier 2016 à 14:05 +0100, Florian Weimer a écrit :
> On 01/15/2016 01:56 PM, Yann Droneaud wrote:
> > Le vendredi 15 janvier 2016 à 12:06 +0100, Florian Weimer a écrit :
> > > On 01/14/2016 06:13 PM, Qualys Security Advisory wrote:
> > > > Internal stdio buffering is the most severe of the three
> > > > problems discussed in this section, although GNU/Linux is not
> > > > affected because the glibc mmap()s and munmap()s (and therefore
> > > > cleanses) stdio buffers.
> > > 
> > > This will change in glibc 2.23, stdio will use regular malloc and
> > > free for its buffers.  I did not expect this change to have
> > > security implications.  Considering that the actual bug lies
> > > elsewhere, and stdio usage is based on copying out of the buffer
> > > (so leaks can still happen elsewhere), I do not wish to revert
> > > this change.
> > > 
> > 
> > Would setvbuf(stream, NULL, _IONBF, 0); be used to disable buffer
> > before reading/writting sensible data to a stream ?
> 
> That entirely depends on how the data is read or written.  glibc will
> make additional copies on the heap in some cases.  In any case, this
> is an implementation detail.
> 

So one should probably not use stdio stream (fgets(), fread(),
fscanf(), fputs(), fwrite(), etc.) to load sensible data from/to,
depending on the threat model. In particular, in case it's not from/to
a local socket nor a pipe, reading or writing such data in cleartext
might be bad idea after all).

> Even if the data is gone from the process image, the kernel or its
> hypervisor may still keep copies, particularly if the data is (or was
> once) on the file system.  It is very hard to override data reliably
> on modern systems.

If an userspace application is allowed to access sensitible
information, this imply the kernel is also allowed to access it.

Userspace has to trust kernel/hypervisor. And kernel/hypervisor has to
work so that they are trustworthy from the userspace point of view,
that is, to not exchange data between namespaces, users, processes when
not explicitly allowed to.

AFAICT, having shadows / ghosts copies in kernelspace is not a problem
*provided* it's harder for a malicious party to retrieve them through a
kernel exploit than through an userspace exploit. And it should be !

Anyway, having the (Linux) kernel clearing memory, buffers, whatever...
as soon as it doesn't need them anymore will probably happen at some
point to prevent most leak.

Regards.

-- 
Yann Droneaud
OPTEYA

