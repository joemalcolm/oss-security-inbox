Received: (qmail 28332 invoked by uid 550); 14 Jun 2024 13:31:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28164 invoked from network); 14 Jun 2024 07:20:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718349591; x=1718954391; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TiUwvWaNpFm7JpJkkDe7TrbipP+MI/tXKApCA8beFSQ=;
        b=fUweyHkEPKsa3sRpgka5dcrUYEE/laGKX7q4wgcOtfE+D9oAD22X1mVwCQfwx/DISR
         Bk+hrEFivbHl/8cYb//JEu4u2HU8akX1I4KAwFCrG//F4WzQ3ZST6KzB1mJX67QxVFPT
         hhvzXB9dgIIUgBvxk3yXLyGckiIot4CQ2rR23zj5pLTSZoLDZf5f/e2N4Qeg5gw/9UJS
         gH3eRnH+qu0qsgs709wFKiq7xlmUybWxrZM/A9BkcOlg+mC80P/uJId2fUBgoOcIiSyk
         NAb21Dw3LkvZyXG2GwRq8iwV63SbG9hHzO/4hJQBEAiMSRqexbsdNjtiEfbO9IS72N2U
         Kf8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718349591; x=1718954391;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TiUwvWaNpFm7JpJkkDe7TrbipP+MI/tXKApCA8beFSQ=;
        b=LseEXOlGPfllWKPLKWePeK5dmW/5Mit+e0KvF/3yRgOdKEFodU56XCfZFk2GMCsy4R
         NncJsMet7Kz9Scp+uMcKeMY1QpD1LTvVAGcBFheSeAA9q3Xf05VyuIdv2ew5Ov390IcX
         fvNFlcKmTLP11ZXPYV9CqO0wF53D5QqcxbNqVLhyTPpia4bU8+q4cJzM4wjYd5+HDlth
         WvoHzSNdBm/vdxTjM+0PHVmFFOXxe9l8reBrf4IllYO+sxjcl6drL9Cw6EnBYEvTMhy1
         Rl5FDDlbIvqnd+IG7F/Uw6KNpi/budf/4Yd/+J7OXyBIO9tpPW79ualM+8kWC11RkOHB
         sBag==
X-Gm-Message-State: AOJu0YwUPb/RRY0jpqXWp50Q+oRdpfbSW6lVwkBbrL19NgdN0ihCSX+C
	HRk0Gnao9nlIQkhAln/MIbErwBkniQRu5JlhsGE6902HD99CQSaiA4rCqidYcJcdolvrhr5OTVK
	qRVamAzWGAUVOGppChog2hmcy0/LitA==
X-Google-Smtp-Source: AGHT+IGvFr2LI9pU1tRLVbMgTLwMoZXQYd7uYsIh5tj3Smqf6fZ2td+Yki7VLHTRFSGjGoqNNijX9t95fuGMI2Q0NlA=
X-Received: by 2002:a05:6122:4695:b0:4ec:f0a0:951a with SMTP id
 71dfb90a1353d-4ee3f75cdf1mr2345964e0c.10.1718349591059; Fri, 14 Jun 2024
 00:19:51 -0700 (PDT)
MIME-Version: 1.0
References: <CACVjhxUD21YUHf4ZMCqO_qzXT93p5ukSW6sKANvzDzxuXqaZCg@mail.gmail.com>
 <70d2c42126ea78f0f5cd527c0fd16ccad772f523.camel@3v1n0.net> <ZmtSQrfoGgEoqFZK@aeon>
In-Reply-To: <ZmtSQrfoGgEoqFZK@aeon>
From: Yaron Shahrabani <sh.yaron@gmail.com>
Date: Fri, 14 Jun 2024 10:19:40 +0300
Message-ID: <CACVjhxWgQ8hLOx=z=QM8WiFODiqSHEuSGBqaUkPRcbAuV49dgQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000f9a2ef061ad4704e"
Subject: Re: [oss-security] Security vulnerability in fprintd

--000000000000f9a2ef061ad4704e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you all for your response and care.

I would like to point out that although I managed to demonstrate this
vulnerability with a virtual terminal in a graphical interface it also
applies to TTY, so even if I don't have any graphical interface I can still
exploit this vulnerability.

Adding a graphical awareness mechanism will solve the vulnerability for
graphical interface but not entirely (unless there's a way to switch to the
requesting TTY for approval).


Thank you!

On Thu, 13 Jun 2024, 23:36 Mark Esler, <mark.esler@canonical.com> wrote:

