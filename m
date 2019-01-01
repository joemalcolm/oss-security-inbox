X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1118" "Tuesday" "1" "January" "2019" "13:52:38" "+0000" "halfdog" "me@halfdog.net" "<2308-1546350758.537839@jIRr.Wi7S.U1Lk>" "40" "Re: [oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" "^Date:" nil nil "1" "2019010113:52:38" "[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" (number mark "        me@halfdog.n Jan  1   40/1118  " thread-indent "\"Re: [oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)\"\n") "<20190101124110.GA15804@espresso.pseudorandom.co.uk>" ("<CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>" "<nn5zv8prfe.fsf@armitage.lysator.liu.se>" "<20190101124110.GA15804@espresso.pseudorandom.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28268 invoked by uid 550); 1 Jan 2019 13:59:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28250 invoked from network); 1 Jan 2019 13:59:08 -0000
In-reply-to: <20190101124110.GA15804@espresso.pseudorandom.co.uk>
References: <CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com> <nn5zv8prfe.fsf@armitage.lysator.liu.se> <20190101124110.GA15804@espresso.pseudorandom.co.uk>
Comments: In-reply-to Simon McVittie <smcv@debian.org>
   message dated "Tue, 01 Jan 2019 12:41:10 +0000."
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Message-ID: <2308-1546350758.537839@jIRr.Wi7S.U1Lk>
Date: Tue, 01 Jan 2019 13:52:38 +0000
From: halfdog <me@halfdog.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)
To: oss-security@lists.openwall.com

Simon McVittie writes:
> On Tue, 01 Jan 2019 at 12:07:17 +0100, Niels Möller wrote:
> ...
>
> Some processes (including those that are setuid or setgid,
> I think?) are automatically undumpable.

This is not true and depends on your "/proc/sys/fs/suid_dumpable"
settings, see [0]. Especially "2" was intended to capture cores
from SUIDs also, e.g. together with systemd-coredump.


To test your SUID-coredump behaviour, you can use NullExec.c
from below. It quite reliable segfaults many SUID binaries. The
argv -> env trickery is useful as some binaries (e.g. crontab)
overread the gap between argv/env on stack so start processing
environment variables as argvs, thus circumventing any IDS/IPS
depending on correct checking of execve()'s call arguments.

$ ./NullExec /bin/su

hd

[0] https://github.com/torvalds/linux/blob/master/Documentation/sysctl/fs.txt

$ cat NullExec.c 
#define _GNU_SOURCE
#include <stdio.h>
#include <unistd.h>

int main(int argc, char **argv) {
  if(argc<2) {
    fprintf(stderr, "Usage: %s [progname] [envvars...]\n");
    return(1);
  }
  execve(argv[1], NULL, argv+2);
  return(1);
}


