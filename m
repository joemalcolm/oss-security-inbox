Received: (qmail 21892 invoked by uid 550); 25 Sep 2024 15:22:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19526 invoked from network); 25 Sep 2024 15:21:26 -0000
Date: Wed, 25 Sep 2024 17:21:19 +0200
From: Solar Designer <solar@openwall.com>
To: Enxin Xie <linkinstar@apache.org>
Cc: oss-security@lists.openwall.com
Message-ID: <20240925152119.GA787@openwall.com>
References: <16a2094c-dfa6-a448-b9c7-76ba2dc86f66@apache.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <16a2094c-dfa6-a448-b9c7-76ba2dc86f66@apache.org>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2024-40761: Apache Answer: Avatar URL leaked user email addresses

On Wed, Sep 25, 2024 at 06:28:16AM +0000, Enxin Xie wrote:
> Using the MD5 value of a user's email to access Gravatar is insecure and can lead to the leakage of user email. The official recommendation is to use SHA256 instead.

For practical purposes, this sounds like almost no change to me.  I've
just checked and https://docs.gravatar.com/api/avatars/hash/ does say:

> All URLs on Gravatar are based on the use of the hashed value of an
> email address. Images and profiles are both accessed via the hash of an
> email, and it is considered the primary way of identifying an identity
> within the system. To ensure a consistent and accurate hash, the
> following steps should be taken to create a hash:
> 
> 1. Trim leading and trailing whitespace from an email address
> 2. Force all characters to lower-case
> 3. hash the final string with SHA256

So Gravatar URLs by design allow for quick checking of email addresses
against them, and thus allow to infer not-too-cryptic addresses.  Both
MD5 and SHA-256 are very fast, with speeds in many billion per second
per GPU, with SHA-256 being only a few times slower than MD5.  MD5's
cryptographic weaknesses are irrelevant to this use case.

So I think this CVE should either be rejected (as the issue is with
Gravatar, not with implementations) or considered unfixable (within
spec) and thus not fixed.

Alexander
