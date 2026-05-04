Received: (qmail 24394 invoked by uid 550); 4 May 2026 22:33:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17796 invoked from network); 4 May 2026 19:51:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redcoat-dev.20251104.gappssmtp.com; s=20251104; t=1777924289; x=1778529089; darn=lists.openwall.com;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4CKNbfieHxVx9IDEZYPNJ1vLxESmS8Bhp8Irkbe//co=;
        b=y2EwdUoXB2PsdWiYBU+nvo7a8RKAB10qHQg4rB6QAsxajwAfpiixumkt1s0LyTG+rD
         2pO9pMFURElzS0aUgSPquLwk+cKGvZbDMElhT6EziVj5l2HorwqFI79EbS7tWlVLhE93
         EyQDB0Xp6z/cXCJzcOgMegT/2zOTw5GLc/22mGVBPYcR2eJdDO1/ui2pXP1oRxGp3vTM
         eL1G7i93lOLpL6uII5qFjwn26MQ5wFDIepXbDRRctImEyrtyyHvdmtzkWL1mrIx+uKUE
         HFmpvLUWN9+S/9/IUo91/BXoToIpEDiQRkC7Uf51NSqhFPlxvQ80uebi554bCZydC721
         itpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777924289; x=1778529089;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4CKNbfieHxVx9IDEZYPNJ1vLxESmS8Bhp8Irkbe//co=;
        b=buYQsVgfFALe34K2NBaIi8YxPFt5Gt6cG6C7s836Y474TDjiKy8vDaymR/6Jj6/4QK
         YsGJnUS4yP+2yWLyNVDlCh0oOSMM64Z4Q16Fr9eZJcmn/CO6fUAH5gUPqMIRfvuoEFlT
         d3urRmLXBK8A5qqFCAG0BZWH7zNN0f6+qkJn/1vooqPxQ4xEGdeoX7DpKVbXPrwRnjvE
         6TxvW7XVProuWai8NkKb3N+Afv+xcli0F4XSVrsJmFN4jG0B4uB0FUPwQXxlDPiMpEb+
         83bTXEPQX5R3wfufWWhGxJLecQzT/Ci2RYo2F/j7QWGCfNwwJK/LHWZhmSNmHOyC6VTs
         ArdQ==
X-Gm-Message-State: AOJu0Ywb7bgzkFS65apqIKImycSZ8YD4RHbpEYoTUnvMgnqqIxjyZKI9
	ix5FIwE6VyAit4i0/+bkvxsc0nF6tzW2GeRAmajp9Tf8NRFI9aU5Dyy0FUYYOsXCzg7b7nqa7nP
	v37WAb/s=
X-Gm-Gg: AeBDievE4qgArlN51dMTIj73b7npQIU6X+qE82hW1n881IANrfncLfrk+v7ThbbX44E
	264DZLT6JcV5T+fmB90RcbdfsS+LFnG0MkSO4XJrUKHH9LdeSSNZIOzYdH4C3Bn+7+SLaBXyk5K
	e/tTqQeoNFhDcY/IV4Uk0vHfN5AYMt+/jBWj9FnxGpCXiG7Dp3K5jlnI/k4alSuBYe1owZDWM0s
	Wj2KTA9+P/oIvA3zayrSuMTRU/MdcwobjDjys2NblXb9e3AZGOWYA9ivEyMME1ymlHsdtOj/uPq
	YvlCj6FfjUor4k5EOtMQeM42qc88Pa94ZDHLY/sLnc0Tsw5LdwQwHW0EMJRBoCuE0HBEQWxTghc
	wxSbGOOCqymrZ7ZaoQ6jopeJP/5PyPzE/tWQ0xHZewIN6JRge2QX9PqPY2RmquoAQs8fCt6EDWS
	/PA9v464oUzQimmLLLihtJU9X/Q9FhrNKeaerwyxEpMLMsB7VxOewz+Jtnecx5Y/w=
X-Received: by 2002:a05:600c:a11:b0:48a:53ea:1408 with SMTP id 5b1f17b1804b1-48d187d95b8mr142695e9.8.1777924288419;
        Mon, 04 May 2026 12:51:28 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 04 May 2026 20:51:27 +0100
Message-Id: <DIA5K5Z7Z1L3.LBWL4N5QTAFI@redcoat.dev>
From: "Emily Shepherd" <emily@redcoat.dev>
To: <oss-security@lists.openwall.com>
Cc: "Sam James" <sam@gentoo.org>, "Taeyang Lee" <0wn@theori.io>, "Brad
 Spengler" <spender@grsecurity.net>, "Solar Designer" <solar@openwall.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <afJorKIje4O6dXbH@netmeister.org> <87v7d4b7a3.fsf@gentoo.org>
 <87jytkb2gv.fsf@gentoo.org> <878qa0b1o9.fsf@gentoo.org>
 <2026050453-gamma-stuffing-8606@gregkh>
 <CACHV8XoX5vtjH3d1KKhQJ5_fr8qBRG7pnWFsLxw5UzngeoeA=Q@mail.gmail.com>
 <2026050435-c08cb4e9297e204898fa6911@gregkh>
In-Reply-To: <2026050435-c08cb4e9297e204898fa6911@gregkh>
Subject: Re: [oss-security] Precise disclosure contents for copyfail (Re:
 [oss-security] CVE-2026-31431: CopyFail: linux local privilege scalation)

On Mon May 4, 2026 at 6:38 PM BST, Greg KH wrote:
> Once it lands in Linus's tree, our role is over.

