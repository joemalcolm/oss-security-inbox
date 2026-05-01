Received: (qmail 13874 invoked by uid 550); 1 May 2026 17:11:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5483 invoked from network); 1 May 2026 16:15:25 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1777652115; cv=none;
        d=google.com; s=arc-20240605;
        b=L8/C6lH+g6eD9ORHnbFunm0+Xzk08R6rJWPprLPmhG5UZSjZkZlfT055dYZCqq5Aq9
         ysTUIwosQz9LRESFT8XLbCLsT8VpgfO3Jm13ELWDkLUrsiEyxA43bP2Z6/rP4DCvj2pa
         LEaW3q6Ri5o6CNyj4Bg3DVyHROTCvFhhPN0Y3BZvbroUyw1CXc5euV4267/t0TqUZ7Ar
         dcaR77TqzS+63HVVpT1idiOAgDRNTwLkzRlDtAprXfRkPvtt09F05n1ALiO0qF/JCdfH
         O/ZuMhW/5zK1uuQ/StELTp6LuIRm79QYKVRdrVcmtQ4YAwVGLGIq0iIUTv01/azHMyAT
         yU9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=v5onpRH9D96c9WC8elC8HfD2Ey98L15Ebzx8U6pU6Ss=;
        fh=qy73Zd1ljdWv+GVyTh660jxfEHu6wmPcxrw5oneEyrk=;
        b=Yb3hu9qK1BvFq11Og5tFKUQ39BrKa/BQvnQhMvk3XtS+k4AcWvKMk9yugMzZrt/KOX
         /2wUDXFicZmomIVm1V7JWSH8F5HiOpChubFjUDhNNyTMAWZtv733aT/YHd6wbctwoy4s
         yF3eKlbKyawMiGLL5wLY7fofd6S3vF2oJJW7dDH1Qhv/8PwqfKAINbQXbfgBy4DabnXs
         HQftUWEQdbPOkxy1wX7x4g0fD/IZivu3Hzr3RGyi1Yahnb8jXRdNFP29kOQ/IRSENVcK
         YkyL7MvLATTwGa0SUiwFJMuy3lGhqfCTfrMlV88356rA1sNkjjtHw7BaEng+89ZdLIQ0
         bvug==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777652115; x=1778256915; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=v5onpRH9D96c9WC8elC8HfD2Ey98L15Ebzx8U6pU6Ss=;
        b=qOR+ZWcjoqzJ6R+d9BpKrqUDjO4GgMd3WjntAxdXDobhRFQ7mLt2s0ziGE+vq03cRL
         yRqa8OytMdrkCrSo6it9wG5KmorzzGe4T+TogA46jqVTFNSgN4LFbUmzXgAnWVUiOhsG
         uXbfpGFeSOErOENLtTC9zHSjzLN1OL0gAax7QuHUi6x7xlfYKveYs+Bk92jaitOEj4Fb
         UUQuvKrayuIlQWVBkGi1jI2tkQ6iuCn5K2VKzhy9i9ajZSIMVCUSPEasvaTfIfk458AQ
         9IzD0ivUvgBXIYPuUEC2TFePMcuSk0HB9ey1kZjMDhIOtPCYiVTf0zB3li0ySHRJdD9f
         dQ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777652115; x=1778256915;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v5onpRH9D96c9WC8elC8HfD2Ey98L15Ebzx8U6pU6Ss=;
        b=AZQIZaPJwToIXSCmr4KboiL8dz4viDR8DDyiMtWN9S1sLPGZtpz3BNo60oDu7dsCUy
         Y9ZQgW1rop8nmQsNs3xNHr2hssm0HB7NBGg3H7n+2XAbOCpg/MudCPnwWaG7/s82DbDH
         cN08YiLCwJxBYOKXfRlxiV/zHrmGn2Ztdi7PSrDlYcFe21vutrOslkYxne+bnsZeSMyj
         u8mHr1R2NYOQBYBPvtrj7j3/4Dwp++F6isUIJ3Y7LLRfoVkbTLolE2E8PRf88hGgI084
         MMaJ0Ddy7BJKV07Gelt8KilAcJkoZxuOzl4MLvGs/hkiNV/cH+OSp66imw97Z/iWWr9L
         7fbg==
X-Gm-Message-State: AOJu0Yy8mJpiULlZOcX+HxHvhK1k+Wm2NKFjq5zWtbXSYozOJbHswLtG
	q42T+l402zS3AWzLLTu3qJxGL45CVvpSkFHOX4Z0ev3sUoODcA2iHBhMkKwZwa9F+3u6stdKQ6W
	XSzIoBDfnojGotYlehIHctArEcu6AJsChmpxe
