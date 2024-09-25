Received: (qmail 13340 invoked by uid 550); 25 Sep 2024 14:28:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13574 invoked from network); 25 Sep 2024 09:01:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1727254895;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=9Hl1+V1vFRgtNhYUH5X1tCDOMopg7hUbHRqlXVPQ9Gk=;
	b=EOxHa/djVO/LTQU2/qMjRBFrbqutVKCnpzHlQTqrJq6ieNDXSsk06XX3H8mWAmmpzUfdZA
	4MsVFbi51/WP/dKnKNMFwtyuicBtoxpYK40hRz0WGiu5Hek/4Nbg6qtE4AoAKA8kGuZ9h0
	A+2fjD0mZ1A2qP8bt1c6OapkHeY4gPs=
X-MC-Unique: tFRPPDxiP-KXBEAiYjedvQ-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727254891; x=1727859691;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9Hl1+V1vFRgtNhYUH5X1tCDOMopg7hUbHRqlXVPQ9Gk=;
        b=VqD6aLStivwTcyMZO6KTHiArqBJ5vdwMTE7Y6ZrRyhRGN9ld7cw1QGEwpLK4gscIX0
         /619GfcJqP4k2lzfKGM312d7v1AobArJndjEjgEb6USdOZRU6EB281O5I5roDacUZVFO
         CrI7vGWO9REwsXAw78OZ4cwpeJ6//BuUTdrwhic4j5iRcBk0q7r2QCV4socKrvmaI0vM
         yH7HemcbJ7r8fVoGXyRfafl63Zm675Xq3TZl6ZYQcHvWsr3IxRmSblYT3jEQUfBT1BuS
         9elDs5kr2S5+AvJkDJ7k+3+2Pd9ht52ICivFEa92qmgV9MbAXAqIof+dwlq44wl0Ycno
         cbzw==
X-Gm-Message-State: AOJu0Yx47OtFc6bUq9UMpHS1vcuxJ7+qa8OmARjJyHozwuyta9SHj5ux
	qEf7jx3Zn4LPzs8T3tS/KzA1/hiwPlXbBdQQwllYtKzmSG8VnWrZmj+jPbv0YUxtO+1Mvlazszk
	ZOTF7EMewdmGgGpO3xRGe4QflpMH8brIjGU/TTXLTMYoKYKdQWfK6tn/nnQTqy7f0um80SAVHht
	zh4M44lXCjosckyWIPZfLDnLjrVIWvkJXqNP6whz5+O2vreNykiuc=
X-Received: by 2002:a05:6122:a1f:b0:4f5:312a:6573 with SMTP id 71dfb90a1353d-505c40c3626mr1117564e0c.5.1727254890628;
        Wed, 25 Sep 2024 02:01:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFlGLXwtVxfzfNeWfSihdVOUkh3W0XtnIn73FO61TqSRpiZQxTw72zWZK+K7RjUk0HZQvmuHQyYefNmE155BiI=
X-Received: by 2002:a05:6122:a1f:b0:4f5:312a:6573 with SMTP id
 71dfb90a1353d-505c40c3626mr1117552e0c.5.1727254890274; Wed, 25 Sep 2024
 02:01:30 -0700 (PDT)
MIME-Version: 1.0
References: <AM9P192MB131684EA6145690A492F481FD7682@AM9P192MB1316.EURP192.PROD.OUTLOOK.COM>
 <20240924153652.GA26720@openwall.com>
In-Reply-To: <20240924153652.GA26720@openwall.com>
From: Sandipan Roy <saroy@redhat.com>
Date: Wed, 25 Sep 2024 14:31:19 +0530
Message-ID: <CAJ33NAVY_jKsLqGZpuWTXUFTAkkg60qH2hd3uhVmyaDGX7P2cg@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Joel GUITTET <jguittet@witekio.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000002c0c240622edde51"
Subject: Re: [oss-security] CVE-2024-42154: Linux kernel: tcp_metrics:
 validate source addr length

--0000000000002c0c240622edde51
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Alexander and Joel,

Thank you for your quick review.

Regarding the CVE, Red Hat is still in the analysis phase. Our assessment
is based on our own kernel build, which may differ from the default
configuration upstream.

According to our latest analysis, the CVSS score is 4.4:

CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:L/A:N

The impact level is considered moderate for Red Hat due to the following
reasons:

1. Missed check existed before and worked correctly (because by default it
worked for int32 value, even if it was not specified exactly).