I would - respectfully - disagree. To clarify, I am aware that that is=20
the process as defined currently, but I am not sure that is the best=20
that process could be. You asked in a previous message what could have=20
been done better, so assuming that was meant sincerely, I'll provide=20
some thoughts.

The first hurdle a reporter must jump through is figuring out who to=20
actually report to - the process as defined [1] suggests it should be=20
the maintainer first, with the security team CC'd. There is also a handy=20
script provided to figure out the correct maintainer, and an example=20
given.

However, the example shows the script being called with a whole load of=20
flags (`--no-l`, `--no-r`, etc) without description. These flags are not=20
explained, or at the very least the importance of `--no-l` is not=20
stressed. As this flag excludes mailing lists from the addresses the=20
script will give back it is, presumably, essential to use when=20
determining who to report security issues to.

I would also disagree with the rather casual assertion of the=20
documentation that:

> In the Linux kernel, all official maintainers are trusted, so=20
> the consequences of accidentally including the wrong maintainer are=20
> essentially a bit more noise for that person, i.e. nothing dramatic.

Most other organisations treat security reports as strictly and=20
absolutely need-to-know, even among trusted members of a team. Compare,=20
for example, this stance with that of the "linux-distros" mailing list=20
[2], which is far stronger:

> Aside from your participation in discussions with the reporter and on=20
> the (linux-)distros lists (including possibly continuing to CC other=20
> prior recipients of the information), the information you receive=20
> through the (linux-)distros lists must not be made public, shared, nor=20
> even hinted at anywhere beyond the need-to-know within your distro's=20
> team except with the reporter's explicit approval, until the agreed=20
> upon public disclosure date/time or substantially complete publication=20
> by others. Neither you nor others you inform may use the information=20
> for anything other than getting the issue fixed for your distro's=20
> users and, only in rare extreme cases, for deployment of maximally=20
> non-revealing changes to maintain security of your distro's=20
> infrastructure most essential to the distro users' security in face of=20
> the security issue being dealt with. The need-to-know condition is met=20
> only if the person needs to participate in one of these two=20
> activities.=20

The conclusion I must reach, therefore, is it would be more secure if=20
the process were simplified to *all* requests going to the security team=20
address only, who then take responsibility for triaging and engaging the=20
appropriate people.

The submission process also places an extra-ordinarily high burden on=20
the reporter, rather than the security team itself, to coordinate an=20
appropriate response to bugs. As the process makes clear, the choice of=20
when - or indeed if - to even inform linux-distros of an issue is left=20
entirely up to the reporter, with a recommendation that they not be told=20
at all until a fix is ready. It is, presumably, also the reporter's=20
responsibility to monitor for a fix becoming ready.

The process also states:

> DO NOT contact the "linux-distros" mailing list UNTIL... you have read=20
> the distros wiki page above and you fully understand the requirements=20
> that contacting =E2=80=9Clinux-distros=E2=80=9D will impose on you and th=
e kernel=20
> community.

Which is about as ominous and off-putting a statement that it would turn=20
many organisations away from meaningfully engaging in the process at=20
all.

The process also suggests that a CVE won't even be assigned for an issue=20
unless the reporter - once again - takes the initiative for requesting=20
one:

> If a reporter wishes to have a CVE identifier assigned for a confirmed=20
> issue, they can contact the kernel CVE assignment team to obtain one.

None of this is normal - why the Linux security team and CNA team even=20
talking amongst themselves internally? Why is it an external party's=20
job to coordinate that? The reality is the team best suited to knowing=20
how, and being subtly trustworthy, to co-ordinate security responses is=20
almost always the team within the project itself, not the good Samaritan=20
who did the reporting.

Finally the CVEs themselves; their descriptions are - frankly -=20
appalling. The CVE description in this case was:

> In the Linux kernel, the following vulnerability has been resolved:
>
> crypto: algif_aead - Revert to operating out-of-place
>
> This mostly reverts commit 72548b093ee3 except for the copying of
> the associated data.
>
> There is no benefit in operating in-place in algif_aead since the
> source and destination come from different mappings. Get rid of
> all the complexity added for in-place operation and just copy the
> AD directly.=20

This tells a user nothing. What is the threat? Don't know. When does it=20
occur? Dunno. What impact did it have? *shrugs*. While I understand the
potential need to be vague in the commit message of the fix itself to=20
avoid drawing attention to it prior to the publication of the CVE, once=20
we get to CVE stage the whole point is surely to be informative about=20
the threat, who it effects, and how to mitigate against it. Compare any=20
Linux CVE description with those raised by other CNAs and Linux's come=20
up wanting every time.

Ultimately, none of these points are theoretical. While I am frustrated=20
with the reporters for not following the process as defined in this=20
case, which has led to a pretty disastrous disclosure all round, the=20
result is a prime example of what was always going to happen sooner or=20
later with a disclosure process so opaque and seemingly hostile.

At the end of the day I am aware that Linux is an open source project,=20
and is maintained by volunteers, and I am therefore in no position to=20
say what MUST [3] - or even what SHOULD - be done. Given you did ask for=20
what could be better, however, I have given my thoughts, and I can=20
observe that the process that we have today is not a particularly strong=20
one.

[1]: https://docs.kernel.org/process/security-bugs.html
[2]: https://oss-security.openwall.org/wiki/mailing-lists/distros
[3]: https://www.rfc-editor.org/rfc/rfc2119
