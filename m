Received: (qmail 15469 invoked by uid 550); 4 Jun 2026 23:48:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5861 invoked from network); 4 Jun 2026 23:38:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=who-t.net; h=cc
	:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm3; t=1780616305; x=1780702705; bh=E0+9pHXB8u
	JzS3YHedqvQidTubO3auTRZ3BqGo75bSI=; b=xfhcmVAzPU4oKFwYx4D6o5SbSq
	3Q4A2ICN0VSvyf2Bh9zzSlXfMubhPmN/Bdq1r9EdWcMubFHsZbW63eN7jC8X6mYb
	80c4HrhzhdSYh6ETfs3hyWqU5cyYq/GpnZmqECejIOZSUPUFiNGhhE/eZ/mMr1w0
	PnHLPVlyQ3M4BJ9nczxhQRE85IjNFSuR2EC1gn6RFl7vRj5XCtCfitgsIp2EaylE
	iJaX6+FE9K4nlGa/7NqFo4kub4jb7v/+IVOrqjIsxXANLHsgr5Crzh2UGUxhASak
	kbomOyvnbEYthmQJczUKlE3c8vVWZh9G7km9K6O4Th4UNKBCIB2xyc4iLxnQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1780616305; x=1780702705; bh=E0+9pHXB8uJzS3YHedqvQidTubO3auTRZ3B
	qGo75bSI=; b=ZlniX+UReIOKkT6TATZm9ZoxwOcEiL1pfxwAZdLRXh+rzwGySwW
	RsftlIcbB1clS8mLSUIqvg9Tn9UzFX1jlXstcmx6ufurCsJoc/widcxhyQMcwYOk
	C2bpbdu+2ZbBYd6aDetiZENyYEmNFQz/ltMJwfkDaN0W+gem2EXBPfnO64xH2mQi
	snfZE1Q3XNN7GxH/SIN3tojTzuL6clSM337Zpg2TeXhsS+OfMx8mXCXfOjlf3sJN
	bJVGeflYto1UDrsj3vF3kAwwjE7xeo0JzoSnRt4gA1Iup2vFbyWSL99f/AzPe7IX
	xOd4Emcgu7gYrbxs8yQEsSDaOzUjOJFQxCQ==
X-ME-Sender: <xms:cQwiahrJojF2KQPJT4Gh-cqS_tAZBnmMiRlPG0w-fynDEcUggR8U0Q>
    <xme:cQwiaqkQlfnpCFYYqgXvb6wZ9cwo90tA4Slicbbdq2iBk1ppEXntJdVR-vpHiYUXJ
    fKXAo5VkTVzm3frJVCyOjfv2pYloXeAu04qAgQkZmKYRNW8fPHbqr8>
X-ME-Received: <xmr:cQwiaj1ZXpf57XuJipoLENxY07th7NPSVo0HIfZ9eoeFGWC4RWEQyriCbAn5QD0NzlGiBlInZE1aJ4Ik3H5dj2BgW6px-vRjFiZz>
X-ME-Proxy-Cause: dmFkZTEaWtldrkT309Uwswf8Gr5YfVElA+D02vnE3DD/pcUwOFmpUiT+uHoQWttH9p4tkc
    Zlf/kMhJaeBUWWYv8h/YfHaC/jLo+W/Dt848Fac1YtwvorB8v/HZpluhvHxlXeiIW1IHUx
    bnAW9OoAgAjYSAzqZncMiWTDFAhYe06PXcKkJl1r7IIZlOwzVlsfu5PiasOVLQl6ZJCLv0
    dY2aIc4e4dqd+m/RQlUuphqwzJuwjAUgFxepRohTvuOY3ZRINN1usj3WpzAkT607hU9wzg
    t2ZnQiCggF0wUCRA91dVTZqMfNdD/VnyvlTWswUHVSRSj0co/F8c/uXTmaebCI2OLHUgWN
    WwyNaSkdrA2YzDo+/spRSNUzA4ECi6o1uf647XtsXU4m7pnwChSLg74y8Y4XhmElnWI6gX
    S1puoNHcfmddcrc5mCpfqyOaFcFUDU9caHAcvp66fXM6vnBjj+YP8iG5Mu1dBmrKV5MLY1
    EnAFwF1jfUQpLTBFcwXRc0mr6tDpmv+RhiUVWL6S8NZGUlzWg2S0YwLTgksNmG1zrRudES
    GgMiTvdOiR+NUnHDBN6TkoUl9rcGJGAvAQEYstc0v5JRlbGHjSmUlWV0DAJBmFE7g/W7Gj
    rR+CJbgkkMdAhTf1c37M7wucAiJAcwzCsAEamDlDKXoG9kKv4WMsmQXbsA7g
