Received: (qmail 19651 invoked by uid 550); 6 Mar 2025 16:34:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16302 invoked from network); 6 Mar 2025 15:33:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mumble.net; s=20240127;
	t=1741275187;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:  in-reply-to:in-reply-to;
	bh=cLyfBxEvJoRmoBo/XA9GVBxKWk/rRuEobqj0M3kvno8=;
	b=nGYLC0FVYzQAuVdwUXnwLpBKPsZnLIKbCdbgpN/3V5TiUDY5FJWhwpsStKoz0S+mPYbjRN
	zjj62yOEE8l0OZfbDAFZdnsUcOfKjY1UAqwetuEdQN4iljvx/mSXoEsS2UIbKdYTzeweG7
	nuNXQ90/EhNLjdbpRqRmRA5ZBIR37rI=
To: oss-security@lists.openwall.com
CC: Solar Designer <solar@openwall.com>,
	Tavis Ormandy <taviso@gmail.com>,
	Jacob Bachmeyer <jcb62281@gmail.com>
In-reply-to: <97c9b035-2a68-4182-93c8-0495abdd193f@gmail.com> (jcb62281@gmail.com)
Date: Thu, 6 Mar 2025 15:33:06 +0000
From: Taylor R Campbell <campbell+oss-security@mumble.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Message-Id: <20250306153307.4BECE60BA7@jupiter.mumble.net>
Subject: Re: [oss-security] AMD Microcode Signature Verification Vulnerability

> Date: Wed, 5 Mar 2025 23:50:45 -0600
> From: Jacob Bachmeyer <jcb62281@gmail.com>
> 
> On 3/5/25 23:34, Solar Designer wrote:
> > Indeed, HMAC wouldn't be any weaker than its underlying hash on its own
> > even when used with a publicly known example key.  So I can see how they
> > could have (wrongly) expected the same from CMAC.
> 
> If the system is no weaker if the HMAC key is known, then you should not 
> be using HMAC and you should be using a plain digest instead.  (Or am I 
> missing something?  What would HMAC with a known key give you that a 
> plain digest does not?)

Veering slightly off-topic, but MD hash functions such as SHA-256 are
vulnerable to length extension attacks: an adversary's knowledge of a
secret message's hash h = H(m) is enough for them to predict the
hashes of _related_ messages, h' = H(m || pad(m) || s) for any suffix
s.  That is, there's an easy-to-compute function f(h, s) = H(m ||
pad(m) || s).  Such attacks can break some protocols.

If you use HMAC-H_k(m) instead of H(m), even with a fixed public key
k, that defeats such attacks without losing pretty much any other
security.  So it's not completely bonkers to reach for HMAC with a
fixed key.  It's a little silly -- you could use H(H(0^d || m))
instead, where 0^d is a hash-length string of all zeros, for the same
security, or use SHA-3 or BLAKE2 which address length extension
attacks in other ways.

Of course, length extension attacks are not relevant to signatures, so
it's extra silly to use HMAC under a fixed key for them -- but still
not harmful to security.  The real problem here is that CMAC is
abjectly unfit for signatures.
