Received: (qmail 26039 invoked by uid 550); 3 Apr 2024 19:59:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5279 invoked from network); 3 Apr 2024 19:51:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1712173904;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=XYlhqVHRWUUajq9SoWDzIjK303Xb5Of9QVBBBJ4Tcyo=;
	b=VF5FsNdpKuldurT+l3hE+FkDPPDRRkK1JaTYs8vMiSfS4elAD7/GBUDZSdX29W9Im1/tpk
	C2iydCO1DzcMB5G4ybOD7ZhkN2z9sYfzmbcVVFgak2f2JPSXv60lnje/HkN2ReyDmGtVjw
	dTM/otnxDkALNBxS59Xd9I6GhXSDi8g=
X-MC-Unique: OyGTDXKPNQKI6TGmJAgUnA-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712173901; x=1712778701;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XYlhqVHRWUUajq9SoWDzIjK303Xb5Of9QVBBBJ4Tcyo=;
        b=fnvhtOBRCaSRahZQDh7OKEe0PVzC+pCQY9a7lBaiXstF61tzWB3HCG1bVMJqsP2c4x
         xP2YWJTgTyG/0KuOHajsgr7QNn+mgXUvXz1I20NtD+5vNliibCZ+904Bt9QL6dzpFYvB
         gGZC5P5imG6Mj/HUA1IezBuXTplCnSJNDt10E9Pm03Sm52oMOQJIyzy29AXT/Kr3rc+W
         HYn6aTQuXVDRZ31lHS6aWTquCujwsbDakDCtdX3Y4H+Ycg6fNPBb/FKEPe98sPnT6yWk
         uUbboXo9T7C2LQ2gL09QglsW/+VDFP1jYXYpTBP+nCImj1OEujrIm8RKQ5MO06q6biEq
         FZUQ==
X-Gm-Message-State: AOJu0YyeWVtddOfclHtvkS0n4MzLjqlDpeXEWRczIrOMXUK5aGYo2vrO
	eSa6tX7GLMaRYABkwat20nbDMbQPOaP15lPiQftlPj0FormVJNjdAhtKxcIgm8rMUQYWEdAzz3F
	1CNPmphR/WDmPknrTrW4dUTpiARrneIjPVT0IvQeGHU8/T3fYFigek/uv1ysyZwWZylc4GW5GL6
	jo95s02RrqYtfQSGzMh8qI1xztA1f4JHIDHB+XKitr
X-Received: by 2002:a5d:660a:0:b0:341:a640:b516 with SMTP id n10-20020a5d660a000000b00341a640b516mr292121wru.70.1712173901189;
        Wed, 03 Apr 2024 12:51:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH1b7uHI7a5Z7ARmgipz5JT7l8XzF1JKu1P4G6mxKD50idjfd1Iqe58OVAzwkDpuCALmUd+6qd7+V2T4KUnvfs=
X-Received: by 2002:a5d:660a:0:b0:341:a640:b516 with SMTP id
 n10-20020a5d660a000000b00341a640b516mr292116wru.70.1712173900830; Wed, 03 Apr
 2024 12:51:40 -0700 (PDT)
MIME-Version: 1.0
References: <4323cf07-8f42-46f8-b075-c12e50a917e7n@googlegroups.com>
 <7e6a9e00-1caf-4523-b969-fdb410b240f7n@googlegroups.com> <9f41b1da-6faa-4364-aed8-60ff5eaf7c06n@googlegroups.com>
 <20240403164804.GA10525@openwall.com> <CAH0iFcZaZtAfhVwopR1vFgXuQJSvugL8Bz8OmQYS+kpq4VqGiA@mail.gmail.com>
 <20240403194214.GA12525@openwall.com>
In-Reply-To: <20240403194214.GA12525@openwall.com>
From: Michael Dawson <midawson@redhat.com>
Date: Wed, 3 Apr 2024 15:51:28 -0400
Message-ID: <CAH0iFcYE5SrCZWWjoHx-iM1oHkzq0FXkAZ==4H26Cuw3rDyU3Q@mail.gmail.com>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000273af60615368d99"
Subject: Re: [oss-security] Fwd: Node.js security update for all active
 release lines

--000000000000273af60615368d99
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The reason we post the link in the nodejs-sec posts is to reduce the work
for the security stewards and avoid problems with cut/paste. Markdown does
not paste into gmail and work is required to reformat etc.

I can understand that you'd prefer that we do more work so that your
organization can do less work but at this point that is not something I'd
support. We don't do any extra steps for any other organization and
explaining why a forward is needed versus somebody from openwall
subscribing to the mailing list is something I already don't know how to
explain.

I'm not going to rush to remove what we have been doing from the
security release process, but trying to explain why I don't think asking
for more makes sense.  You can always open an issue in the nodejs/node repo
to discussion/make a case if you think it make sense.

On Wed, Apr 3, 2024 at 3:42=E2=80=AFPM Solar Designer <solar@openwall.com> =
wrote:

> On Wed, Apr 03, 2024 at 02:01:11PM -0400, Michael Dawson wrote:
> > Sorry I don't remember the context as to why we agreed to send this
> forward
> > in the first place.
>
> As I can find, these just started arriving in July 2021.  And that was
> appreciated.  Now I merely suggested how to do it a bit better.
>
> > As opposed to expanding any work that's a one off for the community
> > security stewards, since it sounds like it may not be meeting your need=
s,
> > I'd propose that we just remove it from our security release steps and
> you
> > can subscribe to the nodejs-sec mailing list like everybody else. From
> that
> > you could generate some automation to pull down the content from the
> > original post.
>
> That's not the outcome I wanted, especially not knowing who would setup
> and maintain said automation.  We do have an outstanding task to create
> some tools for this sort of automation, but no one approached it yet and
> it's meant to help prepare drafts for manual posting, so there would be
> some per-message work anyway.
>
> So please continue these postings as-is for now, and we'll hopefully be
> adding follow-ups with the actual content like I did.  You could also
> want to start including the Markdown files in nodejs-sec postings, so
> simply forwarding them in here would do what's desired, but that's your
> call indeed.
>
> BTW, the previous update (for February) somehow wasn't sent in here.
> Per my off-list suggestion, an oss-security contributor later sent a
> detailed report:
>
> https://www.openwall.com/lists/oss-security/2024/03/11/1
>
> but we're not sure we'll do it each time.
>
> Thanks,
>
> Alexander
>
>

--000000000000273af60615368d99--

