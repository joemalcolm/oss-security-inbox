Received: (qmail 24179 invoked by uid 550); 23 Apr 2024 09:36:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15941 invoked from network); 23 Apr 2024 01:53:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713837175; x=1714441975; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6p4Pmtfv7uW7W8JtM5lzczJnYa1ouuMspqFT3Eu8HCQ=;
        b=K72QbmgLYg1buYTIlySOgtWr2YhrPad88P6dLB+SUptjOp88RhAo+AoFj0g0CRBzE7
         ooYKWHHVVgxsr0L5HlUduLIUC8fbrBwVJ8R/z09g/cX8HpGFUp5NLkrES76m5DYKcgBR
         r6KCmnhFDUvPOP/5lb/yV+l5yR+ldnVqaBrGhkC/QT5M5k72RzvOkuMsLLgIlZ7p68eX
         g4ei/VSl7tbTpzdgxPTDF8AwKzeApw7RbvmVDKyRepM0SiQuXkPFx6TSRu5e+TWlQIxc
         9kJBwKQSAZTELkhFbgfkyw40zbCezEgQNXNx/uChhgSNRVp6kJKTittkEbej3ouuhcw0
         kOew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713837175; x=1714441975;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6p4Pmtfv7uW7W8JtM5lzczJnYa1ouuMspqFT3Eu8HCQ=;
        b=umsY4EYzZ7QNL503wNsDDPXxZ1+tt6IGmYx63VTgJHsjxwqbz+QbNeirV8jJvsyTxH
         Xk3SPv2o0ESvosjmpd8yYEqPXut5UZsKNy5ARTrCL4NSBP+p7saxo1kvJ/HEwyVu7pk2
         4gJ5A8T8kmLPPivWuz7Gt4hUTxI142Gz8UpvF5d+Gz792oZapC2V/TEBWF+mtUspzois
         ZZrwzEewH3zknnhiGEzcVWVgXIs+ycvoJ6mXkeVfYL78CSpKLSpsHJY7mP5/2DrSuYJw
         fWN5FHzl3/fr4JjrOR9MNc1/I1EfgyLpsw5thMGm5tXjeQQ1LfOUxHA4SKpbozdS1vKA
         7MTA==
X-Gm-Message-State: AOJu0YxBvdYwRz0axh5fUUILKNpp4yZL3eqy3ar4Rv3ZOjLt2qYNsy0/
	zZjBNAALPghdvXXizGFTl5us6HCFU7+N617OPDW6WIM4opCS87omQ/JysUNr8h/1/aFwst7bxDD
	5zFw5bvkv66rW1kKQ0rBXoUXoutJb7zBF9Js=
X-Google-Smtp-Source: AGHT+IGDmureVidYI0iQTAkXIekdLX++NOCgi7mIPcj5ByK4WjWmeCNolpHtQZUaudqOTl13MWbrwoEXdm+iFCHdwKQ=
X-Received: by 2002:a17:906:298a:b0:a52:6a33:2ea4 with SMTP id
 x10-20020a170906298a00b00a526a332ea4mr10618611eje.54.1713837174638; Mon, 22
 Apr 2024 18:52:54 -0700 (PDT)
MIME-Version: 1.0
References: <9faeb4d3-8b70-4be8-947c-f8e27be2df9d@canonical.com>
In-Reply-To: <9faeb4d3-8b70-4be8-947c-f8e27be2df9d@canonical.com>
From: Yash Patel <yashpatelphd@gmail.com>
Date: Tue, 23 Apr 2024 07:22:43 +0530
Message-ID: <CA+pod8GSEwf95oj1xVrQK4Qji9y+dXsbnvfihhHdhtdDKdPZ0A@mail.gmail.com>
To: Mark Esler <mark.esler@canonical.com>
Cc: oss-security@lists.openwall.com, 
	"Dr. Parag H. Rughani" <parag.rughani@nfsu.ac.in>
Content-Type: multipart/alternative; boundary="000000000000ff51970616b9cff2"
Subject: [oss-security] Re: 83 bogus CVEs assigned to Robot Operating System (ROS)

--000000000000ff51970616b9cff2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you for your detailed overview regarding the CVEs attributed to our
research on ROS/ROS 2. We appreciate the scrutiny and understand the
concerns raised by you and other parties.

I want to clarify that our findings are based on extensive tests conducted
in real-world scenarios within controlled laboratory settings, where actual
robots were subjected to attacks. This method is crucial as it transcends
theoretical analysis and involves direct interaction with the equipment
that is still operational in many industrial sectors, although on
unsupported ROS/ROS2 versions.

We acknowledge that the CVE descriptions were initially drafted at a high
level and may not have included comprehensive technical details. This was
due to pending publication of our full research papers, which delve deeper
into the specifics of each vulnerability. We are preparing a separate
document to address this gap, providing the evidence and methodologies
employed during our research.

Furthermore, it is worth noting that while some ROS versions are no longer
supported by the official development team, they are still actively used in
various industries. Our work aims to highlight security risks that could
affect these legacy systems, thereby aiding in proactive cybersecurity
measures.

We are open to dialogue and further investigation by third-party experts.
If the consent remains suspicious of the vulnerability claims, we are
prepared to request revocation of the CVEs to maintain the integrity of the
reporting process. Our primary goal is to contribute positively to the
security of the robotic ecosystem, and we are committed to transparency and
collaboration to achieve this.

