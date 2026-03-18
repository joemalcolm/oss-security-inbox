Received: (qmail 3309 invoked by uid 550); 18 Mar 2026 14:49:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11679 invoked from network); 18 Mar 2026 14:36:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1773844567;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ZrF1Tyr9L2WNkam44wtFkvjeB5vf8PQ+KuQqELXAsL8=;
	b=O3YoX7adgMrDTEK1WrkwuG/FUWKZrDjJAPf45aTx025kqG+hIq0praPK/LyuQZWnnTqg1C
	dPRmBxyBYWklZDgWsIUyiFJmMmGP7dG6d+CKkVvqqjELmoSV/HYONA/6zd7ltPA1DtMkaM
	V9X7Ot+eHLx8JVrXpS+E6t1PhqNnQuw=
X-MC-Unique: RcnVO0dOOAqWfOxu1FjvHw-1
X-Mimecast-MFC-AGG-ID: RcnVO0dOOAqWfOxu1FjvHw_1773844564
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773844564; x=1774449364;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZrF1Tyr9L2WNkam44wtFkvjeB5vf8PQ+KuQqELXAsL8=;
        b=sZbL/1jREJWuIVB2A1/qIImTrJmXFjRNLYtja02yFUVOCr9xiJCop2n9zLm4N7M1VI
         Ic06RGLYaHcYqbvEDyX7+tZvAJ6c9BN9w4YrFTXntESWQeSMgThCxQjxUdMtiGOOnGGt
         yefkKlIlaUMka/JYtoE/AuZDIhLrxtjNazEBCKAtKkWu/fypk92DQfGCeYIiiexfnZWo
         BKkGApjyP6rC1ilKuDyBcZYDUlrDZXHiFFbJ4Z9lQfrrxbIyvYvGy7bFlGn/On00ULfZ
         qvxEBJ+71rn59O9yWQSykJYP9mZfzcNIZGSI/hydJIur99Vef3NmxqmKLXhJXdOr95AU
         4HIQ==
X-Gm-Message-State: AOJu0YyL/EBdjkmakZp52EgwA2Hv14xo4FSdiqhQr241UOU/clyj1/yK
	kFc6IvLw1tfoCW/y8EA63m9JluZTUGdcTyDvx9+UR5k+W38IYTgUdhXYOlh8DbtM3YKXTq2JIec
	UU8D1ZGUgGXk272sux+wB0k5PrkYp9BP1dvENG/k66mygSKouoqUop3ZyNcC/+zC0QAu/dAoYCb
	8pLb0c48nb44q9gJP9R0YJf6XansQxBnYbWcOrD3+zGzjcLuGDGUsk
X-Gm-Gg: ATEYQzz11VfXcqioSiPI+5wogoFocV4e+IyUgoXjzytidHOLBz3mV/XlGUX5Ndu6P29
	wOOyte4uwbA8u6iqw6cfdkt5c5EfOzogAX06OzT09f/kdGwi2LK/EKcbSgpum27Snr5m5TXnyZH
	mJmzWQzKOGwtaq7NdbTT4ncjb58Wwn7HE1DbIa9JodJe/v5FZPLhqV/jYJIHG4XnC9KydOu7+nh
	3ZwCw==
X-Received: by 2002:a05:6512:39c3:b0:5a1:185e:75a4 with SMTP id 2adb3069b0e04-5a2796b077dmr1550333e87.20.1773844563808;
        Wed, 18 Mar 2026 07:36:03 -0700 (PDT)
X-Received: by 2002:a05:6512:39c3:b0:5a1:185e:75a4 with SMTP id
 2adb3069b0e04-5a2796b077dmr1550317e87.20.1773844563288; Wed, 18 Mar 2026
 07:36:03 -0700 (PDT)
MIME-Version: 1.0
References: <210c77d7-6b3a-45b3-8618-d18635efc5e6@canonical.com>
 <CAOcQRVW0Nestm-mMxnEzbb=cTEy_chVaoy8rm7Aqwc5OkadHVw@mail.gmail.com> <20260318140859.GA28877@openwall.com>
In-Reply-To: <20260318140859.GA28877@openwall.com>
From: Dmitry Belyavskiy <dbelyavs@redhat.com>
Date: Wed, 18 Mar 2026 15:35:52 +0100
X-Gm-Features: AaiRm51GZn8YXzVSrOebSM8nLoCQDDf5Sb6HYKdWQ2wEGCMtWRnFRewdlomqBNE
Message-ID: <CAOcQRVUSSouoKX9-La7TBOYkySUbvZiQAjk1WOggu6Pw4D_mVA@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 71MNkv9JEwNFiyVnK4yJox5BVOQP0DDqgbGbw4prl9w_1773844564
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="00000000000014fdb3064d4d5f3f"
Subject: Re: [oss-security] OpenSSH GSSAPI keyex patch issue

--00000000000014fdb3064d4d5f3f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear Alexander,

On Wed, Mar 18, 2026 at 3:09=E2=80=AFPM Solar Designer <solar@openwall.com>=
 wrote:

> Hi Dmitry,
>
> On Wed, Mar 18, 2026 at 09:14:31AM +0100, Dmitry Belyavskiy wrote:
> > Can we somehow establish some better coordination in case of widely used
> > downstream patches, especially for such an important, ubiquitous and
> > heavily patched component as OpenSSH?
>
> This was brought to the distros list on March 5.  On March 6, I wrote:
>
> "Looks like Red Hat packages are also affected.  In particular, I looked
> at openssh-8.0p1-gssapi-keyex.patch from RHEL 9."
>

> so it's not like Red Hat could assume this was limited to Debian/Ubuntu.
>
> I now recall that something similar happened on a previous occasion,
> where you were not aware of a relevant issue until public disclosure.
>
> So we seem to have a question to the Red Hat security team here - are
> you going to be informing your package maintainers of embargoed issues
> (which I consider fitting the need-to-know condition of the distros
> list), or are you deliberately handling them differently, or neither?
>

Thanks, I will investigate it.


>
> I suppose this could reasonably vary by package - security updates to be
> prepared by security team vs. by package maintainer.
>
> Should I be taking care of notifying Dmitry for OpenSSH specifically,
> where we know that he's eager to prepare for these disclosures but is
> often left out of the loop?  IIRC, from the previous occasion I actually
> planned to start doing that, but I forgot, I'm sorry.
>

No problem, thank you! I think OpenSSH, being heavily patched, deserves
some special procedure, and can invite you to the discussion, if you are
interested.

Meanwhile, I see the Mitigation section in
> https://access.redhat.com/security/cve/cve-2026-3497 has been updated to
> correctly refer to GSSAPI key exchange rather than authentication, but
> it still seems to imply the default configuration is affected - which I
> think it is not, or is it?
>

I don't think so; I'll double-check.

>
> I wasn't too concerned about this issue for the Rocky Linux SIG/Security
> package that I maintain because we build it without Kerberos and GSSAPI
> support since March 2024.  The patch is still applied, but the
> GSSAPIKeyExchange setting does not exist for real (is silently ignored
> via an extra patch for compatibility with FIPS configs that disable it),
> so it can't possibly be enabled there.  Ditto in CIQ's RLC Pro Hardened.
>

Thank you very much!

--=20
Dmitry Belyavskiy

--00000000000014fdb3064d4d5f3f--

