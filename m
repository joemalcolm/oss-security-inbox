Received: (qmail 27936 invoked by uid 550); 11 May 2023 12:55:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25799 invoked from network); 11 May 2023 03:02:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dgl-cx.20221208.gappssmtp.com; s=20221208; t=1683774129; x=1686366129;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=18m8/fxiWkcjIJbZ8BOGAVp4l4irO9T35RRsnpA/Hpg=;
        b=hRZbP3i0VAtxV2s4cnnf2kmnZzokrPmqbhaiU25KuKyIu49YURMKFpZ3wdkYoPMd2X
         sRqWC8JXkerDb9eNRso5BcKzLWP7yIR/ajSq5DKCb6Q8DJDGAI1DiTf87SlRsU2+qZE+
         GhJLjsYnlXJbfMNFZ5S3bZ88u+gBFvjSZCsQQFscT29bYdmwl0Su1cDmUU59lVGEZyLO
         ZZrv6I/EDIXbGZDtq/Ix27Q/HHAQCL1n0Kq8S82m9l0IqootpTrTSWQ+WkEOexdZT8Gm
         aKfcj6qP6NEdKdupeEe+S29WW3LIT02nNCApMLkySODpFLXiba2ohd8gaV01ehi2Fo7v
         cuVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683774129; x=1686366129;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=18m8/fxiWkcjIJbZ8BOGAVp4l4irO9T35RRsnpA/Hpg=;
        b=QtWq74JyzDC+TIyl/BBnbR3lhq6JCUuSbYx2HfjFGDjXLQyPaIZbqqnUBVmsfISJOH
         t3fWdDgGYo7med5jzLKK3AG8UW3t25eHS50bhHIy98pBChRxBNdWbpLwGpzZ3RPIZysw
         FnRndevtUsbWzB9U6spGaVIqjmgq72jKGWpaj0OErygYZeuIOyCsZCTwFrdHTOiQy4Js
         7zKz09zy9OGdB9rEym4i73y3GHC/G0TRsfgYMEzg3WqwtEFWkUVVUXdd27Bl0K4yRpVX
         j7vtPHonJcnKac/iZIJ0uLUQoIX7+saAASm+m0cKl8TqajBAb2r16Pr/vq5EXTJmUoKO
         gAAQ==
X-Gm-Message-State: AC+VfDzPt9hCrmeMChEzupavl7Z2p7S9gOi5FRnQPzD3QKal3fmWj46g
	ywayJsXRmr7sj9l7CY4gQiz3xbw9skNecuWLAwbDt2qg0ghvECGVeQA=
X-Google-Smtp-Source: ACHHUZ4IIuK7r2O37LyauZXdsZZ2pWkpAuVj3QdmyKXmWBIx+IV2WgeVbNVPlg7KiEB7dOFZXHSfffKVMVyONfuD2x8=
X-Received: by 2002:a67:f6c9:0:b0:42e:5257:62fb with SMTP id
 v9-20020a67f6c9000000b0042e525762fbmr7279398vso.27.1683774128942; Wed, 10 May
 2023 20:02:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAD3upLvuttgu3i6qZyB2LLY2CPcTvMdhQQLKdAYV2eoPD5Wjjg@mail.gmail.com>
 <20230510165545.GA25380@openwall.com> <ZFvuu+PpS3BO2T/t@quatroqueijos.cascardo.eti.br>
 <CAARv3RQS-sV4JCkRCJ1EOgfi+9MR0G8MsiS-xT9gXNjddqmJ-A@mail.gmail.com>
In-Reply-To: <CAARv3RQS-sV4JCkRCJ1EOgfi+9MR0G8MsiS-xT9gXNjddqmJ-A@mail.gmail.com>
From: David Leadbeater <dgl@dgl.cx>
Date: Thu, 11 May 2023 13:01:57 +1000
Message-ID: <CAP9KPhBTE-juckdOFzTAtm6311D5yOYfudq0r5=49bNECDa62w@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Turritopsis Dohrnii Teo En Ming <tdtemccnp@gmail.com>, ceo@teo-en-ming-corp.com, 
	Piotr Krysiuk <piotras@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] New Linux kernel NetFilter flaw gives attackers
 root privileges

On Thu, 11 May 2023 at 08:08, Tobias Heider <tobias.heider@canonical.com> wrote:
[...]
> This would allow having opt-in unprivileged userns support only for confined and
> explicitly permitted applications and could hopefully drastically reduce the
> impact of similar bugs in the future.

While I think more explicit configurability is good and needed here,
it's possible to selectively block user namespaces by blocking
unshare/clone/setns via seccomp policies. For example Docker's default
policy[1] blocks unshare() and certain arguments to clone().

This is also configurable in systemd through the "RestrictNamespaces"
property on a service. The downside is this is per service, for
example setting "RestrictNamespaces=true" on sshd.service, but then a
user could run an exploit via say cron, so you'd have to audit all
your services for this to be a complete mitigation.

It's also worth pointing out user namespaces can be a powerful
security feature, again with systemd (using systemd-run for
demonstration purposes, I'd expect this to be an actual unit
configuration in production use):

sudo systemd-run -t -p PrivateUsers=true -p RestrictNamespaces=true -p
DynamicUser=true /bin/bash

Will give you a shell inside a user namespace providing some isolation
(see the docs for PrivateUsers[2]), but it restricts "unshare -Ur"
because of the RestrictNamespaces:

unshare: unshare failed: Operation not permitted

As this and other bugs have shown CAP_NET_ADMIN inside a user
namespace is a large attack surface, but an unprivileged user inside a
user namespace, without the ability to create further namespaces can
actually be a worthwhile hardening.

David

[1]: https://github.com/moby/moby/blob/master/profiles/seccomp/default.json#L626-L632
[2]: https://www.freedesktop.org/software/systemd/man/systemd.exec.html#PrivateUsers=