Looking forward to your constructive feedback and hoping for an opportunity
to discuss our findings in detail.

*Yash Patel*
Ph.D. Research Scholar
National Forensic Sciences University
Ministry of Home Affairs, Government of India
[An Institution of National Importance]
Gandhinagar, Gujarat, India


On Tue, Apr 23, 2024 at 5:22=E2=80=AFAM Mark Esler <mark.esler@canonical.co=
m> wrote:

> Yash Patel and Dr. Parag Rughani are credited as the discoverers for
> eighty-three recent CVEs affecting ROS 2 which the MITRE TL-Root CNA
> assigned.
>
> All CVE descriptions are written at a very high, vague, level. No
> specifics or evidence has been provided to backup vulnerability claims.
>
> Three CVEs (CVE-2023-33565, CVE-2023-33566, and CVE-2023-33567)
> reference the discoverer's 2022 ACM paper "Analyzing Security
> Vulnerability and Forensic Investigation of ROS2: A Case Study" [0]. The
> more technical portion of this paper was confirmed [1] to be based on a
> ROS 2 beginner tutorial [2]. The paper does not attribute ROS 2
> documentation.
>
> Some CVEs claim that a security update will be forthcoming from the ROS
> 2 development team [3]. Privately [4], ROS 2 core developers stated that
> they were not contacted and "came to the conclusion that [these CVEs]
> were likely not real security vulnerabilities.".
>
> Certain CVEs describe unlikely situations. For instance, CVE-2024-30737
> claims: "A critical vulnerability has been identified in ROS Kinetic
> Kame, particularly in configurations with ROS_VERSION=3D1 and
> ROS_PYTHON_VERSION=3D3." [5]. ROS Kinetic Kame supports Python 2, not
> Python 3.
>
> Frankly, all descriptions appear to be copy-pasted or generated to
> _sound_ like security issues. No evidence has been provided in the ACM
> paper or the 83 CVEs to suggest that vulnerabilities actually exist.
>
> CVE revocation requests have been sent to MITRE and CVE descriptions
> have been appended with: "NOTE: this is disputed by multiple third
> parties who believe there was not reasonable evidence to determine the
> existence of a vulnerability."
>
> The CVE IDs are: CVE-2023-33565, CVE-2023-33566, CVE-2023-33567,
> CVE-2023-51197, CVE-2023-51198, CVE-2023-51199, CVE-2023-51200,
> CVE-2023-51201, CVE-2023-51202, CVE-2023-51204, CVE-2023-51208,
> CVE-2024-29439, CVE-2024-29440, CVE-2024-29441, CVE-2024-29442,
> CVE-2024-29443, CVE-2024-29444, CVE-2024-29445, CVE-2024-29447,
> CVE-2024-29448, CVE-2024-29449, CVE-2024-29450, CVE-2024-29452,
> CVE-2024-29454, CVE-2024-29455, CVE-2024-30657, CVE-2024-30658,
> CVE-2024-30659, CVE-2024-30661, CVE-2024-30662, CVE-2024-30663,
> CVE-2024-30665, CVE-2024-30666, CVE-2024-30667, CVE-2024-30672,
> CVE-2024-30674, CVE-2024-30675, CVE-2024-30676, CVE-2024-30678,
> CVE-2024-30679, CVE-2024-30680, CVE-2024-30681, CVE-2024-30683,
> CVE-2024-30684, CVE-2024-30686, CVE-2024-30687, CVE-2024-30688,
> CVE-2024-30690, CVE-2024-30691, CVE-2024-30692, CVE-2024-30694,
> CVE-2024-30695, CVE-2024-30696, CVE-2024-30697, CVE-2024-30699,
> CVE-2024-30701, CVE-2024-30702, CVE-2024-30703, CVE-2024-30704,
> CVE-2024-30706, CVE-2024-30707, CVE-2024-30708, CVE-2024-30710,
> CVE-2024-30711, CVE-2024-30712, CVE-2024-30713, CVE-2024-30715,
> CVE-2024-30716, CVE-2024-30718, CVE-2024-30719, CVE-2024-30721,
> CVE-2024-30722, CVE-2024-30723, CVE-2024-30724, CVE-2024-30726,
> CVE-2024-30727, CVE-2024-30728, CVE-2024-30729, CVE-2024-30730,
> CVE-2024-30733, CVE-2024-30735, CVE-2024-30736, and CVE-2024-30737
>
> Many thanks to Florencia Cabral Berenfus for her analysis of these claims!
>
> Mark Esler
>
> [0] https://dl.acm.org/doi/abs/10.1145/3573910.3573912
> [1] https://github.com/yashpatelphd/CVE-2024-30737/issues/1
> [2]
>
> https://docs.ros.org/en/foxy/Tutorials/Beginner-Client-Libraries/Writing-=
A-Simple-Py-Service-And-Client.html
> [3] https://github.com/yashpatelphd/CVE-2023-33565
> [4] message ID
> <CAE6X0kjYCMS4qRYP9Bohx88ue9ReedbPr=3DFFh+hNs+2RkOGeLg@mail.gmail.com>
> [5] https://github.com/yashpatelphd/CVE-2024-30737
>
>

--000000000000ff51970616b9cff2--
