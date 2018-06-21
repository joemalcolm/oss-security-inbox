X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6804" "Thursday" "21" "June" "2018" "14:50:49" "+0200" "Solar Designer" "solar@openwall.com" "<20180621125049.GA14978@openwall.com>" "238" "Re: [oss-security] Intel hyper-threading security issues" "^Date:" nil nil "6" "2018062112:50:49" "[oss-security] Intel hyper-threading security issues" (number mark "        solar@openwa Jun 21  238/6804  " thread-indent "\"Re: [oss-security] Intel hyper-threading security issues\"\n") "<718d05e5-3057-7c32-da9a-70bc5a82e3f5@tao.at>" ("<CAOp4FwSEi=_bNCMoiK66r4Y2QQToJgZyBjUX74s0omQ+whCS-w@mail.gmail.com>" "<20180621045642.fy67joeaxu2n4j56@sivokote.iziade.m$>" "<20180621093754.GY53290@symphytum.spacehopper.org>" "<CABob6iqkc7x7awz-aMAb-yOHWKdWgnQF0rkPYdporiUmGCkc5Q@mail.gmail.com>" "<CABob6iqHuN+tVuxf9ibUh6Xx=j4AChRNygMXzR0nHcr1ogUtmA@mail.gmail.com>" "<718d05e5-3057-7c32-da9a-70bc5a82e3f5@tao.at>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30207 invoked by uid 550); 21 Jun 2018 12:52:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24333 invoked from network); 21 Jun 2018 12:51:00 -0000
Message-ID: <20180621125049.GA14978@openwall.com>
References: <CAOp4FwSEi=_bNCMoiK66r4Y2QQToJgZyBjUX74s0omQ+whCS-w@mail.gmail.com> <20180621045642.fy67joeaxu2n4j56@sivokote.iziade.m$> <20180621093754.GY53290@symphytum.spacehopper.org> <CABob6iqkc7x7awz-aMAb-yOHWKdWgnQF0rkPYdporiUmGCkc5Q@mail.gmail.com> <CABob6iqHuN+tVuxf9ibUh6Xx=j4AChRNygMXzR0nHcr1ogUtmA@mail.gmail.com> <718d05e5-3057-7c32-da9a-70bc5a82e3f5@tao.at>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="X1bOJ3K7DJ5YkBrT"
Content-Disposition: inline
In-Reply-To: <718d05e5-3057-7c32-da9a-70bc5a82e3f5@tao.at>
User-Agent: Mutt/1.4.2.3i
Date: Thu, 21 Jun 2018 14:50:49 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Intel hyper-threading security issues
To: oss-security@lists.openwall.com

--X1bOJ3K7DJ5YkBrT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jun 21, 2018 at 01:54:16PM +0200, Sven Schwedas wrote:
> On 2018-06-21 12:28, Lukas Odzioba wrote:
> > Or use cpu hotplug mechanism, which should be way more convenient:
> > https://www.kernel.org/doc/html/v4.17/core-api/cpu_hotplug.html
> 
> Hotplug doesn't seem differentiate between HT threads and physical
> cores,

This isn't exactly the question to ask: first vs. second thread in a
core aren't any different, neither of them is "the physical core" unless
you choose not to use the other.

And you can obtain the needed information from /proc/cpuinfo or
/sys/devices/system/cpu/cpu*/topology/* to choose which logical CPUs you
disable (so that you leave only one per physical core).

On a related note, attached is a generic Linux /proc/cpuinfo parser I
wrote a couple of years ago for SMT-aware thread affinity settings in a
userspace program.  This can be used e.g. by a program not wanting to
run trusted vs. untrusted threads on the same physical core, or on the
same physical CPU chip if there's more than one.  It can also be used
for performance optimization.  Please feel free to reuse.

> will setting maxcpus=2 on a 2 cores+HT machine reliably disable
> HT, or can it disable one core and keep HT active on the other?

The latter.  It's not reliable, except maybe on a specific machine with
a specific kernel version.

Alexander

--X1bOJ3K7DJ5YkBrT
Content-Type: text/x-c; charset=us-ascii
Content-Disposition: attachment; filename="cpuinfo.h"

/*
 * Copyright 2016 Alexander Peslyak
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 */

#include <stdint.h>

#define CPUINFO_LOGICAL_MAX 1024
#define CPUINFO_CHIP_MAX 16
#define CPUINFO_CORE_MAX 256

typedef struct {
	struct {
		uint32_t chip, core, seq;
	} log2phy[CPUINFO_LOGICAL_MAX];
	uint32_t phy2log[CPUINFO_CHIP_MAX][CPUINFO_CORE_MAX];
	uint32_t logical, physical;
} cpuinfo_t;

extern cpuinfo_t cpuinfo;

extern int cpuinfo_init(void);

--X1bOJ3K7DJ5YkBrT
Content-Type: text/x-c; charset=us-ascii
Content-Disposition: attachment; filename="cpuinfo.c"

/*
 * Copyright 2016 Alexander Peslyak
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 */

#include <inttypes.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>

#include "cpuinfo.h"

cpuinfo_t cpuinfo;

#define PROC_LINE_MAX 1024

int cpuinfo_init(void)
{
	const char *filename = "/proc/cpuinfo";
	FILE *f = fopen(filename, "r");
	if (!f) {
		fprintf(stderr, "fopen: %s: %s\n", filename, strerror(errno));
		return -1;
	}

	const char *errmsg = NULL;
	int retval = -1;
	uint64_t linenum = 0;
	char line[PROC_LINE_MAX];
	char name[PROC_LINE_MAX];
	uint32_t value;

	memset(&cpuinfo, -1, sizeof(cpuinfo));
	int32_t i = -1;

	while (fgets(line, sizeof(line), f)) {
		linenum++;
		char *p = line + strlen(line);
		if (p > line)
			p--;
		if (p >= line + sizeof(line) - 2) {
			errmsg = "line too long";
			goto out;
		} else if (*p != '\n') {
			errmsg = "no linefeed";
			goto out;
		}

		sscanf(line, "%[^\t]\t: %" SCNu32 "\n", name, &value);

		if (!strcmp(name, "processor")) {
			if (value != ++i) {
				errmsg = "unexpected logical processor number";
				goto out;
			}
			if (i >= CPUINFO_LOGICAL_MAX) {
				errmsg = "too many logical processors";
				goto out;
			}
		}
		if (!strcmp(name, "physical id")) {
			if (i == -1) {
				errmsg = "physical id without processor";
				goto out;
			}
			if (value >= CPUINFO_CHIP_MAX) {
				errmsg = "physical id too large";
				goto out;
			}
			if (cpuinfo.log2phy[i].chip != (uint32_t)-1) {
				errmsg = "duplicate physical id for processor";
				goto out;
			}
			cpuinfo.log2phy[i].chip = value;
		}
		if (!strcmp(name, "core id")) {
			if (i == -1) {
				errmsg = "core id without processor";
				goto out;
			}
			if (value >= CPUINFO_CORE_MAX) {
				errmsg = "core id too large";
				goto out;
			}
			if (cpuinfo.log2phy[i].core != (uint32_t)-1) {
				errmsg = "duplicate core id for processor";
				goto out;
			}
			cpuinfo.log2phy[i].core = value;
		}
	}

	if (i == -1) {
		errmsg = "no logical processors found";
		goto out;
	}

	cpuinfo.logical = ++i;

	uint32_t j;
	for (i = j = 0; i < cpuinfo.logical; i++) {
		if (cpuinfo.log2phy[i].chip == (uint32_t)-1) {
			errmsg = "no physical id for a logical processor";
			goto out;
		}
		if (cpuinfo.log2phy[i].core == (uint32_t)-1) {
			errmsg = "no core id for a logical processor";
			goto out;
		}
		uint32_t *p2l = &cpuinfo.phy2log
		    [cpuinfo.log2phy[i].chip][cpuinfo.log2phy[i].core];
		if (*p2l == (uint32_t)-1) {
			*p2l = i;
			cpuinfo.log2phy[i].seq = j++;
		} else {
			cpuinfo.log2phy[i].seq = cpuinfo.log2phy[*p2l].seq;
		}
	}

	cpuinfo.physical = j;

	if (ferror(f))
		perror("fgets");
	else
		retval = 0;

out:
	if (errmsg)
		fprintf(stderr, "Error: %s line %" PRIu64 ": %s\n",
		    filename, linenum, errmsg);
	if (fclose(f))
		perror("fclose");

	if (!retval) {
		printf("Found %" PRIu32 " logical processors across %" PRIu32
		    " physical cores\n", cpuinfo.logical, cpuinfo.physical);
	}

	return retval;
}

--X1bOJ3K7DJ5YkBrT--
