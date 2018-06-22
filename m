X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1627" "Friday" "22" "June" "2018" "16:16:05" "+0200" "Solar Designer" "solar@openwall.com" "<20180622141604.GA20634@openwall.com>" "49" "Re: [oss-security] Intel hyper-threading security issues" "^Cc:" nil nil "6" "2018062214:16:05" "[oss-security] Intel hyper-threading security issues" (number mark "        solar@openwa Jun 22   49/1627  " thread-indent "\"Re: [oss-security] Intel hyper-threading security issues\"\n") "<87vaabea58.fsf@concordia.ellerman.id.au>" ("<CAOp4FwSEi=_bNCMoiK66r4Y2QQToJgZyBjUX74s0omQ+whCS-w@mail.gmail.com>" "<20180621045642.fy67joeaxu2n4j56@sivokote.iziade.m$>" "<20180621093754.GY53290@symphytum.spacehopper.org>" "<CABob6iqkc7x7awz-aMAb-yOHWKdWgnQF0rkPYdporiUmGCkc5Q@mail.gmail.com>" "<CABob6iqHuN+tVuxf9ibUh6Xx=j4AChRNygMXzR0nHcr1ogUtmA@mail.gmail.com>" "<718d05e5-3057-7c32-da9a-70bc5a82e3f5@tao.at>" "<20180621125049.GA14978@openwall.com>" "<87vaabea58.fsf@concordia.ellerman.id.au>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32189 invoked by uid 550); 22 Jun 2018 14:16:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30522 invoked from network); 22 Jun 2018 14:16:14 -0000
Message-ID: <20180622141604.GA20634@openwall.com>
References: <CAOp4FwSEi=_bNCMoiK66r4Y2QQToJgZyBjUX74s0omQ+whCS-w@mail.gmail.com> <20180621045642.fy67joeaxu2n4j56@sivokote.iziade.m$> <20180621093754.GY53290@symphytum.spacehopper.org> <CABob6iqkc7x7awz-aMAb-yOHWKdWgnQF0rkPYdporiUmGCkc5Q@mail.gmail.com> <CABob6iqHuN+tVuxf9ibUh6Xx=j4AChRNygMXzR0nHcr1ogUtmA@mail.gmail.com> <718d05e5-3057-7c32-da9a-70bc5a82e3f5@tao.at> <20180621125049.GA14978@openwall.com> <87vaabea58.fsf@concordia.ellerman.id.au>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87vaabea58.fsf@concordia.ellerman.id.au>
User-Agent: Mutt/1.4.2.3i
Cc: oss-security@lists.openwall.com
Date: Fri, 22 Jun 2018 16:16:05 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Intel hyper-threading security issues
To: Michael Ellerman <mpe@ellerman.id.au>

On Fri, Jun 22, 2018 at 02:08:03PM +1000, Michael Ellerman wrote:
> Solar Designer <solar@openwall.com> writes:
> > you can obtain the needed information from /proc/cpuinfo or
> > /sys/devices/system/cpu/cpu*/topology/* to choose which logical CPUs you
> > disable (so that you leave only one per physical core).
> >
> > On a related note, attached is a generic Linux /proc/cpuinfo parser
> 
> I guess by "generic" you mean Intel & AMD? :)

Actually, I meant not making any assumptions about the ordering of
logical CPUs, which I saw vary even between similar systems.  But you're
right - this is x86-specific - should work on Linux kernels built for
i686, x86_64, k1om (aka MIC), tested starting with RHEL5'ish systems.
The sysfs approach is probably preferable.

> It won't work on powerpc, or arm, or arm64 ...
> 
> You should be able to determine all of the info you need from the sysfs
> topology files, which work across arches.
> 
> See the script below for example, which shows CPUs grouped by core.

Thanks.  FWIW, your script does indeed work fine on GCC Compile Farm's
POWER7 box running CentOS 7.4:

[solar@gcc1-power7 ~]$ ./cpu.py
0: 0, 1, 2, 3
4: 4, 5, 6, 7
8: 8, 9, 10, 11
12: 12, 13, 14, 15
16: 16, 17, 18, 19
20: 20, 21, 22, 23
24: 24, 25, 26, 27
28: 28, 29, 30, 31
32: 32, 33, 34, 35
36: 36, 37, 38, 39
40: 40, 41, 42, 43
44: 44, 45, 46, 47
48: 48, 49, 50, 51
52: 52, 53, 54, 55
56: 56, 57, 58, 59
60: 60, 61, 62, 63

This is consistent with my benchmarks of different thread affinity
settings on that box (e.g., "GOMP_CPU_AFFINITY=0-63:4
OMP_NUM_THREADS=16" to use one thread per core in OpenMP).

Alexander
