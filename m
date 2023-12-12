Received: (qmail 4019 invoked by uid 550); 12 Dec 2023 20:42:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22099 invoked from network); 12 Dec 2023 20:35:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=almalinux.org; s=google; t=1702413351; x=1703018151; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lqVFdATO0tivUGaKNH/FeKSCL3UYmsx4cAnNGVcW64I=;
        b=kL3TfZd5WsrJgibh9CiLeB+GamYytWqNcjSZFa4vkiQtdDdddV59NFZFt43/QjGlA2
         IBViKKJ2LdPFQuojit+l9ES6lPlLmlLsa7pLTts8G0hZEimd02zCJJ8I12yIL30WibPu
         5qZOzKDBDJZLn420SO1Y03KzanrdFCBJxWPlFjQa/bnkxJpYSMGU1tCBVjDnb4VslnMD
         YMA6Nh/mpEzGNgR+dfP82/AHpxU39XaS5j2jX78M/dzza3Zmxqo0nhGE+Xz90QDB7xQN
         rs6B0e6yITEenmmgVsbnu5NfoI1IbiOcmTOL5dm5vBTCLGitsrjrQQoswAOJ1hsrHcWb
         sOQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702413351; x=1703018151;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lqVFdATO0tivUGaKNH/FeKSCL3UYmsx4cAnNGVcW64I=;
        b=fl8LtJ3NVVPPEqIp9lw8RiZTQRRb20m9Rs4e5bTAucdeqNiN+6VpjWp3VmMyqfT6Xf
         Ibtp0EXtLcQtzJT+wJ1J/36UOFTsf6zhkR/q/ABcC0v80emTdc562tnaE5RQRsetZr6S
         vyXZUJU5yGBgU6Z60D88hnI/kmxyPG/h4f2OBtAQ5gdDLlozKKy9+NG3OVwocVM9nE0b
         3diFATYrqJqwFAPRYwawFY3hnWbxQzCRZE0b8sspheCIBk17iQ+yDNQTCCD384emqQ/E
         EsvCLRfk1ljUYsQtc3rSX+PDqEJcAY8t9COhTDX10DKISa3Z59bRjPN4Dmo6/TlVQzvs
         gM+g==
X-Gm-Message-State: AOJu0YzHd3DU2N+etb3WtLwdXBR1z7QT9NGqsiy42Tlk+BMfWxBCLZJy
	ZjmsDdiJzs0a8dfLtEyhlGfNdEp1d43pBFNPIsV9SVYzZI1Ar68QDeQ=
X-Google-Smtp-Source: AGHT+IFny3//pZ0mIKL6L2VxqvQoZ3I50/1Lcs4CEzzr6bOiDZ1FuP08P1toftqHr6o6fbgQpQdtduUr2HgsPUbCnTQ=
X-Received: by 2002:a50:8e17:0:b0:54c:df3c:ad21 with SMTP id
 23-20020a508e17000000b0054cdf3cad21mr3605725edw.9.1702413350016; Tue, 12 Dec
 2023 12:35:50 -0800 (PST)
MIME-Version: 1.0
From: Jonathan Wright <jonathan@almalinux.org>
Date: Tue, 12 Dec 2023 14:35:35 -0600
Message-ID: <CAKe4=-LwgzB3e1gkwLuTmbMBGW4-L0-4=JVQ_ry1SWXNE266zA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Andrew Lukoshko <alukoshko@almalinux.org>, benny Vasquez <benny@almalinux.org>, 
	Igor Seletskiy <iseletsk@almalinux.org>, Darya Malyavkina <dmalyavkina@cloudlinux.com>, 
	Jack Aboutboul <jack@almalinux.org>
Content-Type: multipart/alternative; boundary="000000000000fd36b5060c55feac"
Subject: [oss-security] AlmaLinux Distros List Application

--000000000000fd36b5060c55feac
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I=E2=80=99m submitting this application on behalf of the AlmaLinux OS Found=
ation.


Myself (Jonathan Wright) and Andrew Lukoshko, our lead architect, would be
joining if approved.


   1.

   Be an actively maintained Unix-like operating system distro with
   substantial use of Open Source components
   1.

      We are actively maintained and have released 4 minor versions this
      year (8.8, 8.9, 9.2, and 9.3) along with small updates within the min=
or
      versions, generally at least a few updates per week.
      2.

   Have a userbase not limited to your own organization
   1.

      Our public mirror system alone serves 750k unique systems weekly, and
      is used worldwide for a variety of things.
      3.

   Have a publicly verifiable track record, dating back at least 1 year and
   continuing to present day, of fixing security issues (including some that
   had been handled on (linux-)distros, meaning that membership would have
   been relevant to you) and releasing the fixes within 10 days (and
   preferably much less than that) of the issues being made public (if it
   takes you ages to fix an issue, your users wouldn't substantially benefit
   from the additional time, often around 7 days and sometimes up to 14 day=
s,
   that list membership could give you)
   1.

      Historically we have been following Red Hat releases within 1-2 days,
      and since our shift in June away from following Red Hat we have been =
able
      to release some security updates ahead of Red Hat (Iperf3 patch and A=
MD
      microcode/kernel patches specifically). We would not be beholden
to CentOS
      Stream updates for our patch releases.
      4.

   Not be (only) downstream or a rebuild of another distro (or else we need
   convincing additional justification of how the list membership would ena=
ble
   you to release fixes sooner, presumably not relying on the upstream dist=
ro
   having released their fixes first?)
   1.

      While we've historically done that (which is why it didn=E2=80=99t ma=
ke sense
      to join earlier), we shifted in June to our own OS that is ABI-compat=
ible
      with RHEL.
      5.

   Be a participant and preferably an active contributor in relevant public
   communities (most notably, if you're not watching for issues being made
   public on oss-security, which are a superset of those that had been hand=
led
   on (linux-)distros, then there's no valid reason for you to be on
   (linux-)distros)
   1.

      we have many participants on the oss-security list.
      6.

   Accept the list policy (see above)
   1.

      accepted
      7.

   Be able and willing to contribute back (see above), preferably in
   specific ways announced in advance (so that you're responsible for a
   specific area and so that we know what to expect from which member), and
   demonstrate actual contributions once you've been a member for a while
   1.

      Immediately we can begin to help reporters ensure their reports are
      following the requirements and are confirmed/replied to. As we
advance our
      understanding of how things operate, and the need arises, we can
expand our
      work into contributing more deeply.
      8.

   Be able and willing to handle PGP-encrypted e-mail
   1.

      done.
      9.

   Have someone already on the private list, or at least someone else who
   has been active on oss-security for years but is not affiliated with your
   distro nor your organization, vouch for at least one of the people
   requesting membership on behalf of your distro (then that one vouched-for
   person will be able to vouch for others on your team, in case you'd like
   multiple people subscribed)
   1.

      Darya Malyavkina from CloudLinux will vouch for us.


--=20
Jonathan Wright
AlmaLinux Foundation
Mattermost: chat <https://chat.almalinux.org/almalinux/messages/@jonathan>

--000000000000fd36b5060c55feac--
