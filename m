Received: (qmail 18220 invoked by uid 550); 19 Aug 2025 07:43:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18197 invoked from network); 19 Aug 2025 07:43:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=GI5afdXMQ3UU6pAkEixDEZVSS1J/BF39LTf/+sfuaAI=; b=d+Jt+eQuwQAO6hUlTLb5/fZszF
	podh5tta9b4f5frfsq+oBh1byjh+53zb7kG2IFITqU+hRa8Gq0fNsC7jDhKCnBtT/LbSm9vM153Ge
	O7Tu3BXRwc45RvLjwytCA0kB0wBTC/o0NBXdxwpNrkznJaM0at3ohriYYVjZyG6ydwkMTrqut4cP/
	984zXTHFwjKTn2bRXF67pmRseHh//KeSq1pNH7e3j9OnoYuNiZUCAVVUe7d4fK8gkXefKlLc1iouN
	aAbkbuc9swJxStgN4+KQyemWsywn1a+TS/9RGKKehCR3TK26JkPw4MXDB0K7w8O7As6LDH2cpgYHY
	Bnl6WM2A==;
Date: Tue, 19 Aug 2025 08:43:25 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Cc: "David A. Wheeler" <dwheeler@dwheeler.com>,
	Vincent Lefevre <vincent@vinc17.net>
Message-ID: <aKQrHYrHZ_VT61Um@remnant.pseudorandom.co.uk>
References: <20250813203857.GA11693@unix-ag.uni-kl.de>
 <87a53zyugg.fsf@gmail.com>
 <20250817010958.GA607521@qaa.vinc17.org>
 <20250817140937.GA16226@unix-ag.uni-kl.de>
 <B13F08EE-9A89-4D37-AD66-0772C042781D@dwheeler.com>
 <a6370d77-36a6-4b26-85a8-4fc8d2354cf3@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <a6370d77-36a6-4b26-85a8-4fc8d2354cf3@gmail.com>
X-Debian-User: smcv
Subject: Re: [oss-security] blocking weird file names (was: xterm terminal
 crash due to malicious character sequences in file name)

On Mon, 18 Aug 2025 at 21:24:07 -0500, Jacob Bachmeyer wrote:
>Does this need to be an entirely new module or could it be an extension to
>SELinux?

If it isn't a core kernel enhancement like 
/proc/sys/fs/protected_symlinks, then it would be better to have this as 
a new LSM, or perhaps extend an existing "small" LSM like Yama.

Only one "big" LSM (with labelling) can be active at a time, so loading 
AppArmor excludes SELinux and vice versa, meaning that each distro has 
to choose whether they will have SELinux, AppArmor, Smack or none of 
those by default. Lifting that restriction has been in progress for a 
while, but it's difficult to achieve and the relevant APIs assume there 
is only one "big" LSM. But any number of "small" LSMs like Yama and 
Landlock can coexist with up to one "big" LSM.

Even if the SELinux team saw it as in-scope (which I suspect they might 
not), adding this functionality to SELinux would not protect AppArmor 
users and vice versa, whereas having it in a "small" LSM would benefit 
everyone.

     smcv
