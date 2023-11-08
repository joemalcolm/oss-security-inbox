Received: (qmail 19756 invoked by uid 550); 8 Nov 2023 14:08:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18240 invoked from network); 8 Nov 2023 14:07:56 -0000
Date: Wed, 8 Nov 2023 15:07:40 +0100
From: Solar Designer <solar@openwall.com>
To: !CVE Team <contact@notcve.org>
Cc: oss-security@lists.openwall.com, fulldisclosure@seclists.org
Message-ID: <20231108140740.GA6515@openwall.com>
References: <c01c1617-641d-4ec2-847f-2e85ea4676f7@notcve.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c01c1617-641d-4ec2-847f-2e85ea4676f7@notcve.org>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] !CVE: A new platform to track security issues not acknowledged by vendors

On Wed, Nov 08, 2023 at 02:22:27PM +0100, !CVE Team wrote:
> - An identifier following common naming starting with an exclamation
>   mark(!) Example: !CVE-2023-0001

Please make these more distinctive, so that searching (e.g. the web or
mailing list archives) for CVE-2023-0001 wouldn't find both the actual
CVE and the !CVE, which are likely totally unrelated to each other.  In
fact, searching specifically for the !CVE could be difficult as the
exclamation mark may be dropped by the tokenizer when indexing content.

One way to do that while maintaining the pun would be to use a different
numbers syntax, radix, or range, e.g. prefix all numbers with more 0's
than CVEs normally use (resulting in something like !CVE-2023-00000001),
prefix them with a radix specifier (e.g. !CVE-2023-0x0001), or start the
numbers at 10 million (there were some in the 1+ million range in prior
years, so this feels risky).

I tried launching something similar in 2016, but without the pun on CVE,
and taking the lack of requirements to the extreme:

https://www.openwall.com/ove/

It saw a bit of use, but didn't really take off.  Maybe yours will.

Good luck!

Alexander
