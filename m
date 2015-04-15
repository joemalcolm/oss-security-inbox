X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1442" "Wednesday" "15" "April" "2015" "17:23:59" "+0200" "Florian Weimer" "fweimer@redhat.com" "<552E828F.9020600@redhat.com>" "40" "Re: [oss-security] Problems in automatic crash analysis frameworks" nil nil nil "4" "2015041515:23:59" "[oss-security] Problems in automatic crash analysis frameworks" (number mark "        fweimer@redh Apr 15   40/1442  " thread-indent "\"Re: [oss-security] Problems in automatic crash analysis frameworks\"\n") "<CAJ_zFkJw7hNxGp0PNmQbH0suVwfkgzbCsvs2Sv1OdxD+UBiraw@mail.gmail.com>" ("<CAJ_zFkJw7hNxGp0PNmQbH0suVwfkgzbCsvs2Sv1OdxD+UBiraw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11740 invoked by uid 550); 15 Apr 2015 15:24:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11719 invoked from network); 15 Apr 2015 15:24:13 -0000
Message-ID: <552E828F.9020600@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <CAJ_zFkJw7hNxGp0PNmQbH0suVwfkgzbCsvs2Sv1OdxD+UBiraw@mail.gmail.com>
In-Reply-To: <CAJ_zFkJw7hNxGp0PNmQbH0suVwfkgzbCsvs2Sv1OdxD+UBiraw@mail.gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Date: Wed, 15 Apr 2015 17:23:59 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Problems in automatic crash analysis frameworks
To: oss-security@lists.openwall.com

On 04/14/2015 03:30 PM, Tavis Ormandy wrote:

> This code trusts the /proc/pid/exe symlink, even though it is possible
> to link it anywhere you want.
> 
> https://github.com/abrt/abrt/blob/master/src/hooks/abrt-hook-ccpp.c#L368
> 
>         sprintf(buf, "/proc/%lu/exe", (long)pid);
>         int src_fd_binary = open(buf, O_RDONLY); /* might fail and
> return -1, it's ok */

Does opening /proc/PID/exe really perform symlink resolution?  Or does
the kernel create temporary /proc/PID entries for non-executable file?
But how would this trigger the

This feature is supposedly disabled by default.  As far as I can see, it
can disclose the program text of execute-only binaries to users, which
has been treated as a vulnerability in the past.


Upstream has posted patches for some of the vulnerabilities:

  <https://github.com/abrt/abrt/pull/950>
  <https://github.com/abrt/libreport/pull/343>

There's still some debate how to best address the creation of the
user-owned directory.  My proposal is to change from root:root to
user:abrt as late as possible.

(The Hotspot crash dump copying is disabled in the sources, so no patch
for that is planned right now.)

We also need to move off the /var/tmp/abrt directory (the code for
creating the directory looks racy), back to /var/spool/abrt.

I have not looked at how directory creation is handled for the other
crash handlers (say Python).

-- 
Florian Weimer / Red Hat Product Security
