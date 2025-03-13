Received: (qmail 19656 invoked by uid 550); 13 Mar 2025 21:04:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19632 invoked from network); 13 Mar 2025 21:04:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741899863; x=1742504663; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XKjdBKy9kbil98XfommDOrXIUnpZCVWPoG3h2h1HyUs=;
        b=b4TsbK7abCcKdrg0Pk5MjuFr/nciTp0edMTGS0bXsVBepMwsqa6hYWgOAm2BXF7Tr6
         TqXaWyhJzAcjPN9wPAk0A7UV5dP5o3olqHfGU8CjnouZqrXB6draFZ8lc+MN2hrNvrOv
         NSg1h2lI40PmNP4CgL3yqZCqSot3nOx0F6n4cPG7LNWFZLfpY+KbJYVmLTQBxQpRnhBd
         NaFXXAlbO0HdKOwnDhVoYIEgAdnrW6cuO7ptwgev8zxEftrCe2J5KQM1yOzLgQTMsZrP
         cp9ImejspfxcwRZPstU4QXc67TTNds8QrWVK63eBCpdCh8Wn604RbFgyGEFTbyRyTHMy
         AJkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741899863; x=1742504663;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XKjdBKy9kbil98XfommDOrXIUnpZCVWPoG3h2h1HyUs=;
        b=TOW/EO2d9bBteAzSofN4og4rWzUD8nonAC9r10Pid7w2DAqUCbh+JhmsZUpnJ1PQzr
         JEwZ4Clr/gsjsE16n6cjLj1dsXhhVKAxtARUbGWX4j5l9lhls/dh1oVFlba0LB0j6UPU
         Z5PXcMRBqyp/MNU7gJiAKlDS4zBJsznqBpQ8ozES9Yh3pnbO0qlEWKuM1nvyEnZoLFaW
         qYUE4Vrc3bMo2mHz1rv13B8uKBqJ6mS9ZA9yvGd5cVAS8VQte3px9uCUwtr7Cy2R/Os7
         zAJ7uUFD+1TroM8vWCBhkLNvEt0n4l/5Syz+Qe317La3RXQ60yD5ZELuDQ2dimeMoCHy
         1bXQ==
X-Gm-Message-State: AOJu0YzjONv5eccwHYwzzLRlc5hL4CVNCNe493FhRrNqqOdhPJXvl+RW
	JJN/rCmrADTsXPw8Byxv1cnj4iVL0sM32yNE116VdAxcdqBIWSo2bEz0iXWc
X-Gm-Gg: ASbGnctYuLM0ebtcXQTvb42aCjbtLsMEG7hJuCqEHJI6Yw7+z6eWZV+VIlwt2V3xge5
	Vs8rGF3IP5tGvXmHz5YGSG1PifkRmLxC6na76AnTh0o36hoD9/VhMohjI26KzQhtDd5yKbphxpO
	/pzBvALHTpoA9C1tAEQP47Z+IN6fM8uhSVjV+nDiyZU97pH5V/dVZARmX4ZHExtF9ovMT69EmZo
	DW8KOSrSKir0KTj1iwyK4ILhsgJMK6ISUJvP8E4fvXgxjDJvzf1LsSgYUXKaquLKbZUYIpvvspT
	g+VZM5rMFR5tBwSLL8JjBRmu6Asd4WzIk+e9iIfmnTR1x4I/0eljtHcvZWl7HR+TMNWsQA+lMf5
	Ebw==
X-Google-Smtp-Source: AGHT+IHooqSCV1Za2ylYskDeDy/7oYC5wkNZJu+dLdl0ZdwH5iVN9++BmFGeDuGWOyPnT9Zsui8naw==
X-Received: by 2002:a17:907:3e06:b0:ac2:844f:2ccc with SMTP id a640c23a62f3a-ac330181ab7mr656366b.17.1741899862630;
        Thu, 13 Mar 2025 14:04:22 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Thu, 13 Mar 2025 22:04:21 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <Z9NIVY6Jaf5qPZzl@eldamar.lan>
References: <fccc1170fe964f6f5b68a9211959f24a9ee4bc53.camel@michel-slm.name>
 <ca277a69-a5a2-44c6-89fa-d04ae9da33ec@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ca277a69-a5a2-44c6-89fa-d04ae9da33ec@canonical.com>
Subject: Re: [oss-security] CVE-2025-27363: out of bounds write in FreeType
 <= 2.13.0

Hi Marc,

On Thu, Mar 13, 2025 at 10:50:38AM -0400, Marc Deslauriers wrote:
> Hi,
> 
> On 2025-03-12 16:57, Michel Lind wrote:
> > Description:
> > 
> > An out of bounds write exists in FreeType versions 2.13.0 and below
> > when attempting to parse font subglyph structures related to TrueType
> > GX and variable font files. The vulnerable code assigns a signed short
> > value to an unsigned long and then adds a static value causing it to
> > wrap around and allocate too small of a heap buffer. The code then
> > writes up to 6 signed long integers out of bounds relative to this
> > buffer. This may result in arbitrary code execution. This vulnerability
> > may have been exploited in the wild.
> > 
> > https://www.facebook.com/security/advisories/cve-2025-27363
> > 
> > This commit fixes most of the issue - except `limit` is still signed
> > short - but needs to be redone if you're backporting to 2.10.4
> > 
> > https://gitlab.freedesktop.org/freetype/freetype/-/commit/ef636696524b081f1b8819eb0c6a0b932d35757d
> > 
> 
> Perhaps I need more coffee this morning, but I'm having trouble
> consolidating that patch with the description. If "limit" is the signed
> short, what is the unsigned long?

It is related to this:
https://gitlab.freedesktop.org/freetype/freetype/-/commit/73720c7c9958e87b3d134a7574d1720ad2d24442
see
https://gitlab.freedesktop.org/freetype/freetype/-/issues/1322#note_2822105
. The commit self is only in 2.13.3.

> Also, if this is meant as the fix:
> 
> -        if ( FT_NEW_ARRAY( points, limit + 4 )    ||
> -             FT_NEW_ARRAY( tags, limit + 4 )      ||
> -             FT_NEW_ARRAY( contours, limit + 4 )  ||
> -             FT_NEW_ARRAY( unrounded, limit + 4 ) )
> +        if ( FT_QNEW_ARRAY( outline.points, limit + 4 ) ||
> +             FT_QNEW_ARRAY( outline.tags, limit )       ||
> +             FT_QNEW_ARRAY( outline.contours, limit )   ||
> +             FT_QNEW_ARRAY( unrounded, limit + 4 )      )
> 
> ...not only would the remaining + 4 wrap around too, but FT_NEW_ARRAY
> already checks for a value < 0, so I'm not sure that is it.
> 
> What am I not seeing?

Do you have already working backport set for 2.12.1 based version?

Regards,
Salvatore
