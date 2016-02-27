X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1470" "Saturday" "27" "February" "2016" "18:34:20" "+0100" "Jakub Wilk" "jwilk@debian.org" "<20160227173409.GA3663@jwilk.net>" "32" "Re: [oss-security] Access to /dev/pts devices via pt_chown and user namespaces" "^Date:" nil nil "2" "2016022717:34:20" "[oss-security] Access to /dev/pts devices via pt_chown and user namespaces" (number mark "        jwilk@debian Feb 27   32/1470  " thread-indent "\"Re: [oss-security] Access to /dev/pts devices via pt_chown and user namespaces\"\n") "<20160224070111.GA8044@perpetual.pseudorandom.co.uk>" ("<8fc639ad-daef-1a6f-facf-140eb61aeee5@halfdog.net>" "<20160223161754.GA23263@openwall.com>" "<20160223164136.GA24225@altlinux.org>" "<42e97a56-3538-0864-ee40-2494df567745@halfdog.net>" "<20160224070111.GA8044@perpetual.pseudorandom.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23842 invoked by uid 550); 27 Feb 2016 17:34:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23821 invoked from network); 27 Feb 2016 17:34:35 -0000
Message-ID: <20160227173409.GA3663@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <8fc639ad-daef-1a6f-facf-140eb61aeee5@halfdog.net>
 <20160223161754.GA23263@openwall.com>
 <20160223164136.GA24225@altlinux.org>
 <42e97a56-3538-0864-ee40-2494df567745@halfdog.net>
 <20160224070111.GA8044@perpetual.pseudorandom.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20160224070111.GA8044@perpetual.pseudorandom.co.uk>
User-Agent: Mutt/1.5.23.1 (2014-03-12)
Date: Sat, 27 Feb 2016 18:34:20 +0100
From: Jakub Wilk <jwilk@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Access to /dev/pts devices via pt_chown and user
 namespaces
To: oss-security@lists.openwall.com

* Simon McVittie <smcv@debian.org>, 2016-02-24, 07:01:
>>>Just for the record, pt_chown is not enabled by default in upstream 
>>>glibc starting with glibc-2.18, one has to specify --enable-pt_chown 
>>>configure option explicitly to build pt_chown.
>>
>>Thanks for that information. So for pt_chown, this could hopefully be 
>>just an Ubuntu issue.
>
>And Debian 8 (but not the future Debian 9, at least on Linux kernels), 
>and probably other distributions where backward compat was a concern.
>
><https://bugs.debian.org/717544> has some interesting background. The 
>Debian and Ubuntu glibc maintainers tried turning off pt_chown in 2014, 
>but had to turn it back on because it caused too many regressions: in 
>particular "mount -t devpts devpts-foo chroot-foo/dev/pts" apparently 
>alters the mount options for the "real" /dev/pts, not just the one 
>being mounted in the chroot (presumably losing the noexec,nosuid,gid=5 
>and mode=620 or mode=600 options that are expected in Debian). I don't 
>know whether the default mount options were subsequently altered in 
>util-linux and/or the kernel as suggested on that bug, or whether 
>manually mounting devpts is just not going to be a supported action in 
>Debian 9.

grantpt() was fixed so that it works even when /dev/pts mount options 
are "wrong":
https://sourceware.org/ml/libc-alpha/2015-12/msg00151.html

This is going to be backported to Debian 8 (jessie):
https://bugs.debian.org/816023

-- 
Jakub Wilk
