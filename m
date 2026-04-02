Received: (qmail 5229 invoked by uid 550); 2 Apr 2026 17:57:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5204 invoked from network); 2 Apr 2026 17:57:26 -0000
Date: Thu, 2 Apr 2026 19:55:12 +0200
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Cc: Demi Marie Obenour <demiobenour@gmail.com>
Message-ID: <ac6tgGE2oH6dKiAQ@256bit.org>
References: <aco9Ai89pj+OQ0YS@256bit.org>
 <e1cbe881-2d13-442f-8977-39baaad84ec8@gmail.com>
 <acvvA2uP7s/aGD9q@256bit.org>
 <712E645E-3EDB-4D8B-916F-C3B4320E4DB0@dwheeler.com>
 <aczNMPPQfRFBWOBy@256bit.org>
 <A958E069-337B-452C-972B-2833B01835C1@dwheeler.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <A958E069-337B-452C-972B-2833B01835C1@dwheeler.com>
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: Re: [oss-security] [vim-security] Vim tabpanel modeline escape
 affects Vim < 9.2.0272


On Do, 02 Apr 2026, David A. Wheeler wrote:

> I think it's best to disable this functionality for now.
> Perhaps it should be disabled by default until it has a better
> self-protection mechanism. The default should only allow specific fields
> with specific permitted value ranges, so that attackers can't mess with people.
> A 'textwidth' of 5, set without user approval, sounds like a bad idea.
> Tabs are pretty much only a few valid values; I doubt "250" is a reasonable one.
> 
> If someone really wants the existing modeline behavior, an "insecure modeline" option
> would make sense, but I bet most users would not enable it.

It seems the community prefers a whitelist approach however. So this is 
probably what it will be soon.

Thanks,
Christian
-- 
F: Was ist golden und fliegt durch die Luft?
A: Maikäfer mit Goldzahn.
