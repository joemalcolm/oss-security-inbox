Received: (qmail 26399 invoked by uid 550); 6 Mar 2025 06:05:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26176 invoked from network); 6 Mar 2025 06:05:06 -0000
Date: Thu, 6 Mar 2025 07:04:54 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Tavis Ormandy <taviso@gmail.com>
Message-ID: <20250306060454.GA6918@openwall.com>
References: <Z5BYg9WPFBF7JBEB@thinkstation.cmpxchg8b.net> <Z5B2PA7DHTBbvbOq@itl-email> <Z5EUUMd1xkSSKAEM@thinkstation.cmpxchg8b.net> <20250204101028.GA20864@openwall.com> <20250306033000.GA4987@openwall.com> <6f9ffc49-ad46-45eb-9d6f-7d58769c3671@gmail.com> <20250306053416.GA6682@openwall.com> <97c9b035-2a68-4182-93c8-0495abdd193f@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <97c9b035-2a68-4182-93c8-0495abdd193f@gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] AMD Microcode Signature Verification Vulnerability

On Wed, Mar 05, 2025 at 11:50:45PM -0600, Jacob Bachmeyer wrote:
> On 3/5/25 23:34, Solar Designer wrote:
> >The real issue is the use of CMAC without understanding its properties,
> >not the key choice.
> 
> The fact that it is called a "key" (and not a "public key") should be 
> the hint that it must be kept secret, which means do not use an example 
> value, just like you do not set your password to "password" or your PIN 
> to 1-2-3-4-5 unless you really mean to have no security on that system.

... or you mean not to use this specific authentication factor, relying
on some other(s) - like the console being protected physically.  A risky
thing to do ("what can possibly go wrong?"), but the analogy is there.

> >Indeed, HMAC wouldn't be any weaker than its underlying hash on its own
> >even when used with a publicly known example key.  So I can see how they
> >could have (wrongly) expected the same from CMAC.
> 
> If the system is no weaker if the HMAC key is known, then you should not 
> be using HMAC and you should be using a plain digest instead.  (Or am I 
> missing something?  What would HMAC with a known key give you that a 
> plain digest does not?)

My point is that sometimes a building block you readily have or can
create most cheaply provides excessive functionality, or so they
thought.  Perhaps they could implement CMAC-AES easier than implement
SHA-256 (if they already had AES, but not yet SHA-256), and thought it's
as good as an HMAC.

Alexander
