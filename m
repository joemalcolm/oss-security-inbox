Received: (qmail 17872 invoked by uid 550); 22 May 2026 04:46:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 4087 invoked from network); 22 May 2026 03:00:49 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1779418841; cv=none;
        d=google.com; s=arc-20240605;
        b=eeEvQSM8IDaHTye52jzDoF/1p23FKtBqyFVnr/tnTzCjgk6xcxABxK4MoH39hq3ZSB
         jb+mkoUOntc/B/jmZ4DT0snwFGMxg+wJ+zYmtsAMpxmdrVNaYB6GmMbJrG2BVuR0gT/q
         o/2ulEpA8iNPxum7Gy+lJ7uvjTqmI0xXAOVYsInrBkuHaUA0fEwfyoFzbckMc5X6My+W
         QZYTpNTsfJ0TLS2ppaPvhCfA5ygg1qp495yLs+hLEtVdtUHNIJD4SRNCp9NBrr0HM17i
         j0CUaYY00Rt9VY+7XWnJcwrus8Rx2/AECOjBXCN0N7n4lzJqUTQ8OkdyF+U9kruRM5yB
         GZ9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:dkim-signature;
        bh=YQkuO5DnNoVAuDrEBnNEwjSjLqkb+7aNa65VLpLOda8=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=WEgzzZAI6mgx7zZsMlO4uF19ySk9qjkXctMLmtOXxpDlXn7yP4kJ+xClAComNKdLKF
         z/eQuTXvJIZBH6oPjSJBf4Y1IsGg7nIZsay9V4bNiUFX/buTNYj+0QhxdmBaxS7PdRto
         n3XcgBiNSzRnwREsRj1vqRA4K45Kjq/P38wEo1lLeQoU9l61o5XtosHv0W2tscRZgIGM
         sQXvGTG209MxEXLAh+6cphWJrR9zDdy35wx8doGAa3pTK1sFEK9vabtekFLRdVvecbj0
         l4NQZsUT9iOHC01oYjKeRWDvxyOMICC+trU4ZhlmV3YHHlxfHSzCsPSh/N6bdvSuBpno
         Q56Q==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779418841; x=1780023641; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YQkuO5DnNoVAuDrEBnNEwjSjLqkb+7aNa65VLpLOda8=;
        b=IoYHErXvnuPBtMiw7jKunLOnLzL/rJrT3yJFUmIzLAVS5xzyj+LLNrvpsNsnwvfB6R
         EEzEAeFMYXhykDF7cM7xitP5WxlhWd89ex2hykmPkMm79tkl19IJfaIiLqZgFsO3/h55
         EZOBwOZdoKZcmtHqTw0MwAJyr0zKcrkcuDr+8RYZoPFXkOWgic+gI/kG/qP8txj8zUD+
         bVqfDH/3M/Q2jOgN1jpUp+Z4P0hQgYrhv7vZUbB0jWuZ56/dnUpVoH2ALD31Aq+6yCvv
         7093NSD1VsChqG1BYZkZ8l1nvCDtFNEmhdgTZyJUmaSlAR4HbxwZrxF9vtAQqBWkngug
         ru0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779418841; x=1780023641;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YQkuO5DnNoVAuDrEBnNEwjSjLqkb+7aNa65VLpLOda8=;
        b=On+8jvOjqxjX3axXHvS1YVQjrWCgPrORMSsd9DfFLsmorTlCUHlW+oSTWACP+zt9Jl
         6plZE6WrsQrs1LentEBlecaFRSxuy9S02p6xyHzhnWfGEuCD029vQqdWkcdrgH7mhBjI
         wMcerA6o8fKFucnvS0wUMhBIC/BGf41dxm/uAZsdn1wBBfm69QqQ/yToZMXkSmRKtX7Q
         ggjamFEw5rjHjJa/2lk6V0mg4XF8XjwIWMnqiKQqxQfMDEBCVKGObysvsdXOMZQn/4U/
         1jClc3DJhGY9mGaqRvEcU8E55Pmgu4pjqGPiz5vDC0a3RHYO+LLX6B/U9GZh3ph/fv3E
         5ZFA==
X-Gm-Message-State: AOJu0YxHJgUOe4Zl8RQ6AWAZ18A8h/yJnmyHi1I3fXyZhlPiaCjOoGHX
	rkwDwNglfL5BIJ4DgDNFjQVpGemK3Cm7ndnX6rj68UyL9B45BBehsauP8XfyykbM+HLKilY4gPV
	xCVYBgeZ2gqrbF1gOcBX4X0NzxDUrJdXLF+Sx
