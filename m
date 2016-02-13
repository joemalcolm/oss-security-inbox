X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2354" "Saturday" "13" "February" "2016" "19:51:04" "+0300" "Alexander Cherepanov" "ch3root@openwall.com" "<56BF5EF8.7070203@openwall.com>" "58" "Re: [oss-security] snprintf return value misuse in a lot of projects" "^Date:" nil nil "2" "2016021316:51:04" "[oss-security] snprintf return value misuse in a lot of projects" (number mark "        ch3root@open Feb 13   58/2354  " thread-indent "\"Re: [oss-security] snprintf return value misuse in a lot of projects\"\n") "<m3k2m8d7k9.fsf@gmail.com>" ("<m3k2m8d7k9.fsf@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12274 invoked by uid 550); 13 Feb 2016 16:51:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12256 invoked from network); 13 Feb 2016 16:51:16 -0000
References: <m3k2m8d7k9.fsf@gmail.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <56BF5EF8.7070203@openwall.com>
MIME-Version: 1.0
In-Reply-To: <m3k2m8d7k9.fsf@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Date: Sat, 13 Feb 2016 19:51:04 +0300
From: Alexander Cherepanov <ch3root@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] snprintf return value misuse in a lot of projects
To: oss-security@lists.openwall.com

On 2016-02-13 17:11, Yuriy M. Kaminskiy wrote:
> I noticed dangerous pattern in a lot of projects, where snprintf(3)
> return value is used without checking, with potentially disasterous
> consequences:

It's kinda a known. E.g., some such patterns are listed in 
https://sourceware.org/ml/libc-alpha/2013-10/msg00686.html .

The same problem is with strlcpy.

> And there are yet another very common pattern:
>
>    p += snprintf(p, end-p,[....]);
>    p += snprintf(p, end-p,[....]);
>    p += snprintf(p, end-p,[....]);
>    ...
>
> which may be 'barely safe' by posix (if you'd read `man 3posix snprintf`,
> you'd expect 2nd line is [somewhat] safe (end-p is negative, then
> casted to size_t and produce value larger than (size_t)INT_MAX, that
> should result in error EOVERFLOW), and third and following will dance
> around last byte, likely remaining safe), but it is TOTALLY
> broken on glibc, as glibc's snprintf DOES NOT follow posix, and accepts
> *any* size.

For a glibc discussion please see 
https://sourceware.org/bugzilla/show_bug.cgi?id=14771 .

As for POSIX, the requirement of EOVERFLOW for a big second parameter is 
a (rejected) bug in POSIX -- http://austingroupbugs.net/view.php?id=761 
. A closely related bug -- http://austingroupbugs.net/view.php?id=1020 .

ISO C describes the size parameter of snprintf as a limit to the number 
of output characters written, without any connections to the size of the 
buffer. Thus, the following examples are valid in ISO C:

   char s[10];
   snprintf(s, 20, "abc");
   snprintf(s, SIZE_MAX, "%s", "abc");

OTOH POSIX describes the size parameter as the actual size of the buffer 
(bug 1020) and requires to reject buffers of size larger than INT_MAX 
(bug 761).

Even though POSIX contradicts ISO C in this question (while formally 
deferring to ISO C) there is a sentiment that the POSIX approach is 
better for safety/security. (E.g., it was expressed during the recent 
discussion about strlcpy/strlcat in the glibc mailing list.)

As it turned out, the same problem affects the fread function, with the 
Linux kernel instead of POSIX contradicting ISO C. See 
https://sourceware.org/bugzilla/show_bug.cgi?id=19165 and 
https://sourceware.org/ml/libc-alpha/2016-02/msg00274.html .

Perhaps this is a topic that will benefit from input from a wider community.

-- 
Alexander Cherepanov
