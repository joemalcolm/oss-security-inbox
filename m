Received: (qmail 31816 invoked by uid 550); 6 Mar 2025 05:34:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30570 invoked from network); 6 Mar 2025 05:34:24 -0000
Date: Thu, 6 Mar 2025 06:34:16 +0100
From: Solar Designer <solar@openwall.com>
To: Jacob Bachmeyer <jcb62281@gmail.com>
Cc: oss-security@lists.openwall.com, Tavis Ormandy <taviso@gmail.com>
Message-ID: <20250306053416.GA6682@openwall.com>
References: <Z5BYg9WPFBF7JBEB@thinkstation.cmpxchg8b.net> <Z5B2PA7DHTBbvbOq@itl-email> <Z5EUUMd1xkSSKAEM@thinkstation.cmpxchg8b.net> <20250204101028.GA20864@openwall.com> <20250306033000.GA4987@openwall.com> <6f9ffc49-ad46-45eb-9d6f-7d58769c3671@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6f9ffc49-ad46-45eb-9d6f-7d58769c3671@gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] AMD Microcode Signature Verification Vulnerability

On Wed, Mar 05, 2025 at 11:03:49PM -0600, Jacob Bachmeyer wrote:
> On 3/5/25 21:30, Solar Designer wrote:
> >[...] I'll focus on what the vulnerability and its fix are:
> >
> >>[...]
> >>
> >>Forging On
> >>We noticed that the key from an old Zen 1 CPU was the example key of the
> >>NIST SP 800-38B publication (Appendix D.1 2b7e1516 28aed2a6 abf71588
> >>09cf4f3c) and was reused until at least Zen 4 CPUs. [...]
> 
> They... used... the... example... key... in... a... real...
> production... system...
> 
> [I have no words.]

It appears they didn't realize the key's secrecy would matter for their
use case (or else they probably wouldn't use CMAC in the first place),
so it "made sense" to stick with a "standard" tested key.  Given that
misunderstanding, I wouldn't blame them for choosing an example key.

Whatever key, it sounds like the Google folks already had it before they
realized it's an example key from NIST, so the rest of the story would
have been the same with any other fixed key.

The real issue is the use of CMAC without understanding its properties,
not the key choice.

Indeed, HMAC wouldn't be any weaker than its underlying hash on its own
even when used with a publicly known example key.  So I can see how they
could have (wrongly) expected the same from CMAC.

Alexander