X-ME-Proxy: <xmx:cQwiaiBOCsovqUyJVwAgcPdDpL1ahptsZRd0mC1ti44wuXLAUbsoQQ>
    <xmx:cQwiagz5OK-Ri3YnXstPE-_EKbacrLlVVoN3tMo0kie6GylfzE4KwA>
    <xmx:cQwiagm_vYvqOPJS5IQCKTZWIHTNDg85psg-SUIUykLDs8odrZ0Y1w>
    <xmx:cQwialF2t_K1CJjcidL0ChX0OoaIn4Y574Dg1jPtJAZxZREdRbf6yQ>
    <xmx:cQwianw2d2y_kuw1dofc3VyrdaFtq_7OZqsx73y-uwXbD-hwkj2b4guo>
Feedback-ID: i7ce144cd:Fastmail
Date: Fri, 5 Jun 2026 09:38:19 +1000
From: Peter Hutterer <peter.hutterer@who-t.net>
To: oss-security@lists.openwall.com
Message-ID: <aiIMPvapb9WSKlHM@quokka>
References: <ah4eSpv9hMfFZNAy@quokka>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ah4eSpv9hMfFZNAy@quokka>
Subject: [oss-security] Re: FW: X.Org Security Advisory: multiple security issues X.Org X
 server and Xwayland

Hi all,

CVEs have been issued now, please see inline below

On Tue, Jun 02, 2026 at 10:01:46AM +1000, Peter Hutterer wrote:
> =======================================================================
> X.Org Security Advisory: June 2, 2026 
> 
> Issues in X.Org X server prior to 21.1.23 and Xwayland prior to 24.1.12
> =======================================================================
> 
> Multiple issues have been found in the X server and Xwayland implementations
> published by X.Org for which we are releasing security fixes for in
> xorg-server-21.1.23 and xwayland-24.1.12.
> 
> Note that CVEs have been requested for these issues but did not get assigned in
> time for this disclosure.
> 
> * Font Alias Stack-based Buffer Overflow
> 
>     A mismatch between the X server and the libXfont2 library's maximum
>     font name length can cause a stack buffer overflow during font alias
>     resolution. The server allocates a 256 byte stack buffer but libXfont2's
>     alias target name length is 1024 bytes. A font alias name between 257
>     and 1023 bytes causes the X server to copy that name into the undersized
>     stack buffer without further checks.
> 
>     Fixed in: xorg-server-21.1.23 and xwayland-24.1.12
>     Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/bb5158f962dc935e58ef8b4b5fcb31be201a6e07
>     Found by: Anonymous working with TrendAI Zero Day Initiative.
>               (ZDI-CAN-30136)

This issue has been assigned CVE-2026-50256

> * XSYNC Use-After-Free in miSyncDestroyFence()
> 
>     A client that sets up multiple fence triggers can trigger a
>     use-after-free function pointer call. An attacker would connect to the
>     X server to set up a fence and await that fence, then a second X
>     connection destroys the fence, causing the use-after-free.
> 
>     Fixed in: xorg-server-21.1.23 and xwayland-24.1.12
>     Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/f5abfb61994471023d8c6470428c8e30c411cc0b
>     Found by: Anonymous working with TrendAI Zero Day Initiative.
>               (ZDI-CAN-30159)

This issue has been assigned CVE-2026-50257

