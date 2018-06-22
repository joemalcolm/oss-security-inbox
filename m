X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1516" "Friday" "22" "June" "2018" "14:08:03" "+1000" "Michael Ellerman" "mpe@ellerman.id.au" "<87vaabea58.fsf@concordia.ellerman.id.au>" "45" "Re: [oss-security] Intel hyper-threading security issues" "^Date:" nil nil "6" "2018062204:08:03" "[oss-security] Intel hyper-threading security issues" (number mark "        mpe@ellerman Jun 22   45/1516  " thread-indent "\"Re: [oss-security] Intel hyper-threading security issues\"\n") "<20180621125049.GA14978@openwall.com>" ("<CAOp4FwSEi=_bNCMoiK66r4Y2QQToJgZyBjUX74s0omQ+whCS-w@mail.gmail.com>" "<20180621045642.fy67joeaxu2n4j56@sivokote.iziade.m$>" "<20180621093754.GY53290@symphytum.spacehopper.org>" "<CABob6iqkc7x7awz-aMAb-yOHWKdWgnQF0rkPYdporiUmGCkc5Q@mail.gmail.com>" "<CABob6iqHuN+tVuxf9ibUh6Xx=j4AChRNygMXzR0nHcr1ogUtmA@mail.gmail.com>" "<718d05e5-3057-7c32-da9a-70bc5a82e3f5@tao.at>" "<20180621125049.GA14978@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27847 invoked by uid 550); 22 Jun 2018 10:20:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26361 invoked from network); 22 Jun 2018 04:08:19 -0000
Authentication-Results: ozlabs.org; dmarc=none (p=none dis=none) header.from=ellerman.id.au
In-Reply-To: <20180621125049.GA14978@openwall.com>
References: <CAOp4FwSEi=_bNCMoiK66r4Y2QQToJgZyBjUX74s0omQ+whCS-w@mail.gmail.com> <20180621045642.fy67joeaxu2n4j56@sivokote.iziade.m$> <20180621093754.GY53290@symphytum.spacehopper.org> <CABob6iqkc7x7awz-aMAb-yOHWKdWgnQF0rkPYdporiUmGCkc5Q@mail.gmail.com> <CABob6iqHuN+tVuxf9ibUh6Xx=j4AChRNygMXzR0nHcr1ogUtmA@mail.gmail.com> <718d05e5-3057-7c32-da9a-70bc5a82e3f5@tao.at> <20180621125049.GA14978@openwall.com>
Message-ID: <87vaabea58.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain
Date: Fri, 22 Jun 2018 14:08:03 +1000
From: Michael Ellerman <mpe@ellerman.id.au>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Intel hyper-threading security issues
To: Solar Designer <solar@openwall.com>, oss-security@lists.openwall.com

Solar Designer <solar@openwall.com> writes:
> On Thu, Jun 21, 2018 at 01:54:16PM +0200, Sven Schwedas wrote:
>> On 2018-06-21 12:28, Lukas Odzioba wrote:
>> > Or use cpu hotplug mechanism, which should be way more convenient:
>> > https://www.kernel.org/doc/html/v4.17/core-api/cpu_hotplug.html
>> 
>> Hotplug doesn't seem differentiate between HT threads and physical
>> cores,
>
> This isn't exactly the question to ask: first vs. second thread in a
> core aren't any different, neither of them is "the physical core" unless
> you choose not to use the other.
>
> And you can obtain the needed information from /proc/cpuinfo or
> /sys/devices/system/cpu/cpu*/topology/* to choose which logical CPUs you
> disable (so that you leave only one per physical core).
>
> On a related note, attached is a generic Linux /proc/cpuinfo parser I

I guess by "generic" you mean Intel & AMD? :)

It won't work on powerpc, or arm, or arm64 ...

You should be able to determine all of the info you need from the sysfs
topology files, which work across arches.

See the script below for example, which shows CPUs grouped by core.

cheers


#!/usr/bin/python3

import os
import glob

by_core = {}

for path in glob.iglob('/sys/devices/system/cpu/cpu*/topology/core_id'):
    num = int(path.split('/')[5].replace('cpu', ''))
    core_id = int(open(path).read(), 10)
    by_core.setdefault(core_id, []).append(num)

for core in sorted(by_core.keys()):
    print('%d: %s' % (core, ', '.join([str(s) for s in sorted(by_core[core])])))
