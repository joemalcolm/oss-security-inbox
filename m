X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1578" "Thursday" "7" "February" "2019" "13:17:25" "-0600" "Timothy Michaud" "tmm08a@acu.edu" "<CAO5rKUP+mqC4fnOXHiNyo56EOPEBxDMPOoWmB_DH3yWh66e8WQ@mail.gmail.com>" "49" "[oss-security] Re: Linux Kernel: Missing access_ok() checks in IOCTL function (gpu/drm/i915 Driver)" "^Cc:" nil nil "2" "2019020719:17:25" "[oss-security] Re: Linux Kernel: Missing access_ok() checks in IOCTL function (gpu/drm/i915 Driver)" (number mark "        tmm08a@acu.e Feb  7   49/1578  " thread-indent "\"[oss-security] Re: Linux Kernel: Missing access_ok() checks in IOCTL function (gpu/drm/i915 Driver)\"\n") "<1549563205.2925.242.camel@codethink.co.uk>" ("<1549562987.2925.239.camel@debian.org>" "<1549563205.2925.242.camel@codethink.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 4072 invoked by uid 550); 7 Feb 2019 19:18:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3681 invoked from network); 7 Feb 2019 19:17:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=acu-edu.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wp4oO8Ihg3KCzq6bC4URfIIqGYoiDcrErhx3wkmryZQ=;
        b=jBEAp50Rbc0/4wMWpSVC0fDB7h/TwueRm34CSa8pXvBCyYdTnijTe6mBzuOnsFR7rT
         6pGqcAwMfDZ0dMM80Hx3nW6h5v4RBqkDszc2UcPNrwxu9Am6Kpt4gmTIyAdGFPYDYMP0
         F7QIDGd2mybAlUyHcqbcHXPTVJm6ECPWVnavzbSfy7BiNDx2BuSOBhOV50PP5u75r6Eq
         rxHpj43lBq3Xx8b0csXYZlRt534PJz4PvFNbczu2MTOcwSHrZ4k+m6qwnuHrcsvvzxAB
         Za7NXsseJIgJ1dppptyHFSX6Viz6SFSGOvUmBXKwGnv+/3+QgL3TNLAOfCbxPhwwICM5
         +d0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wp4oO8Ihg3KCzq6bC4URfIIqGYoiDcrErhx3wkmryZQ=;
        b=rV4Je3w0Lls6k9jvB8LndQVoQInI6sFJwfJbbKdw1WaGQ+ILQL6bvcq7+jHm5NKJAH
         dMRjG+UqAFLIGXZ42JKoMtlx8NZMwq5YCc+EXddi8O19JbGghmnhn0CAx4bbxLq8sj1F
         SvfzP79R7eKK/55iHpqiQZT2ivDT0bcJCgPXv5LLUeFe1VBcQpJGiDY1qHP1ebxTd2dJ
         J12Ufr4QJJyalwf2Wfxj0HplUmRrQuihYTtGmhX6Pya/g2uwfPkAS9WFKJvMYYUIAu25
         7rFs2j3osHWd8qUiMEgUOKGZaeF/vGtp+NaWNsQzMS3Y/v+P+Vn01uusvoSrfa2FeLyR
         1ZNA==
X-Gm-Message-State: AHQUAuZNAoCG/q5m5si+9thK/VOBY3LTruEYImi7eo2ien/+ssGo9ATH
	0Fp3a872IJTVIYv1g8/Nkh4q1IDFxfCy2NYpJteI8g==
X-Google-Smtp-Source: AHgI3Ia+XXPvzEIW3zTuwJA3nw8dnCt6h2mAo+UrUx2eG7FBIMxCY3tJH67TeoFwbmoieqBrcZ3XExl1DJzFtTdbiZo=
X-Received: by 2002:a5d:4683:: with SMTP id u3mr9920280wrq.213.1549567058396;
 Thu, 07 Feb 2019 11:17:38 -0800 (PST)
MIME-Version: 1.0
References: <1549562987.2925.239.camel@debian.org> <1549563205.2925.242.camel@codethink.co.uk>
In-Reply-To: <1549563205.2925.242.camel@codethink.co.uk>
Message-ID: <CAO5rKUP+mqC4fnOXHiNyo56EOPEBxDMPOoWmB_DH3yWh66e8WQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary="00000000000012659b058152b233"
Cc: Yves-Alexis Perez <corsac@debian.org>, oss-security@lists.openwall.com
Date: Thu, 7 Feb 2019 13:17:25 -0600
From: Timothy Michaud <tmm08a@acu.edu>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Linux Kernel: Missing access_ok() checks in IOCTL function
 (gpu/drm/i915 Driver)
To: Ben Hutchings <ben.hutchings@codethink.co.uk>

--00000000000012659b058152b233
Content-Type: text/plain; charset="UTF-8"

Hi Ben,

I believe you're correct. (grsecurity agrees with you for what it's worth).
I've emailed mitre but have not heard back yet.

Cheers,

Tim M.

On Thu, Feb 7, 2019 at 12:13 PM Ben Hutchings <ben.hutchings@codethink.co.uk>
wrote:

> On Thu, 2019-01-24 at 10:30 +0100, Yves-Alexis Perez wrote:
> > On Wed, 2019-01-23 at 14:28 -0600, Timothy Michaud wrote:
> > > NOTE: I have requested a CVE identifier, and I'm sending this message,
> to
> > > make tracking of the fix easier; however, to avoid missing security
> fixes
> > > without CVE identifiers, you should *NOT* be cherry-picking a specific
> > > patch in response to a notification about a kernel security bug.
> > >
> > > Due to a lack of "access_ok()" checks in
> i915_gem_execbuffer2_ioctl[1], it
> > > is possible to escalate privileges similar to the waitid
> vulnerability[2]
> >
> > Hi, thanks for the report.
> >
> > The patch doesn't seem CC: stable, could you give us a status on the
> various
> > stable releases?
>
> Is there even a real security issue here?  So far as I can see,
> i915_gem_execbuffer2_ioctl() writes to a subset of the user memory
> range that it previously read using copy_from_user().  copy_from_user()
> does include the range check.
>
> Ben.
>
> --
> Ben Hutchings, Software Developer                         Codethink Ltd
> https://www.codethink.co.uk/                 Dale House, 35 Dale Street
>                                      Manchester, M1 2HF, United Kingdom
>

--00000000000012659b058152b233--
