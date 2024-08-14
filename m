Received: (qmail 5627 invoked by uid 550); 14 Aug 2024 17:19:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23621 invoked from network); 14 Aug 2024 17:12:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723655537; x=1724260337; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kdgZhsW2zZj54+RaxbTbrHYNWJIMpUtCPD1Q/bKbO2A=;
        b=l2aEL3WVzXeKMdD1amEY/PzH/sE0jq7m/C8gmQWZqsaUoU0JjrZfA8A2RZQRoHHOFQ
         4aXD8RsRM4DE7w4yEid7ycFFwev1kXYNZae4Uy36AYnpvxFlwr+jSw8gZUo4JelapgfK
         aX5MP8MQwWSVKlDlzo3T2BoEgSqE/K2uU4MR3ysOGsgDczP+JgY/My5ng3PBtAdH9IBE
         WJ1sWLTNN05QNMSXwDHFBz5npMBPR9DiDgImXVEPUOqrlGFXkaU2PJoyEVmF54bZlpHw
         Zyqj6VP+GdCfCEyO0vFxFVVZxussX1Yas2viYqmVdvWXbhYy7jv9ibpkUyRqX/tNmD8/
         NfNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723655537; x=1724260337;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kdgZhsW2zZj54+RaxbTbrHYNWJIMpUtCPD1Q/bKbO2A=;
        b=U3FP8Z5vQ+OtRfzyepGrC8TpeAIB013KIJPC4orRU24UVOSclI+qzogTUm0JOwtlqK
         uHx76EutNdAIgf78PkbjsSwT6eAT6txASapkyCAoij89fv89GILNCrntVgR3fIcgLFg6
         whnZ0sl6aCVCy5oHynp4hyyh6RTHlrkkaU3DUmoVs8XktECnn0FKiFYehZ2cvdZtADJZ
         rTM/nkN0668PsHFG1G2zn0PrtziY0X75AKDJMCn1RVdSp674qri3nn8NYK0IRs/jNZnv
         dXQ0cxPwmemXSylvfioCtrMvkFenKIK7yJ8+6sEaV5gb0oy8x4HmM79eV4DhmOanyKmg
         yHwg==
X-Gm-Message-State: AOJu0Yw0m601QoUufFUo8MCmPDzGH5qOZkjL1wTrylgCIcbqF8nRM7jd
	pUfcuHvm+1ZgfUEe+vjVa6ch1UOWpzKtRTXenOkkeYweX75XFDA0AuNypzx09KW8uIu3t9oiPXh
	M8ub4UJ9PGC7A7giJB1DIUzvK/aAUIg==
X-Google-Smtp-Source: AGHT+IGlQdouXwvAwemkSF52rUADXiR3AM2EloKxatuadhemWKSSctj1d5856/Y1KC91MVmPrDLzv+uhyeqgp8/vgbY=
X-Received: by 2002:a05:690c:c85:b0:651:ee07:76c with SMTP id
 00721157ae682-6af1f307e95mr3656977b3.15.1723655537418; Wed, 14 Aug 2024
 10:12:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
 <ZrwJHjO8c5IFN-JZ@dojo.mi.org>
In-Reply-To: <ZrwJHjO8c5IFN-JZ@dojo.mi.org>
From: Pat Gunn <pgunn01@gmail.com>
Date: Wed, 14 Aug 2024 13:12:06 -0400
Message-ID: <CADz+4x8E0Mj287TGUMkDss9V7FrnTQsHu17aK+vc3GpHoOLsuw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000005eac5061fa7d401"
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS 1.0/1.1

--00000000000005eac5061fa7d401
Content-Type: text/plain; charset="UTF-8"

OpenSSL is an important and security-critical piece of software; it's
important that it be maintainable, analysable for security properties, and
that at runtime people don't have to worry about weird old code paths
leading to breaches or instability.

Keeping these old code paths around (and particularly enabled) in "relative
perpetuity" is bad for OpenSSL and bad for its users because it prioritises
the long tail (that presumably see very little legitimate use nowadays)
over the main use; there needs to be some kind of cut-off and acceptance
that even if a few historical relics are cut off, it's better for the
mainstream. There are other things that will make those legacies harder to
use anyhow - cert chains, IPv6, potentially physical connectivity. Given
the weights of the interests involved, it's not that hard to peel the relic
cases from the it-works-automatically status into the
you-may-need-to-take-extra-steps status.

The Linux kernel removes support for old architectures for similar reasons.

If someone were to argue a metric apart from relative perpituity, that'd be
different, but I think any reasonable metrics of that flavour would have
lines that have already been crossed in terms of usage numbers or any other
measurable.


On Wed, 14 Aug 2024 at 07:37, Mike O'Connor <mjo@dojo.mi.org> wrote:

> :OpenSSL is currently considering the deprecation of the TLS 1.0/1.1
> :protocols.  Currently TLS1.1 and TLS 1.0 are disabled at run time, and
> :requires enablement by reducing the ssl security level value.
> :
> :The current proposal under consideration is to explicitly disable TLS
> :1.0/1.1 at build time, in our 4.0 release (tentatively scheduled to
> release
> :in the next 12-18 months), with an eye to completely remove the impacted
> :code in a future major release.  The default configuration could be
> :overridden to re-enable TLS 1.0/1.1 at build time.
> :
> :Questions to the community are:
> :
> :1) Are distributions/users comfortable with this approach in the time
> frame
> :proposed?
>
> Not really.  Entities who control the OpenSSL they run on their
> systems, OSes, etc. don't necessarily control all the broken things
> that said systems/OSes need to interact with.
>
> :2) Would builders of OpenSSL consider using the default configuration
> (with
> :TLS1.0/1.1 disabled in 4.0), or would they ship with these protocols
> :re-enabled in their builds?
>
> Either it'd be re-enabled in the build, or there'll be a fork that
> supports TLS 1.0/1.1 in relative perpetuity.  It was only recently
> that some mainstream Linuxes stopped shipping a compat openssl 0.9.8
> and all the stale protocol baggage that goes along with that, for
> support of some "business critical" commercial apps.
>
> :3) If the deprecated protocols are re-enabled, what would constitute a
> :reasonable warning mechanism to inform users that these protocols are
> going
> :away at some point in the future to pressure users to update to a newer,
> :more secure protocol?
>
> I'd be inclined to position such a move and associated warning message
> in terms of PQC, which AFAIK doesn't and won't support TLS 1.0/1.1.
> As PQC gets "refined", it wouldn't surprise me to see the quantum
> computing boogeyman drive out TLS 1.0/1.1 in critical applications.
> Let PQC be the spike that kills TLS 1.0/1.1 dead.
>
> I've been leery to post this for fear of going too far down some
> "quantum" rat's nest.  So please, be gentle.
>
>
> Take FWIW...
> -Mike
>
> --
>  Michael J. O'Connor
> mjo@dojo.mi.org
>
>  =--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--=
> "You can't teach an old dogma new tricks."                    -Dorothy
> Parker
>

--00000000000005eac5061fa7d401--
