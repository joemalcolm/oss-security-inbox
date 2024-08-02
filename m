Received: (qmail 15372 invoked by uid 550); 2 Aug 2024 14:39:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13993 invoked from network); 2 Aug 2024 14:39:18 -0000
Date: Fri, 2 Aug 2024 16:39:13 +0200
From: Solar Designer <solar@openwall.com>
To: Andri Yngvason <andri@yngvason.is>
Cc: oss-security@lists.openwall.com, Dane Bouchie <dbouchie@iradimed.com>,
	Travis Wise <travis@wavesquared.com>, security@raspberrypi.com,
	Simon Long <simon@raspberrypi.com>,
	Moritz M??hlenhoff <jmm@inutil.org>,
	Salvatore Bonaccorso <carnil@debian.org>
Message-ID: <20240802143913.GA11135@openwall.com>
References: <CAFNQBQwnnA_=sZCvYf=sRzz2SXfqJB5_JEFYjCC+pcGekN9WFw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFNQBQwnnA_=sZCvYf=sRzz2SXfqJB5_JEFYjCC+pcGekN9WFw@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Neat VNC Security Vulnerability

Hi Andri,

On Thu, Aug 01, 2024 at 11:05:27PM +0000, Andri Yngvason wrote:
> It has come to my attention that there is a security vulnerability in Neat VNC.
> 
> I've released a new version that fixes the vulnerability:
> https://github.com/any1/neatvnc/releases/tag/v0.8.1

Thank you very much for bringing this to oss-security!

On oss-security, we need a description of the vulnerability, not just a
note that some vulnerability existed.

The release notes mention:

"The vulnerability was reported by Dane Bouchie and Travis Wise."

Dane and/or Travis, maybe you can provide the missing detail here?

The fix commit appears to be:

Add sanity check for chosen security type
https://github.com/any1/neatvnc/commit/cc71650a69abc2573a0d96d082409d2468802d47

Skimming it, I see it increases the size of buf in on_version_message()
from 3 to 32 security types.  That function is also split in two and
otherwise refactored.  A number of "security->types[security->n++]"
lines got replaced with ADD_SECURITY_TYPE(), which has an assert()
against the new maximum.  There were 4 of those lines, so I can see how
a buffer for 3 could be too small.  So there was a bug.  However, none
of this looks like attacker-controlled input, or is it?  Now, even
without attacker-controlled input an out-of-bounds write is undefined
behavior, so theoretically could result in an exploitable vulnerability
via some other correctly processed input, but was there any analysis
whether it commonly or realistically does in this case?

I see the commit also adds an is_allowed_security_type() check to the
beginning of on_security_message().  However, the rest of that function
only has a switch statement covering a few known security types and:

	default:
		security_handshake_failed(client, NULL,
				"Unsupported security type");

The action on failing the added pre-check is almost the same.  So I
don't immediately see how not pre-checking could have been problematic.

Maybe I'm missing some bigger issue also fixed by those changes?

Don't get me wrong, fixing a bug and defensive programming is great, but
we also need the security impact documented.

Alexander
