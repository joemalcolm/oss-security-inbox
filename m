Received: (qmail 5261 invoked by uid 550); 4 Oct 2023 13:15:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32286 invoked from network); 3 Oct 2023 23:04:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696374283; x=1696979083; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FXxIphzn9qLp3GZqLzf9KipWCUnOGqu7MqNxzNVU+rc=;
        b=lEJoYMnzqSMfZSTyfJuwbM4gC5mX7iqXoP/KzpFsiT8pxPXdXNBahzJSmqFoIpFqTj
         6Y76Y1Q95EOkd2oU/MjviGj+oZIuoqu5dDS1KTryXbAF8F5mIY8s0yMhPnxN2R+HNA1Q
         Y6+GRxDQL/u0n/NcFQcc36jV2XxnRzT5uOLXVkLvMlajPVk6NQ+A23GXSlc6fICE9qsb
         6KEOka7HWIPCUqRbsp7KRBiIziZbR3i4hUKCppTjYzBfOA6XelFaexCOlvvnGHeOqAEb
         yPK5A7c7JMPa4fFR+UKOKcl9ZELfshCbtxutqP8W6zvj0v6btABSjTxCIKAtfE6+hrnl
         0lsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696374283; x=1696979083;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FXxIphzn9qLp3GZqLzf9KipWCUnOGqu7MqNxzNVU+rc=;
        b=L+YrJ0PkLVWAm3uVoJVabQLMiTRfF6zRC3lw7kvkPSJ2mKp0s2sTT0s1/EFqx4hlE/
         tyjymytWwSEKPieMEKm/5fm8frqI9sduER+N9Wo2wgFZInEGv4rsOGgX2VO/Oc73zOP7
         ZeJApG1T+mD3ZIok2SIUiS8FNFCdwved3ShIlaqtyOZv5/1OcnnjwahOZLeaEG9aOFlQ
         +LXN41X9yae3VXJx3X0UiNKd3R05H79JEzb5OQmNxJGRjnpi2uuEfQGb6pGra2rusHar
         llHecvEnHd1lIp56xMT6xIw4ZT+94Umywwy+PFJF/OnLzNXmyqeCTlOOWBAwxA1i/yK5
         FtPQ==
X-Gm-Message-State: AOJu0Yz8yVhOlzPt6pF1ChMoI1oyuvaZ2IvOUU3kxOI7NG+5ywc6U219
	mk6WR965pRw481AIY81K/vSPvLhCnKv6hZwfSW1olCIM
X-Google-Smtp-Source: AGHT+IHyubdA7QITFu0Sq0tN2ZrgU7S12OWIr7mRoeg4bk3XLAx1rHSzHQFZK+Wlp8R0wcwz8suMxTgToPPv+FJE3Yk=
X-Received: by 2002:a0d:f8c6:0:b0:59b:5696:c33 with SMTP id
 i189-20020a0df8c6000000b0059b56960c33mr889533ywf.46.1696374282750; Tue, 03
 Oct 2023 16:04:42 -0700 (PDT)
MIME-Version: 1.0
References: <E1qko5Z-0003cF-KD@xenbits.xenproject.org> <ZROMd1GCpD8uDtbE@itl-email>
 <20231003201212.GA24599@openwall.com> <1786f020-2af8-4adb-bb4c-5dc87c545dcd@citrix.com>
 <20231003214424.prarc3aboi3ar7zk@yuggoth.org> <CADxcaYUe3Mj-VYn7j5T_JoF-vhDeqxJh9CZXm-r+z27zrnjwow@mail.gmail.com>
 <20231003225156.GA26670@openwall.com>
In-Reply-To: <20231003225156.GA26670@openwall.com>
From: Jean Luc Picard <atari2600a@gmail.com>
Date: Tue, 3 Oct 2023 16:04:31 -0700
Message-ID: <CADxcaYX-XvrKe4R-mSzK2iNVm9F_dRtz1Bf2Zi8jqWbCXGKK9g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000008791a70606d7eaf4"
Subject: Re: [oss-security] Xen Security Advisory 439 v1 (CVE-2023-20588) -
 x86/AMD: Divide speculative information leak

--0000000000008791a70606d7eaf4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

No intent?  It wouldn't be terribly hard, they could just RNG over the
register afterwards or run a 1/1 to nullify any data left therein.  The
latter would require control lines to be in place, the latter would just
mean extending the microcode instruction.  That said I could understand the
want to depricate zen1 support entirely, everyone upgraded when they could
it was super super cheap to do so & there weren't really any enterprise
users.

On Tue, Oct 3, 2023 at 3:54=E2=80=AFPM Solar Designer <solar@openwall.com> =
wrote:

> On Tue, Oct 03, 2023 at 03:02:41PM -0700, Jean Luc Picard wrote:
> > Hi, just dropping in, is this the kind of thing to where the userspace &
> > kernel layers need mitigation until there's microcode mitigation?
>
> In general, kind of yes - it could have been that kind of thing.
>
> More specifically, no - in this case, only kernel and hypervisor
> and system configuration (disable SMT) mitigations are expected.  No
> userspace mitigations, other than maybe specific algorithms avoiding
> integer divide operations based on secrets where they can.  While AMD
> maybe could fix this in microcode (or maybe not, or maybe with
> unacceptable performance penalty), they expressed no plans to do so.
>
> > On Tue, Oct 3, 2023 at 2:46???PM Jeremy Stanley <fungi@yuggoth.org>
> wrote:
> > > On 2023-10-03 22:37:08 +0100 (+0100), Andrew Cooper wrote:
> > > [...]
> > > > If you have a proposal for how you'd prefer it to be done, I'll see
> what
> > > > I can do.  Perhaps BCC oss-security, or just send out a second mail?
> > >
> > > When I send advisories, I prepare two basically identical E-mail
> > > messages: one to the project's announcement list and one to
> > > oss-security (signing both of them). It seems like this is the most
> > > common approach to avoiding cross-posting between lists.
>
> Andrew, sending a second message like Jeremy suggests works best.
> Bcc currently isn't expected to work at all.  Thank you!
>
> BTW, in this case I think the problem was actually for Xen's lists more
> than for oss-security - you included xen-announce among the CC'ed lists,
> and this means e.g. Demi Marie's reply was attempted to be posted to
> there, while certainly not being a valid Xen announcement.  However, I
> guess external messages to the announcement list are very easy to reject
> on your side.  It's not so easy for us on oss-security because we've
> setup some senders to bypass moderation, yet those people participate in
> threads on other lists that might just happen to be CC'ed in here and
> they might not notice that the rest of the sub-thread is moderated-out.
>
> I'm not too concerned about this issue with Xen announcements in
> particular - things have worked pretty well with these so far.
>
> Alexander
>

--0000000000008791a70606d7eaf4--
