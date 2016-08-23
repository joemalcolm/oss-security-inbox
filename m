X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2060" "Tuesday" "23" "August" "2016" "07:38:42" "+0200" "Willy Tarreau" "w@1wt.eu" "<20160823053842.GB21570@1wt.eu>" "42" "Re: [oss-security] Re: CVE Request: Linux kernel crash of OHCI when plugging in malicious USB devices" "^Cc:" nil nil "8" "2016082305:38:42" "[oss-security] Re: CVE Request: Linux kernel crash of OHCI when plugging in malicious USB devices" (number mark "        w@1wt.eu     Aug 23   42/2060  " thread-indent "\"Re: [oss-security] Re: CVE Request: Linux kernel crash of OHCI when plugging in malicious USB devices\"\n") "<20160822152448.GC3132@suse.de>" ("<20160818142216.GH2701@suse.de>" "<20160818143014.GA27854@kroah.com>" "<20160818143957.GI2701@suse.de>" "<20160818145724.GA32181@kroah.com>" "<20160818151654.GK2701@suse.de>" "<1471538630.13300.95.camel@decadent.org.uk>" "<3385bcd9-629a-5978-abfa-87cae962deb2@redhat.com>" "<20160818195024.GB17944@1wt.eu>" "<20160822152448.GC3132@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1565 invoked by uid 550); 23 Aug 2016 06:09:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19784 invoked from network); 23 Aug 2016 05:39:02 -0000
Message-ID: <20160823053842.GB21570@1wt.eu>
References: <20160818142216.GH2701@suse.de>
 <20160818143014.GA27854@kroah.com>
 <20160818143957.GI2701@suse.de>
 <20160818145724.GA32181@kroah.com>
 <20160818151654.GK2701@suse.de>
 <1471538630.13300.95.camel@decadent.org.uk>
 <3385bcd9-629a-5978-abfa-87cae962deb2@redhat.com>
 <20160818195024.GB17944@1wt.eu>
 <20160822152448.GC3132@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160822152448.GC3132@suse.de>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: oss-security@lists.openwall.com, Adam Maris <amaris@redhat.com>,
        Greg KH <greg@kroah.com>, cve-assign@mitre.org, security@kernel.org
Date: Tue, 23 Aug 2016 07:38:42 +0200
From: Willy Tarreau <w@1wt.eu>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: Linux kernel crash of OHCI when
 plugging in malicious USB devices
To: Marcus Meissner <meissner@suse.de>

Hi Marcus,

On Mon, Aug 22, 2016 at 05:24:49PM +0200, Marcus Meissner wrote:
> Hi,
> 
> This seems a bit sore topic, and Mitre does not want to chime in.
> 
> Perhaps we need to add more criteria to select CVE assignment.
> 
> - simple DOS (e.g. NULL ptr dereference) when plugging in: No CVE
> - code execution (use after free, write overflows) when plugging in: Assign CVE

I'd classify it differently : something where a bug allows someone
unauthorized to do something he couldn't do differently needs a CVE.
That includes memory corruption, code execution, privilege increases,
local DoS/panic/oops by just executing an exploit, etc. Here we're
speaking about someone plugging some hardware into an open port which
immediately takes the whole system down. Sure, the faulty code makes
this possible. But the hardware is purposely designed for this. I can
also design some hardware which takes the system down and possibly even
fries it without involving the code at all. So once this device is
built, if we assign a CVE, nobody will fix it and it will not even
apply to any specific OS. Oh, after just one Google request I found
that I was not the first one to think about it, it already exists :

   http://arstechnica.com/security/2015/10/usb-killer-flash-drive-can-fry-your-computers-innards-in-seconds/

> That said, this leaves malicious USB devices posing as regular keyboards 
> for text injection unclassified ... 

You can't differenciate them from a real keyboard operated by someone
typing from memory. It already happened to me at least once to enter
some hex shell code via a keyboard connected to a KVM to try to recover
access to a remote machine where the password was lost. How is this
different from having an AVR-based Digispark, Trinklet or whatever
allowing you to emulate a keyboard to inject code sequences ? I had
one adding "+ +" to the user's .rhosts 1 minute after being plugged
in some time ago (just as a proof of concept). The OS is not at fault
here, only the user accepting to plug whatever into their system.

Cheers,
Willy