X-Gm-Gg: Acq92OFX0ALkcfuZ4F6SB9ECWmPbnJVj1XsBejkHZg3Xu+OVa2xtHbxf2oeRTjx4AfG
	MDFrWuOsdkHJ3r5W8XJLjgXA7H9Sp4cRZK3VweavENmFXD3XyVYwIuiSSpjVGQwRgbfhNQAcFI+
	N3bOZjF/2dNIole1OcpkrS9cT0YXSJF4O/uwX8bQx1NCKsj9J+SIRGJZVlfX9/FWPvu2xIXYNHK
	b6jR1sC1Fdcw4R38M4R5wKnGYZNfKRKqxQeR6Kx8iZLbL1k60JbMhZdbrUtt7HGQThSLh+jEz2V
	qwKWznLjb9wqpL7FCTAQqkLOG3zv3K+QoV+oQyxb9UPDKNgHcRF4l2pyZpWqekVFL/LH+ldmTxl
	kGg==
X-Received: by 2002:a05:6512:10cf:b0:5a9:bdab:2d19 with SMTP id
 2adb3069b0e04-5aa322efb7cmr555423e87.0.1779418841089; Thu, 21 May 2026
 20:00:41 -0700 (PDT)
MIME-Version: 1.0
References: <afDLFWVMK-r70PB0@yuggoth.org>
In-Reply-To: <afDLFWVMK-r70PB0@yuggoth.org>
From: Jeffrey Walton <noloader@gmail.com>
Date: Thu, 21 May 2026 23:00:03 -0400
X-Gm-Features: AVHnY4La1qD0faf76CxmHoYlg4_wtRHbxRnrbvC6P4mDLtbemcUf08IPpE2vSno
Message-ID: <CAH8yC8=es4L+UjRFRHze5xe+KL_KuZc8C1LDnvjGq4Rvq01zCQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age

On Tue, Apr 28, 2026 at 11:00=E2=80=AFAM Jeremy Stanley <fungi@yuggoth.org>=
 wrote:
>
> As I'm sure is the case for everyone, the projects I work in are
> under a seemingly unending deluge of vulnerability reports from
> researchers using LLMs to mine for security gold in our software. At
> the same time, we see maintainers on our projects relying on
> LLM-oriented tools to develop fixes for vulnerabilities and compose
> prose for advisories.
>
> While I take a moment to catch my breath, this new Bizarro World
> we're all living in has gotten me thinking about the risks of public
> LLM services to embargoed vulnerability handling workflows and
> traditional coordinated disclosure. The operators of these LLM
> services are known to feed prompts and results back into their
> training data, presumably making it faster and easier for the same
> information to be found later by other users of the same service.
> Would keeping embargoes short help to mitigate related risks of
> parallel rediscovery or outright disclosure to other LLM users? It
> seems to me that there must be some inherent lag in this process,
> but how much?
>
> I'm sorely tempted, both due to the increased volume and the risk of
> premature disclosure, to just assume that any vulnerability reported
> as a result of research using an LLM is trivially discoverable by
> others, and give up trying to pretend there's any point to working
> it under embargo. Similarly, it makes sense to me that patch
> development and descriptive prose shouldn't be produced with LLM
> assistance for any vulnerability that is being worked under an
> embargo.
>
> I can't be the only one whose been pondering this... what positions
> have the rest of you taken?

Anthropic has a long article at [0].  If you scroll down beyond the
explanations for the vulnerabilities the tool found, you land in a
section titled "Suggestions for defenders today".  From that section:

    Think beyond vulnerability finding. Frontier models can also
    accelerate defensive work in many other ways. For example, they can:

      * Provide a first-round triage to evaluate the correctness and
        severity of bug reports;
      * De-duplicate bug reports and otherwise help with the triage
        processes;
      * Assist in writing reproduction steps for vulnerability reports;
      * Write initial patch proposals for bug reports;
      * Analyze cloud environments for misconfigurations;
      * Aid engineers in reviewing pull requests for security bugs;
      * Accelerate migrations from legacy systems to more secure ones;

They seem like good suggestions.  However, if you are going to use AI
to find bugs and perform the triage, then the project must have a very
good and comprehensive set of test cases (both positive and negative).
While this is needed for both Natural Intelligence changes and AI
changes, I believe it is more important because AI is not going to
have a lot of Natural Intelligence oversight at times.

[0] Assessing Claude Mythos Preview=E2=80=99s cybersecurity capabilities,
<https://red.anthropic.com/2026/mythos-preview/>.

Jeff
