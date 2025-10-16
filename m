Received: (qmail 1886 invoked by uid 550); 16 Oct 2025 23:01:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1391 invoked from network); 16 Oct 2025 23:01:20 -0000
Date: Fri, 17 Oct 2025 01:01:08 +0200
From: Solar Designer <solar@openwall.com>
To: lunbun <lunbun021@gmail.com>
Cc: oss-security@lists.openwall.com
Message-ID: <20251016230108.GA18468@openwall.com>
References: <CAMqWyhi=xW2sq2+Hb2aJ=ta-zfi_Zay6CztQ9mvDqgjbKr1HpQ@mail.gmail.com> <a7169751-2b66-4123-b2b5-09e35623ff80@gmail.com> <CAMqWyhhFgATrYJtxFP-hGLR3FN2XhnvZLHVyNtxpWdAp6fFJNQ@mail.gmail.com> <5d16e4d9-a25d-4b5e-946b-4c5243a54bcb@gmail.com> <CAMqWyhgUK+4dW=jxztFYopDxv5apLYsGcWN=1sbfHmmUfePduw@mail.gmail.com> <aJxWPAv5ew3BCm+O@adhil> <CAMqWyhgY=k3h8mKmjPiy-K6mBHjmjW_gMbJ+yn9H=YLyKKHrsA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMqWyhgY=k3h8mKmjPiy-K6mBHjmjW_gMbJ+yn9H=YLyKKHrsA@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2025-55188: 7-Zip: Arbitrary file write on extraction, may lead to code execution

Hi,

It's another case where I was hoping someone else would reply, but since
no one did, I do.

On Sun, Oct 12, 2025 at 03:59:27PM -0700, lunbun wrote:
> Does anyone know how might I get the CVSS score of this vulnerability
> (CVE-2025-55188) increased?

CVSS scores don't exist on their own - they're computed from CVSS
vectors.  So you need to suggest and justify a certain CVSS vector.
Please refer to CVSS specification documents and examples from FIRST:

https://www.first.org/cvss/v3-1/

> I recently saw an advisory for CVE-2025-11001, a very similar
> arbitrary file write in 7-Zip due to symbolic links
> (https://www.zerodayinitiative.com/advisories/ZDI-25-949/).

I actually care more about bringing vulnerability detail in here than
about CVSS scores, so let me quote the above as if you did:

> > October 7th, 2025
> > 7-Zip ZIP File Parsing Directory Traversal Remote Code Execution Vulnerability
> > ZDI-25-949
> > ZDI-CAN-26753
> > CVE ID 	CVE-2025-11001
> > CVSS SCORE 	7.0, AV:L/AC:H/PR:N/UI:R/S:U/C:H/I:H/A:H
> > AFFECTED VENDORS 	7-Zip
> > AFFECTED PRODUCTS 	7-Zip
> > VULNERABILITY DETAILS 	
> > 
> > This vulnerability allows remote attackers to execute arbitrary code on affected installations of 7-Zip. Interaction with this product is required to exploit this vulnerability but attack vectors may vary depending on the implementation.
> > 
> > The specific flaw exists within the handling of symbolic links in ZIP files. Crafted data in a ZIP file can cause the process to traverse to unintended directories. An attacker can leverage this vulnerability to execute code in the context of a service account.
> > ADDITIONAL DETAILS 	
> > 
> > Fixed in 7-Zip 25.00
> > 
> > DISCLOSURE TIMELINE 	
> > 
> >     2025-05-02 - Vulnerability reported to vendor
> >     2025-10-07 - Coordinated public release of advisory
> >     2025-10-07 - Advisory Updated
> > 
> > CREDIT 	Ryota Shiga (GMO Flatt Security Inc.) with takumi-san.ai

> However, CVE-2025-11001 is clearly different from CVE-2025-55188,
> as the advisory states that CVE-2025-11001 was patched in 25.00.
> My proof-of-concept symbolic link attack for CVE-2025-55188 works in
> version 25.00.
> 
> I am concerned that due to the low CVSS score of CVE-2025-55188, most users
> do not realize that 25.00 is still vulnerable to symbolic link attacks.
> 
> I've already tried contacting MITRE 8 times to update the description
> and CVSS score. I've only received one response, and that was that
> not enough public information was available.
> 
> I then published a proof-of-concept and vulnerability explanation
> (https://github.com/lunbun/CVE-2025-55188 and
> https://lunbun.dev/blog/cve-2025-55188/), but MITRE is still unresponsive
> to my update requests.
> 
> I suspect that MITRE is just busy with a huge backlog of CVE requests,
> but I am not sure what to do here. If anyone could offer any advice,
> I'd greatly appreciate it.

Yes, I suspect they're just busy.

There isn't any one authoritative source for CVSS scores.  In fact,
there are often different/conflicting CVSS scores (and their
corresponding different CVSS vectors) coming from different sources.

In this case, for CVE-2025-55188 the only score published by NVD is in
fact coming from MITRE, and it is:

3.6, CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:C/C:N/I:L/A:N

As to CVE-2025-11001, it is "reserved by a CNA" and not yet published,
so the higher score of 7.0 (which I've confirmed does match the vector)
remains ZDI's suggestion.  You can also make your suggestion e.g. in
this thread and in your blog - and it'd have similar (lack of) effect.

I hope this helps.

Alexander
