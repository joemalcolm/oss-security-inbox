Received: (qmail 1653 invoked by uid 550); 2 Jun 2026 20:41:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1624 invoked from network); 2 Jun 2026 20:41:42 -0000
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=spacehopper.org;
	s=s3e; t=1780432893; h=from:from:subject:subject:date:date:message-id:message-id:
	 in-reply-to:in-reply-to:references:references;
	bh=adKZAd0WHlRUaMpkOBmXGqdwvf10/y+AyB7tH3bS1Mo=;
	b=FKpiRFxP9btP7sAg+JRTJzba3dmH0rQvFyat1ZakGx5oBq3G2ve+EHioVGnFNm+65Uot7t
	4rfhBobThGAt5vDg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spacehopper.org;
	s=s3; t=1780432893; h=from:from:subject:subject:date:date:message-id:message-id:
	 in-reply-to:in-reply-to:references:references;
	bh=adKZAd0WHlRUaMpkOBmXGqdwvf10/y+AyB7tH3bS1Mo=;
	b=Ppwosbh2qGjc7xhkF7Aw3aoPcKRB65JXT9+sVMH9y6AQhlAnNEJDCLT9VQWJbMPJH5qYW+
	cQjH2w+r4+CCHdunhuK+ytZmFrXrhoF8KgfzSPjqWK1HxwbEoEUz78rlUqDZk+aHjSpWfl
	vLaEv9NEMrsHJlo9wU9t70xSDtoyl2BZag6Kjm/HWDzBZyoWiA2POPPZwIJ7i04S6eH7ly
	74k3dfOkaxPEUDUnrg2daZNoq0I4W6YiU8x9ZkWwyPICc1mCOoslhH/mI59jWHrk29B9M4
	SAV8vF5ws+w4sIuoQdcBZwM/W1U8dvzdU+8VcdSGpkeqpNz/chWDzDMDy1Pb2A==
Date: Tue, 2 Jun 2026 21:41:33 +0100
From: Stuart Henderson <stu@spacehopper.org>
To: oss-security@lists.openwall.com
Message-ID: <ah8__bTk_qGYMjrQ@symphytum.spacehopper.org>
References: <CA+W5nyiFPweL5LDEKpUSJAo8NhKQz53o=d=9HBdHipQ7d0N3Mw@mail.gmail.com>
 <ah62-ZU9c_cEa8f0@symphytum.spacehopper.org>
 <C9D46D56-8664-45BF-991A-D5226C84B79C@lightwave.net.ru>
 <ah8ScoDc8O4mG-_H@symphytum.spacehopper.org>
 <41F35F72-E66D-49B8-BE03-CBBE71275CD0@lightwave.net.ru>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <41F35F72-E66D-49B8-BE03-CBBE71275CD0@lightwave.net.ru>
Subject: Re: [oss-security] BIRD/BIRD2: stack buffer overflow in BGP AS_PATH
 mask matching, CVE pending

On 2026/06/02 21:14, Dan Yefihmov wrote:
> On June 2, 2026 8:27:14 PM GMT+03:00, Stuart Henderson <stu@spacehopper.org> wrote:
> >Yes, I did. That doesn't rule out things like "don't plan to fix because
> >it's no longer an issue".
> >
> Didn't you think that in that case it's considerably more reasonable to explicitly write: "It's already fixed, and the fix will be in the next release scheduled at ..." instead of "We don't CURRENTLY plan to fix it"?

I'm not sure if you're aware of the sheer number of reports that
widely-used projects are receiving recently.

From the talk I linked to, for BIRD from the start of 2026 up to 19 May,
that was *70*. The ones I've seen (not for BIRD) they're often extremely
verbose, and they're often plain wrong (the talk suggests ~ 9% of the
reports for BIRD were valid).

At this point I think it is fairly reasonable for small development
teams to not spend all that much time researching a lower-effort
report. If it's valid there will likely be a handful of duplicate
reports coming along soon afterwards anyway, and hopefully one of
those may have done more triage before sending out.

