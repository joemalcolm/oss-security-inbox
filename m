X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5244" "Thursday" "16" "September" "2021" "23:12:21" "-0700" "Oleksandr Tymoshenko" "ovt@google.com" nil "127" "[oss-security] Containers-optimized OS (COS) membership in the linux-distros list" nil nil nil "9" nil nil (number mark "U       ovt@google.c Sep 16  127/5244  " thread-indent "\"[oss-security] Containers-optimized OS (COS) membership in the linux-distros list\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Containers-optimized OS (COS) membership in the linux-distros list" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25752 invoked by uid 550); 17 Sep 2021 06:13:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24477 invoked from network); 17 Sep 2021 06:12:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding;
        bh=H/o+lXAhP3OiOUZpBTF6CSPAqIz/zIKFLcPpN45IpeY=;
        b=tjWpARX+T6FG49qQcPUOVeFhx5lj+K79WoUBtNhQ5EPXwnxqhJKGtuWXLWHrro/v0h
         b1GA7jX/v+Q0EO6/Am+UMojhnb51oz+hYR5R4WJdcQsNYVEDMICOFLqYknsrI+b74sIK
         AWhSo+iFvZO1swr5ddw4Ye4Po1g5gPbkki9DMRE47i5iHoWenfIznNbM/uxZocvyoeDt
         OHbRphKXLuFWz0NgUmbaX+UxNFT4N393o3rokbeyGuASWfZc5P9nIyKIy9B0RX/QNQk+
         Vf0EDeVl0Okb9XX3y2XqyDPMl0NGzAw5GV0NjRVUrGo8QcXHc3cS5RWoaBDPdugIgOGz
         SqBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding;
        bh=H/o+lXAhP3OiOUZpBTF6CSPAqIz/zIKFLcPpN45IpeY=;
        b=4XimkPD8ZOoLOO8bSHlJbUxhsKONs4cdL/mzrISOqOw6iOoHgOBdvE8p+rYyb4UNYM
         fFI9+D7ZeYCxQJBaKqTF532YOZm1dUD90OEuwRr4h13C+AltJf1vx81npN2hjPM4ko7b
         oHzzF7NWEUcH7m6oLPtWyFalFGuW+4k29MRjwMzhkENNz0lkXUdSQhUesP2G8lba1p0K
         xCts3ePMa+efLF08I/Qwih4h38CLnf/J32OHPdUGgsVMIR3YpY4286SLwK4aF4+V6Ivx
         Hs/yxUDYX7CueEQ6HHniDXEPgHiJ39FHD3SzKRX19aO6jz0EaJMQDVkssmyVGnAd8t7+
         LNYw==
X-Gm-Message-State: AOAM532E7/qPo+hNSCVenn5XVUBB2Xr9F4zOpZrCbW8E20TbEfIDqm99
	TxbqZJ+8cPc61h11a0DeQfYOHlI0cmcbhfMoYBiZROwhsxW/dA==
X-Google-Smtp-Source: ABdhPJyT+0SBZC+HEIhDz+lrRV+airUuZlqc509uk2J/mflFhOLNgKUJcY+j41T13eCVFbsEM8RtLS3Fl75Bn9LHinY=
X-Received: by 2002:a92:cd4d:: with SMTP id v13mr6565949ilq.45.1631859152459;
 Thu, 16 Sep 2021 23:12:32 -0700 (PDT)
MIME-Version: 1.0
From: Oleksandr Tymoshenko <ovt@google.com>
Date: Thu, 16 Sep 2021 23:12:21 -0700
Message-ID: <CACGj0Cg_OgsYUAw8R6cbHr+ihPjfrKUJw0RjVewzuWYVi8tXpg@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Containers-optimized OS (COS) membership in the linux-distros list

Hello,

I=E2=80=99d like to propose Container-Optimized OS (COS)  for membership in
linux-distros. Text below addresses items listed in the =E2=80=9CMembership
criteria=E2=80=9D section of
https://oss-security.openwall.org/wiki/mailing-lists/distros

> 1. Be an actively maintained Unix-like operating system distro with
> substantial use of Open Source components

Container-Optimized OS (COS) s a Chromium OS based
server operating system. Google distributes COS as a pre-built cloud image,
but also provides sources for users to customize and build their own
specialized versions of the OS.

