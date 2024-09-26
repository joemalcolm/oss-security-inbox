Received: (qmail 22070 invoked by uid 550); 26 Sep 2024 19:11:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21700 invoked from network); 26 Sep 2024 19:11:43 -0000
Date: Thu, 26 Sep 2024 21:11:39 +0200
From: Solar Designer <solar@openwall.com>
To: LinkinStar <linkinstar@apache.org>
Cc: oss-security@lists.openwall.com
Message-ID: <20240926191139.GA9140@openwall.com>
References: <16a2094c-dfa6-a448-b9c7-76ba2dc86f66@apache.org> <20240925152119.GA787@openwall.com> <CAF=YEMyfspxZsA6BiVrD8iKJBiE=EebQB=3YC=Zk-49h3ywm7A@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAF=YEMyfspxZsA6BiVrD8iKJBiE=EebQB=3YC=Zk-49h3ywm7A@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2024-40761: Apache Answer: Avatar URL leaked user email addresses

Hi LinkinStar,

There were several more replies from others, please see in the list
archive if you're not subscribed:

https://www.openwall.com/lists/oss-security/

On Thu, Sep 26, 2024 at 10:10:38AM +0800, LinkinStar wrote:
> Because *Gravatar recommends using sha-256*, we believe there must be a
> reason for its modification. Since the official recommendation is to change
> the encryption method, why not implement it according to the official
> requirements? You must admit that sha-256 is more difficult than md5, even
> if only slightly. Although this may not completely solve the problem, I
> believe following the official recommendation would be marginally better,
> wouldn't it? So I think this fix itself is acceptable.

The change is fine - just don't call it a security fix.  Also, this is
hashing and not encryption.

Others pointed out that Gravatar's recommendation is just that - not a
specification - so unless you need interoperability with other servers
implementing Gravatar, you can do better than SHA-256.  Specifically,
use of a keyed hash such as HMAC-SHA256 was suggested and makes sense to
me - as long as the key is generated from a CSPRNG (such as
/dev/urandom) and is large enough (such as 32 bytes).

Alexander
