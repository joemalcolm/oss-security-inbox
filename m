X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1628" "Tuesday" "19" "July" "2016" "14:51:19" "+0200" "Sebastian Krahmer" "krahmer@suse.com" "<20160719125119.GA7146@suse.de>" "43" "Re: [oss-security] subuid security patches for shadow package" nil nil nil "7" "2016071912:51:19" "[oss-security] subuid security patches for shadow package" (number mark "U       krahmer@suse Jul 19   43/1628  " thread-indent "\"Re: [oss-security] subuid security patches for shadow package\"\n") "<20160719093915.GA29047@suse.de>" ("<20160719093915.GA29047@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28043 invoked by uid 550); 19 Jul 2016 12:51:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28022 invoked from network); 19 Jul 2016 12:51:31 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Tue, 19 Jul 2016 14:51:19 +0200
From: Sebastian Krahmer <krahmer@suse.com>
To: oss-security@lists.openwall.com
Cc: ebiederm@xmission.com
Message-ID: <20160719125119.GA7146@suse.de>
References: <20160719093915.GA29047@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160719093915.GA29047@suse.de>
Organization: SUSE Linux GmbH, GF: Felix =?utf-8?Q?Imend?=
 =?utf-8?Q?=F6rffer?= =?utf-8?Q?=2C?= Jane Smithard, Graham Norton, HRB 21284
 (AG Nuernberg)
User-Agent: Outlook
Subject: Re: [oss-security] subuid security patches for shadow package

On Tue, Jul 19, 2016 at 11:39:15AM +0200, Sebastian Krahmer wrote:
> Hi
> 
> The shadow package contains newuidmap and newgidmap suid
> binaries in order to allow users to take advantage of the
> userns feature of uid-mappings.
> 
> I added patches here:
> 
> https://bugzilla.suse.com/show_bug.cgi?id=979282
> 
> they consist of:
> 
> 1) Removing getlogin() to find out about users.
>    It relies on utmp, which is not a trusted base of info (group writable).
> 
> 2) Cleaning up UID retrieval and computation. The 'long long' code was
>    totally unclear to me, as the numbers are converted to ulong right
>    afterwards anyway. Additionally there was a *int overflow*, which can be
>    tested via 'newuidmap $$ 0 10000 -1' (given that 10000 is listed as allowed)
>    which produces no error but tries to write large "count" values to the uid_map
>    file. Kernel may check for overflows itself, but it should not be allowed
>    by a suid binary to be written in the first place.

After checking some kernels, it looks like this int wrap is exploitable as a LPE,
as kernel is using 32bit uid's that are truncated from unsigned longs (64bit on x64)
as returned by simple_strtoul() [map_write()]. So newuidmap and kernel have an entire
different view on the upper and lower bounds, making newuidmap overflow (and pass)
and still being in bounds inside the kernel.

Maybe it would be wise to align integer widths of kernel and the userspace
tools.

So everyone shipping newuidmap as mode 04755 should fix it. :)

Sebastian

-- 

~ perl self.pl
~ $_='print"\$_=\47$_\47;eval"';eval
~ krahmer@suse.com - SuSE Security Team