> At Marco's request, I am asking MITRE to either revoke CVE-2024-37408 or
> for
> MITRE to transfer CVE ownership to Canonical's CNA for revocation.
>
> On Thu, Jun 13, 2024 at 06:40:51PM +0200, Marco Trevisan wrote:
> > Hi Yaron,
> >
> > Thanks for taking time to look into this issue.
> >
> > We appreciate the analysis you did, although, as we already shared
> > privately, we don't think that this is a fprintd issue but rather an
> > architectural issue of how PAM modules interact with sudo that, by
> > design, does not permit an additional attention mechanism beyond
> > displaying a prompt in the terminal.
> >
> > It's important to note that no graphical PAM front-end (that we are
> > aware of) is affected by this problem. For example, the PolicyKit
> > dialog that gnome-shell integrates and also the GDM login and lock
> > screens will properly ensure user attention. Said differently, there
> > should be no user attention issue as long as fingerprint authentication
> > is restricted to properly implemented graphical front-ends. This is a
> > policy decision for administrators and distributors to ensure using the
> > PAM configuration.
> >
> > We would like to point out that similar behaviors may occur with any
> > PAM module that uses an out-of-band authentication mechanism (whether
> > using another device or not) that doesn't require the user to pay
> > attention to the main device (SSO, web authentication, hardware-token
> > based, =E2=80=A6).
> >
> > The discussed behavior completely depends on the PAM configuration
> > (which, in most cases, needs to be enabled by the user). If this is
> > considered an issue, then it cannot be resolved within fprintd (and
> > pam_fprintd.so in particular). Should this be considered an issue, then
> > it needs to be addressed by modifying the PAM configuration to restrict
> > pam_fprintd.so to front-ends that implement a proper attention
> > mechanism. This is out of scope for fprintd and must be done by
> > administrators and possibly distributions as part of a policy decision.
> > A policy decision that the reporter made when enabling fingerprint
> > authentication using pam-auth-update.
> >
> > As explained, this is not an fprintd issue, and it cannot be considered
> > a security flaw in fprintd, and therefore we believe that it should not
> > have been assigned a CVE number.
> >
> > Thank you again for caring about fingerprint security.
> >
> > The fprintd maintainers,
> >      Benjamin and Marco
> >
> >
> > Il giorno gio, 30/05/2024 alle 09.18 +0000, Yaron Shahrabani ha
> > scritto:
> > > Hi everyone, I'm writing to this mailing list since I've already
> > > shared the details with Benjamin Berg and Marco Trevisan privately,
> > > and we have yet to conclude about this vulnerability.
> > > This information was also disclosed to the fprintd mailing list:
> > > https://lists.freedesktop.org/archives/fprint/2024-May/001231.html
> > >
> > > My sudo is configured to approve access with pam_fprintd; this is the
> > > config file:
> > >
> > > #%PAM-1.0
> > >
> > > auth            sufficient      pam_fprintd.so
> > > auth            include         system-auth
> > > account         include         system-auth
> > > session         include         system-auth
> > >
> > > So, unless I'm not already authenticated, running the following
> > > command:
> > > sudo whoami
> > > Replies with the following prompt:
> > > Place your finger on the fingerprint reader
> > >
> > > Placing my finger on the fingerprint reader leads to the following
> > > output:
> > > root
> > >
> > > The security concern is that this process can also happen behind the
> > > scenes, so if I'm running a script that has a sudo prompt to delete
> > > something I care about, I can accidentally place my fingerprint on
> > > the
> > > fingerprint reader for any other reasons, and my beloved files will
> > > be
> > > removed.
> > >
> > > How do we recreate the issue?
> > > You can open your favorite console app on Linux.
> > > If it supports tabs open two tabs, if not just open another window.
> > > On the first tab, type: sudo whoami
> > > Switch to the second tab and type: echo Place your finger on the
> > > fingerprint reader;cat
> > > Place your fingerprint on the fingerprint reader
> > > Return to the first tab (You should see that the command was approved
> > > and the output is root)
> > >
> > > Assume the user was running some background process and didn't see
> > > the
> > > fingerprint prompt from the other terminal. The second terminal may
> > > deceive the user into placing the finger on the fingerprint reader
> > > and
> > > elevating permissions without the user being fully aware.
> > >
> > > On Ubuntu, if I want to recreate the same configuration, all I have
> > > to
> > > do is enroll my fingerprints in System Settings,
> > > then install the pam-auth-update and select the Fingerprint
> > > authentication from the selection screen (apt specific) as described
> > > in the following SO thread:
> > >
> https://askubuntu.com/questions/1015416/use-fingerprint-authentication-no=
t-only-for-login
> > > .
> > >
> > > This problem was solved in macOS by simply displaying a window; if
> > > the
> > > window is out of focus, the fingerprint won't work.
> > > Since we can't rely on any graphical window on Linux since it can be
> > > terminal only, we need to ensure that the user fingerprint is used
> > > only for the sole purpose of the request and with full attention to
> > > the specific action the fingerprint was requested for. Otherwise, the
> > > fingerprint can be hijacked (just like clickjacking).
> > >
> > > Benjamin was kind enough to respond, and I allowed myself to
> > > summarize
> > > his reply:
> > > It can happen with fprintd as with any other external authentication
> > > method (aside from password, we have Bluetooth proximity, NFC Tag,
> > > Smart Card, etc.), so it is not unique to fprintd.
> > > Benjamin also offered mitigating ways, such as changing the
> > > configuration or using pkexec instead of sudo.
> > >
> > > I addressed this issue with the sudo maintainer, Todd C. Miller, and
> > > again, I allowed myself to summarize his response:
> > > Although I understand the concern, I need a security attention
> > > mechanism to fix it.
> > >
> > > CVSS 4.0 ranked this CVE as 7.3.
> > >
> > > Thank you,
> > > PS, I'm not a security researcher, and I'm not affiliated with any
> > > organization.
> > >
> > > Yaron Shahrabani - DevOps, Hebrew translator
> >
>
>
>

--000000000000f9a2ef061ad4704e--
