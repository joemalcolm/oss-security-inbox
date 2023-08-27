Received: (qmail 19709 invoked by uid 550); 27 Aug 2023 19:02:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9699 invoked from network); 27 Aug 2023 18:56:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1693162582; x=1693767382; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Dzqa+nrhm3AZLbWxX8nwc/s3Z1dow4ddOwXi9Qo9Khc=;
        b=xyBFKkD+VaQ53xz42dItC2xEz1539+lbJoyxCLqTOOsOCHWJ0nIqi+MIVl1UQF7vM4
         uXOuZX6yb2S0YdXAhoSjmO99+2dAKUza9JnjGk6pR3dhQxpJCgT2axvgzOPGgqYQ2k72
         27x2om0W6KHAo8X06ciehOUYBRK1N2gEiSXTskvnfRlZeRw2ArJtJIkvoee/s1ocxC6Q
         qwXKYRFIO/vHwlkIscu5cQKHaLHHhrRAbGv/KmZ+sCxl0wxyC8Rz0tsY8oNTzaVfz5K6
         aG9uniPvrB6BTNjxLqNCGgb5z4G4afHUBICjWzLhtHboQ+oYpmh4FCSUq0mhCEzJU0D2
         u0Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693162582; x=1693767382;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Dzqa+nrhm3AZLbWxX8nwc/s3Z1dow4ddOwXi9Qo9Khc=;
        b=Ch14WdvPx50iNET/Dp6hLLbjFLCONwUu7HytQfzHHawkq8n5kyPLXjNMIAJavPX12j
         B2vP0ZrjYA7QMNkzW73hgQbApQMYPUBf05D9Nw3fllsqiSHSEXh3+lSkD8NdrJFOlOL2
         C5P0waBJfaoGDs41cSYnl/aO2rU3KLDoSiDW3l+IdcliMsNHfBMMDTLku/pC4sfs3vbE
         eHl4K7ZY2Ul3nw3lt9IZiZ7SAhkKEtVyv5j8cN3KcV2jn5KW2+l+Qga7M9EqlCI4tHA4
         ddaQoU9A6cJFHvQ5vYix2JalpJxsZdzie34aPFTcG3lErXS7JLDXSdWTG0vEOo2UiU3A
         lXeg==
X-Gm-Message-State: AOJu0YwwznYpGk5+GcaqdIVge40BJyvnGbH1av6RWNS19IhUJ6C9ea8N
	/ydpv0a5mQLMqT4LuqfSeKo5ad/3mdQ56cFsXhIlHSwjkcPPNrdBNVwHK1A/
X-Google-Smtp-Source: AGHT+IG/NP+DWLA3Ejghs67Vv3VA72S0OpRi34jus73eazrFbB/OxPEtkPRGXkZnOHIhuHXbvhc4L3Xn/1v0gCDT30s=
X-Received: by 2002:a05:6e02:1be3:b0:34c:b5cb:43d1 with SMTP id
 y3-20020a056e021be300b0034cb5cb43d1mr324323ilv.10.1693162582131; Sun, 27 Aug
 2023 11:56:22 -0700 (PDT)
MIME-Version: 1.0
References: <20230825222359.GA10424@openwall.com> <20230826023129.GA2930052@millbarge>
 <20230826214914.GA18442@openwall.com> <CAFswPa8ERS8LOgMTk_95Dyb7JO_z_82g1zJx9dUP54t1R8ZWGw@mail.gmail.com>
 <ZOuKYMvCQ8EqIx4C@itl-email>
In-Reply-To: <ZOuKYMvCQ8EqIx4C@itl-email>
From: "Eduardo' Vela\" <Nava>" <evn@google.com>
Date: Sun, 27 Aug 2023 20:56:12 +0200
Message-ID: <CAFswPa83igZYQN7oAEEZERPCyOuiJv3sFD_+SZx2M_g8fhJDbg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000041abdb0603ec2216"
Subject: Re: [oss-security] linux-distros list policy and Linux kernel, again

--00000000000041abdb0603ec2216
Content-Type: text/plain; charset="UTF-8"

On Sun, 27 Aug 2023, 19:41 Demi Marie Obenour, <demi@invisiblethingslab.com>
wrote:

> Does this include unfixed vulnerabilities?
>

The link* has more details, but briefly, deduplication is done by fix
commit.

Efforts to fix unfixed Syzkaller crashes (also something being worked on)
are complementary to the effort to generate CVE identifiers for them, if
that's your question (so, yes? Unfixed vulnerabilities found by Syzkaller
are meant to be fixed first and then a CVE is generated for the reports
fixed by their corresponding Fix commit).

Generating CVEs for Syzkaller reports without deduplicating them first
would be disruptive and useless (the link* goes into more details).
Deduplication is subjective as it depends on how the bugs are understood.
The analysis that is needed to deduplicate is happening as part of the fix
review process.

One could, of course, create a different mechanism to automatically (or
semi-automatically) deduplicate Syzkaller reports and accept the risk of
duplicate CVEs. This may be something to look at in the future, but it's
not what's being worked on for the first iteration, and we probably will
have a lot to fix and learn from even after the first wave of CVEs are
generated.

* https://github.com/google/cvelist/tree/cve-automation/fuzzer

>

--00000000000041abdb0603ec2216--