2. Even if for some specific case a fail could happen, still it can lead
only to incorrect memory read.

3. Even if memory corruption happens, it should not lead to anything apart
from incorrect tcp-ip statistics output to the local user.

Additionally, It can lead to incorrect statistics output for commands like
"ip tcp_metrics show", but actually no security impact (or very low
security impact).

Thanks
Sandipan Roy

On Tue, Sep 24, 2024 at 9:10=E2=80=AFPM Solar Designer <solar@openwall.com>=
 wrote:

> Hi Joel,
>
> When you bring issues to this list, please include in the Subject and
> start your messages with information on the issue itself - at least the
> affected project and vulnerability type when applicable.  As a
> moderator, I've edited the Subject line to contain such information.
>
> On Tue, Sep 24, 2024 at 09:12:46AM +0000, Joel GUITTET wrote:
> > I'm working on a medical product actually and have trouble about the
> CVE-2024-42154. It is regarding NETLINK socket which can be used only
> locally, but it is classified with "NETWORK" flag. NETWORK flag is annoyi=
ng
> because it means more difficult to justify the CVE.
> >
> > I already ask the NIST why the NETWOKR flag was set for this CVE, they
> answer me that it's linked to socket and without more public reference th=
ey
> are just setting the NETWORK flag, in case of.
> >
> > Can I ask you your opinion about this CVE and the pertinence of the
> NETWORK flag here?
>
> I didn't fully analyze this issue, but at a glance:
>
> 1. NIST NVD commonly inflates CVSS scores.  You could reasonably dispute
> their CVSS vector and they may correct it and the score:
>
> https://nvd.nist.gov/vuln/detail/CVE-2024-42154
>
> Base Score:  9.8 CRITICAL
> Vector:  CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H
>
> 2. There are other sources for CVSS vectors/scores, notably Red Hat:
>
> https://access.redhat.com/security/cve/CVE-2024-42154
>
> CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:N/I:L/A:N
>
> leading to a score of 2.5.  Indeed, they treat this issue as local, not
> network, which is probably correct, although some other components of
> this CVSS vector look weird to me.
>
> You could use Red Hat as your source of severity scores.
>
> 3. The CVE description originates from Linux kernel CNA, which in turn
> reuses the commit message:
>
> https://lists.openwall.net/linux-cve-announce/2024/07/30/76
>
> > tcp_metrics: validate source addr length
> >
> > I don't see anything checking that TCP_METRICS_ATTR_SADDR_IPV4
> > is at least 4 bytes long, and the policy doesn't have an entry
> > for this attribute at all (neither does it for IPv6 but v6 is
> > manually validated).
>
> The code change is:
>
> +++ b/net/ipv4/tcp_metrics.c
> @@ -624,6 +624,7 @@ static const struct nla_policy
> tcp_metrics_nl_policy[TCP_METRICS_ATTR_MAX + 1] =3D
>         [TCP_METRICS_ATTR_ADDR_IPV4]    =3D { .type =3D NLA_U32, },
>         [TCP_METRICS_ATTR_ADDR_IPV6]    =3D { .type =3D NLA_BINARY,
>                                             .len =3D sizeof(struct
> in6_addr), },
> +       [TCP_METRICS_ATTR_SADDR_IPV4]   =3D { .type =3D NLA_U32, },
>         /* Following attributes are not received for GET/DEL,
>          * we keep them for reference
>          */
>
> It would require more context to review and to assess the bug's impact,
> but my _guess_ is it may have been merely over-read potential, so local
> infoleak maybe?  Besides code review, it could make sense to locate the
> corresponding syzbot report, if one exists, and see what type of crash
> it was - if it was.
>
> Somehow Red Hat's description lists possibilities worse than over-read,
> so either my guess is wrong or they didn't analyze the issue to identify
> specific impact:
>
> > A vulnerability was found in the Linux kernel's tcp_metrics subsystem,
> > where insufficient validation of the length of the source address for
> > TCP metrics could lead to buffer overflows, memory corruption, or
> > crashes.
>
> I hope this helps.
>
> Alexander
>
>

--=20
*Sandipan Roy*

Product Security Engineer, Product Security

Secure Engineering - Incident Response

Email: sandipan@redhat.com

PGP:0x4B5C7470051BB332 <https://bytehackr.fedorapeople.org/saroy.asc>

*secalert@redhat.com <secalert@redhat.com>* For Urgent Response.
<https://www.redhat.com/>

--0000000000002c0c240622edde51--

