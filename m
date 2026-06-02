Received: (qmail 5883 invoked by uid 550); 2 Jun 2026 17:27:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5855 invoked from network); 2 Jun 2026 17:27:24 -0000
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=spacehopper.org;
	s=s3e; t=1780421235; h=from:from:subject:subject:date:date:message-id:message-id:
	 in-reply-to:in-reply-to:references:references;
	bh=XA4LrgbxcKUp2lRQY5ZD40+//5j+KjKVHFF75j+1yaM=;
	b=HHu1p4O6DMruDbCynskflbrI/0gL4lQMm+dIHCX3F/qZDsvy01bxgidNJ6LDEeh+wDvV0c
	PB+prpFDydOcvQDg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spacehopper.org;
	s=s3; t=1780421235; h=from:from:subject:subject:date:date:message-id:message-id:
	 in-reply-to:in-reply-to:references:references;
	bh=XA4LrgbxcKUp2lRQY5ZD40+//5j+KjKVHFF75j+1yaM=;
	b=Y1ozL0/blZN7YshS4iEWoRHRfts0hxl9/uAxg+fdAIH3B2Ag2olA+OLiT+wsCpHA05TcZn
	v/IL4oA/Ab288K+KoclsZlpKhq62JJbNkAQKIZ4/vf6PvLQQeBEPpUgl7bLfwkOluFWrMK
	Z1guKroeIsxF/4Sd6Wh3N7C+M4Abh0Uh23K/As6XkrZJAqc2nOrNyXjl1omlo1LJk/apWn
	l58fOJWVIlBwNixeHjaJnD5vjySPxJ/e/ndrBXdcHewrqVC3sK3MdahqjoMgAVRLCcNvKT
	ZrBlptsDyNrhjzGJe+1l01qHTcQcFPQbcNSE2RD6S1FDRQXxcmfQDQ3RE2HN5w==
Date: Tue, 2 Jun 2026 18:27:14 +0100
From: Stuart Henderson <stu@spacehopper.org>
To: oss-security@lists.openwall.com
Message-ID: <ah8ScoDc8O4mG-_H@symphytum.spacehopper.org>
References: <CA+W5nyiFPweL5LDEKpUSJAo8NhKQz53o=d=9HBdHipQ7d0N3Mw@mail.gmail.com>
 <ah62-ZU9c_cEa8f0@symphytum.spacehopper.org>
 <C9D46D56-8664-45BF-991A-D5226C84B79C@lightwave.net.ru>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <C9D46D56-8664-45BF-991A-D5226C84B79C@lightwave.net.ru>
Subject: Re: [oss-security] BIRD/BIRD2: stack buffer overflow in BGP AS_PATH
 mask matching, CVE pending

On 2026/06/02 15:37, Dan Yefihmov wrote:
> On June 2, 2026 1:56:57 PM GMT+03:00, Stuart Henderson <stu@spacehopper.org> wrote:
> >On 2026/06/02 10:07, Bakabaka_9 wrote:
> >> Tested affected:
> >> 
> >> - BIRD 2.16.2
> >> 
> >> Possibly affected:
> >> 
> >> - Other BIRD 2.x versions using the same AS_PATH mask matching
> >>   implementation.
> >> 
> >> Not affected:
> >> 
> >> - Unknown.
> >> 
> >> Fixed version
> >> =============
> >> 
> >> No fixed version is available at the time of this disclosure.
> >
> >If you've only tried one version from April 2025, how can you can say
> >with certainty that it's not been fixed since then?
> >
> Did you really read the report carefully? It's explicitly written there that on May 24 the maintainers clearly written they don't currently plan to fix it!

Yes, I did. That doesn't rule out things like "don't plan to fix because
it's no longer an issue". (I'm not saying whether it is or not - I
haven't checked - but it seems odd that someone going to the trouble of
reporting the problem and requesting a CVE* wouldn't check whether it's
still valid in a current version).



* https://ripe92.ripe.net/programme/meeting-plan/sessions/76/T7NMB8/
has a fun alternative definition for "CVE"

