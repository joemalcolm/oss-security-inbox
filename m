X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2442" "Tuesday" "12" "February" "2019" "10:03:38" "-0500" "Steve Grubb" "sgrubb@redhat.com" "<2160454.BXy79Bclyo@x2>" "54" "Re: [oss-security] CVE-2019-5736: runc container breakout (all versions)" "^Cc:" nil nil "2" "2019021215:03:38" "[oss-security] CVE-2019-5736: runc container breakout (all versions)" (number mark "        sgrubb@redha Feb 12   54/2442  " thread-indent "\"Re: [oss-security] CVE-2019-5736: runc container breakout (all versions)\"\n") "<87va1pdsc9.fsf@oldenburg2.str.redhat.com>" ("<20190211130520.xwi6vpay3sc56pza@yavin>" "<87va1pdsc9.fsf@oldenburg2.str.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29838 invoked by uid 550); 12 Feb 2019 15:07:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16056 invoked from network); 12 Feb 2019 15:03:58 -0000
Message-ID: <2160454.BXy79Bclyo@x2>
Organization: Red Hat
In-Reply-To: <87va1pdsc9.fsf@oldenburg2.str.redhat.com>
References: <20190211130520.xwi6vpay3sc56pza@yavin> <87va1pdsc9.fsf@oldenburg2.str.redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Tue, 12 Feb 2019 15:03:46 +0000 (UTC)
Cc: Florian Weimer <fweimer@redhat.com>, Aleksa Sarai <cyphar@cyphar.com>, dev@opencontainers.org, Christian Brauner <christian.brauner@ubuntu.com>
Date: Tue, 12 Feb 2019 10:03:38 -0500
From: Steve Grubb <sgrubb@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2019-5736: runc container breakout (all versions)
To: oss-security@lists.openwall.com

On Tuesday, February 12, 2019 8:55:18 AM EST Florian Weimer wrote:
> * Aleksa Sarai:
> > +	memfd = memfd_create(MEMFD_COMMENT, MFD_CLOEXEC|MFD_ALLOW_SEALING);
> > +	if (memfd < 0)
> > +		goto err_binfd;
> 
> Is it really necessary to use a memfd_create here?  Do you really need
> sealing?  It's a bit odd to add a new system call dependency in a
> security update.

That's along the lines of what I was thinking also. This looks like more of a 
workaround than a root cause fix. Without seeing the exploit or a full 
discussion of the theory of operation, we really can't pinpoint where the 
issue is. Was it because of CAP_DAC_OVERRIDE? Is there a missing permission 
check crossing a trust boundary? Was excessive permissions requested in a 
syscall? Given the patch, we can sort of see what the issue is but not the 
exact issue.

> The ability fexecve a memfd descriptor is also rather
> odd.  I wouldn't have expected execute permissions on memfd descriptors,
> so this sounds like a kernel bug (which now can't be fixed).

I was thinking the same thing last week but for a whole different reason. Bash 
has tcp/ip. With it, you can create an in memory function, _wget. Using this, 
you can pull a python script off of the internet and pipe it into stdin of 
python. The python script can then pull an ELF shared object across the 
internet and stuff it into memory using memfd_create and then execute the 
shared object constructor using ctypes.CDLL() which points to the memfd. It's 
really quite slick. Using this technique, you can do everything in memory 
without ever touching disk.

So, my thoughts were...why is this even permitted? Why should computer 
languages execute anything piped to stdin? Should execution of memory only 
objects be disallowed? Should the kernel have a 0111 umask for anything 
created by memfd_create? Why doesn't ctypes.CDLL() do a permission check to 
see if the execute bit is set before loading? Should descriptors that get 
created by memfd_create go to the fanotify interface for inspection/
permission? And now with this patch, how do you tell legitimate vs malicious 
use of memfd's?

-Steve


> I saw some other patch with a O_TMPFILE replacement.  Does this really
> work?  It's possible to create a new name with linkat, so that's not a
> real win security-wise.  Could you just make a copy, under a different
> owner, and not care how it is going to be modified?
> 
> Thanks,
> Florian