> * XKB Key Types Stack-based Buffer Overflow
> 
>     The X server has multiple stack buffers that are sized
>     XkbMaxShiftLevel * XkbNumKbdGroups but CheckKeyTypes() does not verify
>     or clamp non-canonical key types to XkbMaxShiftLevel. A client can
>     change key types to excessive shift levels and trigger three separate
>     stack overflows.
> 
>     This is caused by an incomplete fix of CVE-2025-26597.
> 
>     Fixed in: xorg-server-21.1.23 and xwayland-24.1.12
>     Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/543e108516428fc8c3bea91d6563ad266f9a801e
>     Found by: Anonymous working with TrendAI Zero Day Initiative.
>               (ZDI-CAN-30160)
 
This issue has been assigned CVE-2026-50258

> * XKB SetMap Request Stack-based Buffer Overflow
> 
>     _XkbSetMapChecks() declares a fixed-size stack buffer mapWidths[256]
>     indexed by key type index. The helper function CheckKeyTypes() writes
>     to this buffer at a client-controlled offset, allowing a stack buffer
>     overflow.
> 
>     Fixed in: xorg-server-21.1.23 and xwayland-24.1.12
>     Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/867b59b33bee669cb412f1314e47c52eacf6e00b
>     Found by: Anonymous working with TrendAI Zero Day Initiative.
>               (ZDI-CAN-30161)

This issue has been assigned CVE-2026-50259
 
> * XSYNC Use-After-Free in FreeCounter()
> 
>     A client that sets up multiple SyncCounters and awaits on those
>     triggers can trigger a use-after-free when destroying those counters
>     via a second client connection.
> 
>     Fixed in: xorg-server-21.1.23 and xwayland-24.1.12
>     Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/f5abfb61994471023d8c6470428c8e30c411cc0b
>     Found by: Anonymous working with TrendAI Zero Day Initiative.
>               (ZDI-CAN-30163)

This issue has been assigned CVE-2026-50260
 
> * XSYNC Use-After-Free in SyncChangeCounter()
> 
>     A client that sets up multiple SyncCounters can trigger a use-after-free
>     when destroying those counters via a second client connection while
>     changing those counters.
> 
>     Fixed in: xorg-server-21.1.23 and xwayland-24.1.12
>     Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/bdd7bf57af208b1ddf57d4683d67104443b44812
>     Found by: Anonymous working with TrendAI Zero Day Initiative.
>               (ZDI-CAN-30164)

This issue has been assigned CVE-2026-50261

> 
> * GLX ChangeDrawableAttributes Out-Of-Bounds Read/Write
> 
>     A wrong size validation check in __glXDisp_ChangeDrawableAttributes()
>     can read (or write) a client-controlled number of bytes, exceeding
>     the request buffer.
> 
>     The write path requires byte-swapped clients which is disabled by
>     default.
> 
>     The read can lead to information disclosure, the write can be used
>     to crash the server, or for privilege escalation if the X server runs
>     as root.
> 
>     Fixed in: xorg-server-21.1.23 and xwayland-24.1.12
>     Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/6d459e4daf715bea8abdafa8fb130be2f8a1d145
>     Found by: Anonymous working with TrendAI Zero Day Initiative.
>               (ZDI-CAN-30165)

This issue has been assigned CVE-2026-50262
 
> * CreateSaverWindow Use-After-Free Information Disclosure
> 
>     A client can trigger a use-after-free read after changing window
>     attributes and forcing the screen saver. This can lead to information
>     disclosure.
> 
>     Fixed in: xorg-server-21.1.23 and xwayland-24.1.12
>     Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/ecc634f1b2f7aa473d3a267eada98c4918bf9e05
>     Found by: Anonymous working with TrendAI Zero Day Initiative.
>               (ZDI-CAN-30168)
 
This issue has been assigned CVE-2026-50263

> * DRI2 DRIGetBuffers/DRIGetBuffersWithFormat Out-Of-Bounds Write
> 
>     A client that requests multiple DRI2BufferBackLeft attachments and one
>     DRI2BufferFrontLeft can trigger an out-of-bounds heap write.
> 
>     Fixed in: xorg-server-21.1.23 and xwayland-24.1.12
>     Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/339c279514326134b0878fc23ce6e9520440ce7f
>          https://gitlab.freedesktop.org/xorg/xserver/-/commit/b7aa65cc3bb11b792ce2a3f511ba9b863acb11c8
>     Found by: Peter Hutterer, Red Hat.

This issue has been assigned CVE-2026-50264

Cheers,
  Peter
