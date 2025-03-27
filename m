Received: (qmail 11959 invoked by uid 550); 27 Mar 2025 00:28:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9890 invoked from network); 27 Mar 2025 00:28:35 -0000
Date: Thu, 27 Mar 2025 01:28:04 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20250327002804.GA8729@openwall.com>
References: <20250326230703.GA7131@openwall.com> <d33e63e7-0b29-44b6-ba50-e53f1958d2f7@oracle.com> <833e90b2-db52-4939-b529-7d1ae411e867@thomas-ward.net>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <833e90b2-db52-4939-b529-7d1ae411e867@thomas-ward.net>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] atop: Heap corruption

On Wed, Mar 26, 2025 at 08:12:32PM -0400, Thomas Ward wrote:
> On 2025-03-26 19:56, Alan Coopersmith wrote:
> >On 3/26/25 16:07, Solar Designer wrote:
> >>https://rachelbythebay.com/w/2025/03/26/atop/
> >
> >CVE-2025-31160 appears to have been issued by Mitre to track this:
> >
> >https://www.cve.org/CVERecord?id=CVE-2025-31160
> >
> >but only listing the above blog and the ycombinator threads for details.
> 
> ... this should include a link to 
> https://github.com/Atoptool/atop/issues/330 which is a tracker for the 
> issue in this CVE.

No, it should not, and no, it is not.  Just because people started
adding comments to this random issue doesn't make it the issue.

The specific bug that #330 is about is clear and is already fixed, but
the heap corruption is neither investigated nor fixed.

> It looks like a munmap patch has been provided but 
> it looks also that this may be one of multiple 'suspicious' commits on 
> the radar (if you read the issue thread).

This kind of suspicion to irrelevant recent commits is what I meant by:

"Some people on various forums are now looking at recent atop commits
but none appear relevant - indeed, the above doesn't look like it was
investigated nor reported properly, so there isn't expected to be a fix
in the repo yet."

Rachel's original blog post yesterday didn't say it was heap corruption
(she clarified this in the followup today), which is why people also
started suspecting backdoors, etc.  The extra scrutiny is great, but
none of the pre-existing commits or GitHub issues are likely relevant.

Alexander
