X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3518" "Saturday" "13" "February" "2016" "17:11:02" "+0300" "Yuriy M. Kaminskiy" "yumkam@gmail.com" "<m3k2m8d7k9.fsf@gmail.com>" "107" "[oss-security] snprintf return value misuse in a lot of projects" "^Date:" nil nil "2" "2016021314:11:02" "[oss-security] snprintf return value misuse in a lot of projects" (number mark "        yumkam@gmail Feb 13  107/3518  " thread-indent "\"[oss-security] snprintf return value misuse in a lot of projects\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13562 invoked by uid 550); 13 Feb 2016 14:15:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13488 invoked from network); 13 Feb 2016 14:15:17 -0000
X-Injected-Via-Gmane: http://gmane.org/
Message-ID: <m3k2m8d7k9.fsf@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: ppp37-190-56-5.pppoe.spdop.ru
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.4 (gnu/linux)
Cancel-Lock: sha1:6HYjkWn8E8CCA97pnYP7LQspcwg=
Date: Sat, 13 Feb 2016 17:11:02 +0300
From: yumkam@gmail.com (Yuriy M. Kaminskiy)
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] snprintf return value misuse in a lot of projects
To: oss-security@lists.openwall.com

Hello!

Not sure if this is right place (feel free to forward elsewhere), but
this may be important:

I noticed dangerous pattern in a lot of projects, where snprintf(3)
return value is used without checking, with potentially disasterous
consequences:

   p += snprintf(p, end-p,[....]);
   *p++ = '\n';

or

   len = snprintf(p, [...]);
   write(fd, p, len);

and alike.

When formatted string will overflow supplied buffer, or some error
happens, snprintf() returns value *LARGER* (or equal) than buffer size,
or -1.

Obviously, in above patterns this would end up in disaster - with DoS or
host memory exposure at minimum (2nd) and buffer overflow with
possible code execution (1st).

And there are yet another very common pattern:

  p += snprintf(p, end-p,[....]);
  p += snprintf(p, end-p,[....]);
  p += snprintf(p, end-p,[....]);
  ...
  
which may be 'barely safe' by posix (if you'd read `man 3posix snprintf`,
you'd expect 2nd line is [somewhat] safe (end-p is negative, then
casted to size_t and produce value larger than (size_t)INT_MAX, that
should result in error EOVERFLOW), and third and following will dance
around last byte, likely remaining safe), but it is TOTALLY
broken on glibc, as glibc's snprintf DOES NOT follow posix, and accepts
*any* size.

So, that's again buffer overflow with possible code execution.

BTW, somewhat safer variant of above code:
     p += snprintf(p, end-p, "%s", str);
     if(p >=end) {...}
or
     p += snprintf(p, min(end-p, 0), "%s", str);

(with check after each snprintf) is not completely safe either: imagine
32-bit machine,

     p  =(char*)0xfffffff0;
     end=(char*)0xfffffff5;
     str="11111111111111111111111";

(that said, I doubt it is practically exploitable in most cases).

Safe variants: (verbose)

     char *p = buf;
     char *end = buf + sizeof(buf);
     ...
     int rc = snprintf(p, end-p,...);
     if (rc < 0) {
          /* return -errno; assert(rc >= 0);... handle error, optional */;
          /* or safely *do nothing*; most importantly: don't advance pointer! */
     } else if (rc >= end-p) {
          /* return -EOVERFLOW; assert(rc < end-p);... handle overflow, optional */;
          p = end; /* move next pointer to end of buffer, mandatory for NDEBUG */
     } else {
          /* normal case */
          p += rc;
     }
     ...
     if (p == end) { /* maybe handle overflow once in the end */ }
     
or (minimized):

     int n = 0;
     ...
     int rc = snprintf(buf+n, sizeof(buf)-n,...);
     /* ignores errors and handles overflows in a safe way */
     n += min(sizeof(buf)-n, max(0, rc));
     ...
     if (n == sizeof(buf)) { /* maybe handle overflow once in the end */ }

Quick search on https://codesearch.debian.net/ shows over 500 cases of
definite misuse ( [-+]=\s*v?snprintf ) and 2 times more of code that
requires review ( [=]\s*v?snprintf ).


P.S. That said, in most cases, the use of sprintf->snprintf replacement was
pure cargo cult, buffer size was sufficient to fit any possible string,
overflow can never happen, and this flaw is not really exploitable. (And
it makes whole expedition on fixing those bugs rather boring thing).

However, in some cases overflow possible and exploitable (there were
reason why people tried to replace sprintf with snprintf, right?).


P.P.S. I often found similar sequences in formatting logging code
(vsnprintf); if you can remotely feed oversized log entry (typical limit
is 1k or 4k), and there are one of above dangerous patterns, then it is
likely exploitable.

