Received: (qmail 1148 invoked by uid 550); 13 Mar 2025 14:50:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1119 invoked from network); 13 Mar 2025 14:50:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1741877441;
	bh=bYAVVl7KIHswyCV4vJMTvQD595TH1cvdl3xyg+YNB2M=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type;
	b=K8Z6+X8BdyXVWnaGUC3wfk+Q/m1C27sbWR3KM+YIjUiVTKs60tG/3KH2dVvHOsA7A
	 opANeoiKe1Dlr2T4fHhpF3JunUTZs4V6BDEGyhnaHQj76RYQLW9Y3GDcfwQ1FcvkWE
	 EE32SlRoDKqUU+yipBptYBepu881V7VBjNg9opNpdWNvfCjnW0xHQ6AVY3Vi7yuGo3
	 CommHHr5N7sd/kzSNmnfGQ6ygWKZ0bO7hc329l39bagQrnfIvqCNrtgs/+/c3gxo7J
	 pULa1sjXwEaNwrFeIUVV7UQN5kvWopH7ER6Bl0zrXRGstU+I3seq2wRd6NjTgAbf+D
	 ptV7zfM8isDxQ==
Message-ID: <ca277a69-a5a2-44c6-89fa-d04ae9da33ec@canonical.com>
Date: Thu, 13 Mar 2025 10:50:38 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <fccc1170fe964f6f5b68a9211959f24a9ee4bc53.camel@michel-slm.name>
From: Marc Deslauriers <marc.deslauriers@canonical.com>
Content-Language: fr, en-CA, en-US
Autocrypt: addr=marc.deslauriers@canonical.com; keydata=
 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
 8Dn5ROoNmabo
In-Reply-To: <fccc1170fe964f6f5b68a9211959f24a9ee4bc53.camel@michel-slm.name>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE-2025-27363: out of bounds write in FreeType <=
 2.13.0

Hi,

On 2025-03-12 16:57, Michel Lind wrote:
> Description:
> 
> An out of bounds write exists in FreeType versions 2.13.0 and below
> when attempting to parse font subglyph structures related to TrueType
> GX and variable font files. The vulnerable code assigns a signed short
> value to an unsigned long and then adds a static value causing it to
> wrap around and allocate too small of a heap buffer. The code then
> writes up to 6 signed long integers out of bounds relative to this
> buffer. This may result in arbitrary code execution. This vulnerability
> may have been exploited in the wild.
> 
> https://www.facebook.com/security/advisories/cve-2025-27363
> 
> This commit fixes most of the issue - except `limit` is still signed
> short - but needs to be redone if you're backporting to 2.10.4
> 
> https://gitlab.freedesktop.org/freetype/freetype/-/commit/ef636696524b081f1b8819eb0c6a0b932d35757d
> 

Perhaps I need more coffee this morning, but I'm having trouble consolidating 
that patch with the description. If "limit" is the signed short, what is the 
unsigned long?

Also, if this is meant as the fix:

-        if ( FT_NEW_ARRAY( points, limit + 4 )    ||
-             FT_NEW_ARRAY( tags, limit + 4 )      ||
-             FT_NEW_ARRAY( contours, limit + 4 )  ||
-             FT_NEW_ARRAY( unrounded, limit + 4 ) )
+        if ( FT_QNEW_ARRAY( outline.points, limit + 4 ) ||
+             FT_QNEW_ARRAY( outline.tags, limit )       ||
+             FT_QNEW_ARRAY( outline.contours, limit )   ||
+             FT_QNEW_ARRAY( unrounded, limit + 4 )      )

...not only would the remaining + 4 wrap around too, but FT_NEW_ARRAY already 
checks for a value < 0, so I'm not sure that is it.

What am I not seeing?

Thanks,

Marc.

