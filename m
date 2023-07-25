Received: (qmail 3725 invoked by uid 550); 25 Jul 2023 08:58:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19499 invoked from network); 25 Jul 2023 01:28:04 -0000
Date: Tue, 25 Jul 2023 11:27:48 +1000
From: Jonathan Gray <jsg@jsg.id.au>
To: oss-security@lists.openwall.com
Message-ID: <ZL8lFPN2e+6jX5HH@largo.jsg.id.au>
References: <ZL6Kgih+pRaeA2e/@thinkstation.cmpxchg8b.net>
 <43f83e16-e492-4540-b34d-d2b51da2bb74@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <43f83e16-e492-4540-b34d-d2b51da2bb74@canonical.com>
Subject: Re: [oss-security] CVE-2023-20593: A use-after-free in AMD Zen2
 Processors

On Mon, Jul 24, 2023 at 01:41:36PM -0400, Marc Deslauriers wrote:
> Hi,
> 
> There seems to be confusion regarding which is the correct commit:
> 
> Your blog post says it's 0bc3126c9cfa0b8c761483215c25382f831a7c6f which is
> for family 17h.
> 
> This post says it's b250b32ab1d044953af2dc5e790819a7703b7ee6 which is for
> family 19h.
> 
> I assume the 17h family one is the correct one?
> 
> Thanks,
> 
> Marc.

Yes, but it by no means covers all zen 2 models.  See amd-ucode/README

  Family=0x17 Model=0x31 Stepping=0x00: Patch=0x0830107a Length=3200 bytes
  Family=0x17 Model=0xa0 Stepping=0x00: Patch=0x08a00008 Length=3200 bytes

17-31-00 Rome/Castle Peak	0x0830107a
17-a0-00 Mendocino		0x08a00008

Models missing include:

17-60-01 Renoir			0x0860010b
17-68-01 Lucienne		0x08608105
17-71-00 Matisse		0x08701032
17-90-02 Van Gogh

The known good patch levels are used by xen and linux.  But the
microcode for Renoir, Lucienne and Matisse is not available as far as
I can tell.
