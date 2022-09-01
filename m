Received: (qmail 3804 invoked by uid 550); 1 Sep 2022 10:36:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3957 invoked from network); 1 Sep 2022 03:27:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dgl-cx.20210112.gappssmtp.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date;
        bh=Km/pg1qjf/Bqb6Qb/VzRNT5bLAHVBR+3YGZ3l4QRKhU=;
        b=2tC7xXDUf2x0d+LCgYPv2hNnlx0wsZfFJGb7ZvG5i7y6sHg8rCHhsuM5Elqe1aTlAW
         FLzRrl2FSy9wwTWw/6K1TldNAgJb1aJoc0StCWB04ld2WJaS9VVtNSZidKmwAHIo7TXo
         mvFGPsGlZHJaqrzcDdVUEYGeF44n5Lb8KKnvoqtBrPPO48VPqzdi9j/jJt6bK8RSfZWQ
         vVE3cbQQoF+Is58ih//EeFHwK1olClD38A1/KP33IccFm6WMs1730jdHd1DadsO2VMew
         mcslMe5DctNUMjNf3x3duLK+AAbzz/TdDhoSf/zakBWJ0PaP+d1dR4Qo0Q2f33kbKXsa
         OM/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date;
        bh=Km/pg1qjf/Bqb6Qb/VzRNT5bLAHVBR+3YGZ3l4QRKhU=;
        b=7ie0lSFEPjW5zRMGRZqn2Puxzl6iTIp64Ia3sElXBasQCtcp7U+e5zLlw5jgiFfT/X
         91S3qpi/90dDbsJqJ8LQzFXwmmnLAZvIDpekP75tgXyc1N7GavLnI9yVDgsfgN5uRiEJ
         79WCVojARfYQYt59keinR2y9ccvxF/z8OGcJlkCFydv67UsWXp92g6gkjoAZgzANcU5K
         llqugGrAmfPOGKh4WWxV5JLNV+jLwn0oBBuCa0MhcAxT0DZtySIK1dlARhTZgR7+lq+Y
         7qbH6ptxg117+zQ5/0pWV5RP+8mCsnxS6++aJO/PMfL1Vh/JmqrzwGIxmHN9HEjnz1cO
         8Czw==
X-Gm-Message-State: ACgBeo0LbdVI1Ry5//WcSbiH8A4JJeDNnzr50irqWCNOMteBBwgYTR/X
	Tq1koq+FzUFTR7IKqwnJysqvQ4rNbyLzXYw+WDgpaAENvfOswg==
X-Google-Smtp-Source: AA6agR4zieE2j2i6jnSAths56rviADEWiOyYAt7Jyp+8TJ5TMjejxIm0FD3xyZQU7h/wv+K/gKwikCw3/AnyFNqizu0=
X-Received: by 2002:a05:622a:181e:b0:343:68e6:a5a with SMTP id
 t30-20020a05622a181e00b0034368e60a5amr22326392qtc.236.1662002816400; Wed, 31
 Aug 2022 20:26:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAP9KPhDskZ1W_wnJ_Z8sNY9nqwLGyL0k3pjYwrhJ_TQnXcC-HA@mail.gmail.com>
In-Reply-To: <CAP9KPhDskZ1W_wnJ_Z8sNY9nqwLGyL0k3pjYwrhJ_TQnXcC-HA@mail.gmail.com>
From: David Leadbeater <dgl@dgl.cx>
Date: Thu, 1 Sep 2022 13:26:45 +1000
Message-ID: <CAP9KPhDXj2vUKyZ0m7on+DSn-BUMYfyd-W0_DY2TVAKyeVg=FA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Re: CVE-2022-2663: Linux netfilter: nf_conntrack_irc message handling

The exploit is an IRC client can be tricked into replying to a CTCP
PING message with a crafted payload. The raw IRC command to do this is
(sent by the attacker):

PRIVMSG victim :^APING ^ADCC CHAT x [ip-as-numeric] [port]^A

Which results in the victim's IRC client sending a PING response that
is matched by nf_conntrack_irc as if the victim is establishing a DCC
connection.

In addition to this, there were some bugs in the handling of the IP
address and port, rather than the client's IP address the code was
matching on the IRC server's address and if a port of 0 was sent it
would result in future packets being dropped. This means a remote (on
the same IRC network) attacker can force a victim to either: open a
port on its host, reveal its (public) IP address or perform a DoS by
disconnecting from IRC.

This code has been present in Linux since the addition of
nf_conntrack_irc, around 16 years ago:
https://github.com/torvalds/linux/commit/869f37d8 (this was very
closely based on ip_conntrack_irc and from a quick look at the
historical code that would have a similar issue).

If IRC client authors are reading this, I've opened an issue for IRCv3
to consider a spec for blocking control characters in CTCP PING
requests, as a defence-in-depth measure against this and potentially
future attacks:
https://github.com/ircv3/ircv3-specifications/issues/504

Hopefully it goes without saying to this audience, but using TLS for
IRC connections fixes this entirely.

I've posted a writeup with more background details here (including a
video): https://dgl.cx/2022/08/nat-again-irc-cve-2022-2663

David

On Tue, 30 Aug 2022 at 12:27, David Leadbeater <dgl@dgl.cx> wrote:
>
> Description:
>
> I've found an issue in nf_conntrack_irc where the message handling can
> be confused and it incorrectly matches on the message.
>
> Impact:
>
> A firewall may be able to be bypassed when users are using unencrypted
> IRC with nf_conntrack_irc configured.
>
> Mitigations:
>
> Linux: Disable nf_conntrack_irc (remove any --helper irc rules, and/or
> unload the kernel module)
> MikroTik: Remove IRC from the service ports list (/ip
> firewall/service-port/disable irc)
>
> Fix is posted here:
> https://lore.kernel.org/netfilter-devel/20220826045658.100360-1-dgl@dgl.cx/T/
> It will be making its way into upstream Linux soon.
>
> I'll update in a couple of days with complete details.
>
> David
