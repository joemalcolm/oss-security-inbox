Received: (qmail 7206 invoked by uid 550); 13 Oct 2025 23:58:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12078 invoked from network); 13 Oct 2025 23:44:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dgl-cx.20230601.gappssmtp.com; s=20230601; t=1760399037; x=1761003837; darn=lists.openwall.com;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eV2iXRqL59TmBK7++N3aPisQ727XpBYDCPOIstSIoHE=;
        b=WrJSP6sZt1UshklumfhxVZxPt6tSCrrASAxqBAEdcMsOt4/cCA0UVpZkvOfrYk63eT
         0OjcuAcqqgZb/4qcdJLPTZ697/ux0y5TxQGY5uCQR+KfXwV60gXblQagT7bhvdaQNxPF
         cvg3mYo1y8lZCwLei/Z40Ibqxv2FlWK3b67ox8pXyH+kExfh6JOQs4BZyiRg4fkBmz0n
         pp3el/J92mydbxw0WwD8YE503VOAfBpi6ODGsgrigIvgiJTCbUM77WMxPMALmrHkkkIb
         5llN19hHnoSkwYNJfa7BhsBajvRNV+10KDvZjNFHMf8L/P/2rySbZXIXfntt4xORqO3j
         G2tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760399037; x=1761003837;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eV2iXRqL59TmBK7++N3aPisQ727XpBYDCPOIstSIoHE=;
        b=sYPNjJcZ+OvnsbzN57T8mpdpGTsHtOCr6VOhGPW0tjdHKA7mfMYuRxeJZS21JshkhB
         OcLti5L8MsPE64CMoz1CBseKu0HBC2yCG0Q9XP5ePX1QJESQqr4rmszffvZj9WNTdLsQ
         jFzQn0HeAfT5wmcojgucjDLwuIM5HTwmA4EAyURNMJuT4qUUr8WKDf8qnI3Np9cQGWQC
         22dl3+QqxOREKEwDXQi3Um2AcMBM/CsZIgoLaW+4vx2cultpm6JCj0xJ4LUP1IsqF+C/
         PKCZ1StKw5IlNDbrNSmv6nynvLmLO9fvbXuHlVhFzyKWuuOxGMMn1oNgznT9osPlllPN
         a3BQ==
X-Gm-Message-State: AOJu0YyxzRzut/oi8R8al4i+62pJvk4QNOP+MRZwasFAH7BSAnzpyZCn
	FG/da5XeQriECzQ4rSPqPBIDDzx7jWjLwUmo5Vw9w4tpVv0XCaQ2R1JY698oJU8orbWIQYi7WMz
	/namR+T2T2gqH97Dg2hhyRZbWsHPxENLPKpbrayNd3saP0R2YS16vpXsl41OI
X-Gm-Gg: ASbGncuzyx310J3vSEV+4VQhkneKnWAVbs+5Y6qJe1j2BXntV5Tsrk2CZN9MoJWddT3
	K2+4sYsSewSseFydAEcC9GQZtn1FG19PDYXwfX7zwyGaVjUTSoe7piLAn9LAcgMlNrCVufHL0/H
	3kIx1jFKF5E6KeCb/I6pEbVW524XBr8JufjF+T6xRpjR8c6GYL9Ci2Mtv0ezv9M7+D8HGb6Dcvo
	Mhek9mf/7zfotOq1y3DfiWYzrsIadujJxfz4zJeNO2Bqr6jLqtIlaOdtESgYpRLDaAvinY=
X-Google-Smtp-Source: AGHT+IGeqeiATuXKbHuwEKZ4x/j+yTSblOdN9s2EXtK9jjELJkiPvcO3Dt6WfXYBLmEKA26j7kzV4RhIk1X+MeCkMj4=
X-Received: by 2002:a17:907:3f97:b0:b3c:8940:6239 with SMTP id
 a640c23a62f3a-b50ac3cbd52mr2464301666b.52.1760399037346; Mon, 13 Oct 2025
 16:43:57 -0700 (PDT)
MIME-Version: 1.0
References: <dd12623ae86aa5eb@cvs.openbsd.org> <CAP9KPhD2_jP7iJS6Hr3-GxWfHd7mXWk-VW3cfS8Npp1tniHxUQ@mail.gmail.com>
 <77035453-8b86-45f7-a6b9-53ee46296a99@gmail.com>
In-Reply-To: <77035453-8b86-45f7-a6b9-53ee46296a99@gmail.com>
From: David Leadbeater <dgl@dgl.cx>
Date: Tue, 14 Oct 2025 10:43:43 +1100
X-Gm-Features: AS18NWCh1H_hw9oqFjHJqLA80TE7Cna9H6cR_r4zba5cUZg2wz7XIa8OocmBMkM
Message-ID: <CAP9KPhAmmDiWjzig_bWEEN0y4d+y0gt58kXuowacpSTiE++2+Q@mail.gmail.com>
To: Demi Marie Obenour <demiobenour@gmail.com>
Cc: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Announce: OpenSSH 10.1 released

On Sun, 12 Oct 2025 at 14:50, Demi Marie Obenour <demiobenour@gmail.com> wr=
ote:
> Would it make sense to only allow ASCII characters that are not special
> to the shell?  I think Git should enforce this restriction, as such
> usernames are very risky and unlikely in legitimate use-cases.  OpenSSH
> enforcing this would be even better.

It possibly makes sense for git to do this, but OpenSSH enforcing it
is a can of worms, RFC 4252 (section 5) says:

  string    user name in ISO-10646 UTF-8 encoding

I discussed this with the OpenSSH maintainers a bit and it is hard to
change this in a backwards compatible way.

> > It is also worth pointing out that a mitigation (and defence for
> > future similar issues) is to stop git from cloning repositories over
> > SSH for submodules, this can be done with:
> >
> >    git config --global protocol.ssh.allow user
>
> This should be the default, as SSH is authenticated and the clone could
> have CSRF-like side-effects.

The TOFU check protects here somewhat, but agreed, however this breaks
backwards compatibility... There's also a fix for something I
discovered in OpenSSH 10.0 related to this:

 * ssh(1): prohibit the comma character in hostnames accepted, but
   allow an underscore as the first character in a hostname.

If you can get a user to accept a TOFU banner with a "," in it, you
can potentially MITM other hosts with this. It depends on your DNS
resolver libraries accepting a comma in hostnames (macOS and musl do
for example, OpenBSD changed this several years ago due to something
else I discovered). Arguably also low severity, but it may be possible
to combine multiple low severity issues like this into targeted
attacks, which is my main concern with this research.

[...]
> Would it make sense to provide an option to quote shell metacharacters
> when expanding, or to simply forbid them outright?  The latter would be
> a complete solution.

Yes, I think there is more defense-in-depth that could be done here,
but we are at the point of diminishing returns, there's probably other
more important things to focus on than this.

I don't want to single out a particular vendor, but given the
relatively arbitrary nature of CVSS scores I was interested to see Red
Hat saying they won't patch this likely based on the scoring:

  > Red Hat focuses on fixing Vendor CVSS scores 7.0 and above. So if
it=E2=80=99s below that threshold, it=E2=80=99s probably
  > not going to get a fix between releases. Hence deferred.

(https://www.reddit.com/r/AlmaLinux/comments/1o28mdo/comment/nimmzbz/)

David
