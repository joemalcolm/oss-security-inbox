Received: (qmail 30249 invoked by uid 550); 22 Jun 2023 12:45:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23748 invoked from network); 22 Jun 2023 12:35:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687437327; x=1690029327;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mT9u1vO/DelgLzsyrF1aW++wi+vffCyV4FaYh7oO258=;
        b=A7YnjbtCGcplgmb+GhOJTa+btH2K7K0oV8WgnbBfkg7C1sUFoAryvfTVq4UuLtpvMj
         vxDbIHOyxeOMjp4k585/Z+y+GfWqTfrno54RtR0macFp4OfUY1y99Yvr7dA+2hnsd0Mo
         XJ+wGNFEJ5yhtmO4XMrEtLeWIfn0DGRV7ZlvrvvADGQITXsCLVGCq+WRRlzFfPQSyB5o
         4I2xg0BUqTyjmgYSqB2riplL2qiyM2wEMNGJFh33z4lQQxMc370DH4GNrkH5+Z22cZ0N
         LWGAuczj95Z95aOlggeOU0BCugXek1aOi3dJVEiPjs5HnsABsk86T1T7gJoixxs1Qt04
         2rdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687437327; x=1690029327;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mT9u1vO/DelgLzsyrF1aW++wi+vffCyV4FaYh7oO258=;
        b=ELpi1U4VIM1V/RnxQZjsGZeMqntb+iIApn4pG6WSMY7TsU1IH0Fxr0njSugJNT7Gbf
         t0k0hCHNYeKaAXyZqF1sCXC0d1k6yNl27NUlRN8Pdd9gTLpiaBdSi9wtf1Gqb+ZsLLUu
         eiSmQaVgOSIuK2Ju8rWQF0rIUWRgP4xLqFQPz5IPEm+7TF17Men/iCO4e8l7BEeoQx3e
         SeX7p9o+q3rfB6GeMuI6+6/Yo0E6B/dHDs2ISBmdA1NTSrIjNuWNRuwYEpJA85eis8zV
         mu7CkwbM7khVmM85Wdq/TOAVMdaaJxLZdpuWnnXhv4XCVb26VxVZGbp/JEWCOyVG7pv3
         0Y8Q==
X-Gm-Message-State: AC+VfDzDcpXzv1VeFwEtaK1+u8sAFV37H8+QH2e4IXkaaHK4NPphoOfl
	eHOWKD41d5NOEoLsCdoTWyWm/c+WUwSWjg4xTt3qClkFBdA=
X-Google-Smtp-Source: ACHHUZ7E93zYl7O4ePIm7JdwhB/DV3kYYOAA4JZ/TkMHuOrD7bR4ZEY3McJQYA/Rn13oDWIrKLdnYTRVHW4/WJRbEps=
X-Received: by 2002:a05:6820:1018:b0:55d:cb99:1976 with SMTP id
 v24-20020a056820101800b0055dcb991976mr11706211oor.0.1687437326611; Thu, 22
 Jun 2023 05:35:26 -0700 (PDT)
MIME-Version: 1.0
From: Jyoti Raval <jenyraval@gmail.com>
Date: Thu, 22 Jun 2023 18:05:14 +0530
Message-ID: <CANo=s0ZesZj2nzHGxeG4CEjcB+dAxBF8pMDWB_mAMvgSm_gnSA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000006efb5705feb71ea4"
Subject: [oss-security] Open Source Tool | MPT: Pentest In Action!

--0000000000006efb5705feb71ea4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Managing Pentest (MPT: Pentest In Action) [image: HITBSecConf HITB2022SIN]
<https://conference.hitb.org/hitbsecconf2022sin/session/mpt-pentest-in-acti=
on/>

MPT aims to provide one stop solution for managing all pentests that are
running across organisation.
<https://github.com/jenyraval/MPT#why>Why?

Security penetration testing is more than necessary. If not all, most
organisations either have their own penetration testing team in-house or
they have third party pentesters. In any fast paced organisation with
multiple product lines and development planning timelines, it becomes
challenging for security teams to efficiently manage all these pentest
activities and effectively produce security assessment reports and track
them.

In order to solve above challenges I have developed a solution called
=E2=80=98Managing Pentest (MPT: Pentest in Action)=E2=80=99
<https://github.com/jenyraval/MPT#what>What?

MPT helps us solve various problems:

   - Asset DB to know all organisation assets that are in pentest process.
   You can=E2=80=99t secure what you are not aware of!
   - Tracking each pentest
   - Pentesting activity knowledge which comprises of what particular let
   say application does, or the purpose of hardware that we are testing
   - When next pentester takes over the testing, all they have to do is
   view the asset and associated information which is already there.
   - Time taken for each pentest
   - Real time tracking of activity
   - Issue status
   - Common issues that are observed

MPT also has security pentest analytics which helps us not only track and
view everything in single pane of glass but also helps with:

   - Finding improvement areas to boost pen tester productivity
   - Understand the current risk posture
   - Understand recurring issues
   - Average amount of time taken for each pentest vs asset size
   - Average high/medium/low fixing time
   - Most number of vulnerabilities fixed in a year
   - Class of new vulnerabilities discovered
   - Developer trends
   - Open findings
   - Critical assessments
   - Asset health
   - Top pentester reported findings
   - Average busy time for each pentester

Github - https://github.com/jenyraval/MPT

--0000000000006efb5705feb71ea4--