X-Gm-Gg: AeBDiev9ot8zbvZsWPd+lqeE0+yofVOrqZl4rd4nPFoQmeZ/Qi8eZGmRdaweaNF8Be2
	aiU0HUaMtFhr2WheGiZv+GVQ2v7mv+i6zFPyFGtiDwYMHsUh/brAMOVUHqJp+MbPr8oLc4fX26Q
	k0SJ4RKNX6JkqJLCI8AS+j1lA63SMebXw/bdHM2ujAeydx6aVZrjO2RA83VwJEewk5OclHwl9EW
	yo7w89807A+97MoaHduxI/em0GRdOhakPpm4QO3kCB08o93mCPl2h7Ov8zXd2/kLGXOamIL27bb
	b7U5cBHZnwhPTvPsPw==
X-Received: by 2002:a05:6102:54a3:b0:605:6089:674a with SMTP id
 ada2fe7eead31-62ad4d93d9cmr4404285137.23.1777652115186; Fri, 01 May 2026
 09:15:15 -0700 (PDT)
MIME-Version: 1.0
References: <20260316025816.GA14368@openwall.com> <20260430235948.GA31035@openwall.com>
 <13e85097-4ba4-4911-8443-6dd35d291b3d@gmail.com>
In-Reply-To: <13e85097-4ba4-4911-8443-6dd35d291b3d@gmail.com>
From: Kevin Backhouse <kevin.backhouse@gmail.com>
Date: Fri, 1 May 2026 09:15:05 -0700
X-Gm-Features: AVHnY4KgYfDFyQriy43nWGMf2mPFgfJaFkHiU2tquxDcMi2l0fDUL4NvmgRClvU
Message-ID: <CAMKvgcS+nx6FytpZCygev+RD6gd0qgzxBtkhn7QgkVPpf3eKqg@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Solar Designer <solar@openwall.com>
Content-Type: multipart/alternative; boundary="000000000000dc28a10650c3e257"
Subject: Re: [oss-security] 10+ CVEs in GStreamer

--000000000000dc28a10650c3e257
Content-Type: text/plain; charset="UTF-8"

Localsearch improved their sandbox a few years ago to
address CVE-2023-5557. Previously, the main thread wasn't as strictly
sandboxed as the worker threads, which is how my poc for CVE-2023-43641 was
able to break out of the sandbox. But their new seccomp sandbox looks
extremely strong to me. If I remember correctly, they've made it so that
the process that parses the untrusted files cannot even send arbitrary
D-Bus messages. It's restricted to only communicating with it's parent
process, using a very limited protocol. Last time I looked, I concluded
that a sandbox escape would be hopeless. There are probably other
applications that use gstreamer which are softer targets though.

Kev

On Fri, 1 May 2026, 08:38 Demi Marie Obenour, <demiobenour@gmail.com> wrote:

> On 4/30/26 19:59, Solar Designer wrote:
> > Hi,
> >>> The GStreamer library is used to parse multimedia files in Nautilus
> >>> (GNOME Files), GNOME Videos, and Rhythmbox, as well as in the
> >>> localsearch search engine (previously known as tracker-miners)
> developed
> >>> by the GNOME project. This engine is installed in many distributions as
> >>> a dependency of the tracker-extract package, which GNOME uses to
> >>> automatically parse metadata in new files. Among other things, this
> >>> service indexes all files in the user's home directory without any user
> >>> interaction. Therefore, to perform an attack, simply create a specially
> >>> crafted multimedia file in the user's home directory, and the
> >>> vulnerability will be exploited during its automatic indexing.
> >>>
> >>> In most GNOME distributions, localsearch components (tracker-miners)
> are
> >>> enabled by default and loaded as a hard dependency of the Nautilus file
> >>> manager (GNOME Files). Starting with GNOME 46, the localsearch process
> >>> runs in sandbox isolation. To disable metadata extraction, you can
> >>> delete the rules files from the /usr/share/localsearch3/extract-rules/
> >>> or /usr/share/tracker3-miners/extract-rules/ directory.
> >
> > I don't know how good or not the mentioned "sandbox isolation" is, I'd
> > welcome comments on the risks involved and potential further hardening.
> >
> > Alexander
>
> Last I checked, the sandbox was not very good.  In particular, there
> were seccomp rules that were thread-scoped rather than process-scoped,
> allowing for sandbox escape.  It might have improved, though.
>
> My current opinion is that it is possible to create a truly strong
> sandbox on Linux that is nearly as good as hardware virtualization.
> However, doing so requires severely limiting the number of system
> calls available.  The attack surface is then mostly limited to memory
> management, which KVM also has to some degree.
> --
> Sincerely,
> Demi Marie Obenour (she/her/hers)

--000000000000dc28a10650c3e257--