URL: https://cloud.google.com/container-optimized-os

Source code:  https://cos.googlesource.com
Build instructions:
https://cloud.google.com/container-optimized-os/docs/how-to/building-from-o=
pen-source

COS has a 6-month major release cadence and 3 LTS branches with their own
3-month refresh cadence. Critical security vulnerabilities addressed in
patch releases, independently from the release/refresh cycle.

Release notes: https://cloud.google.com/container-optimized-os/docs/release=
-notes

> 2. Have a user base not limited to your own organization

COS is available directly to external customers as a base VM image for the
Google Compute Engine and indirectly as a base OS for managed services such
as Google Kubernetes Engine (GKE), CloudSQL, Google Cloud Filestore.
Overall usage of COS adds up to millions of cloud instances.

> 3. Have a publicly verifiable track record, dating back at least 1 year a=
nd
> continuing to present day, of fixing security issues (including some that
> had been handled on (linux-)distros, meaning that membership would have
> been relevant to you) and releasing the fixes within 10 days (and
> preferably much less than that) of the issues being made public (if it
> takes you ages to fix an issue, your users wouldn't substantially benefit
> from the additional time, often around 7 days and sometimes up to 14 days,
> that list membership could give you)

Some of the examples of COS reacting quickly (less than 7 days) to CVEs
with high impact:

CVE-2021-33909(Sequoia):
https://cloud.google.com/container-optimized-os/docs/release-notes/m85#cos-=
85-13310-1308-6

CVE-2020-14308, CVE-2020-14311, CVE-2020-15705 (GRUB2):
https://cloud.google.com/container-optimized-os/docs/release-notes/m81#cos-=
81-12871-1185-0

CVE-2020-14386:
https://cloud.google.com/container-optimized-os/docs/release-notes/m81#cos-=
81-12871-1196-0

Having access to embargoed CVEs would have helped us to plan and prepare
for patch releases in a more proactive way.

> 4. Not be (only) downstream or a rebuild of another distro (or else we ne=
ed
> convincing additional justification of how the list membership would enab=
le
> you to release fixes sooner, presumably not relying on the upstream distro
> having released their fixes first?)

Although COS is derived from Chromium OS we switched to maintaining our own
kernel package that tracks more recent versions of the Linux kernel. We
make an effort to keep it as close to the upstream kernel as possible. We
also track releases of other open-source packages relevant for our use
cases independently from Chromium OS or Gentoo.

> 5. Be a participant and preferably an active contributor in relevant publ=
ic
> communities (most notably, if you're not watching for issues being made
> public on oss-security, which are a superset of those that had been handl=
ed
> on (linux-)distros, then there's no valid reason for you to be on
> (linux-)distros)

We are actively monitoring multiple sources of information about
vulnerabilities but haven=E2=80=99t contributed much directly because we di=
dn't
have anything to add to discussions.  We contributed to OSTIF Linux Kernel
Vuln Reporting/Remediation Practices review, and also monitor the
oss-security indirectly via ChromeOS.


> 6. Accept the list policy:
> http://oss-security.openwall.org/wiki/mailing-lists/distros#list-policy-a=
nd-instructions-for-members

Please consider this note as acceptance of the list policy.

> 7. Be able and willing to contribute back, preferably in specific ways
> announced in advance (so that you're responsible for a specific area and =
so
> that we know what to expect from which member), and demonstrate actual
> contributions once you've been a member for a while:
> http://oss-security.openwall.org/wiki/mailing-lists/distros#contributing-=
back

Our team can perform administrative tasks that benefit the wider community
and also can draw upon Google=E2=80=99s internal kernel expertise if requir=
ed (on
the need-to-know basis, maintaining confidentiality).

> 8. Be able and willing to handle PGP-encrypted e-mail

We=E2=80=99ll provide relevant GPG keys separately if our membership is acc=
epted.

> 9. Have someone already on the private list, or at least someone else who
> has been active on oss-security for years but is not affiliated with your
> distro nor your organization, vouch for at least one of the people
> requesting membership on behalf of your distro (then that one vouched-for
> person will be able to vouch for others on your team, in case you'd like
> multiple people subscribed)

Kees Cook (Cc-ed) can vouch for the proposed candidates.

Thank you
