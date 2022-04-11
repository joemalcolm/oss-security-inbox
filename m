Received: (qmail 1303 invoked by uid 550); 11 Apr 2022 10:55:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28437 invoked from network); 11 Apr 2022 08:21:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=0ZZOMAalp5xrluH1bcbZ9JzExbiNwERPDz7GGsxn0e8=;
        b=JXNgFglSCnAMceTsoJ5gOPQEempLsOityrhJtDHNcWptceDYznIDGIDIIq0TOBCsQp
         hZ5W1BpOvSXSI5m2tZvcmR0inoTCh4JgigpJ0cCLl1BDH6/bMSeK/j4g0W2x4FXrLHKV
         GQJIA/aLoSXFZos+/WKCayG4In6bPCSzJNVfJfccN+PF7c7nltwzZTdlrsOOGmPTazFg
         D/LAJtf4LKTuHs9MNtyfgv145fCF7fbaGkErOjFwEfMcoiKr+FNKJGgEsfMwoQwJF/+B
         DydZpZKqYAEJXUGFQ2nBkEl3wbgxMRRvkLbCCADDxU5b4ZZxre9G6u5gGb232d2LgaNS
         AxLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=0ZZOMAalp5xrluH1bcbZ9JzExbiNwERPDz7GGsxn0e8=;
        b=adJGAeX6qBvoRo0xn/O6lR9wTTt2i52zr7C0FaGsJkYAoSNVwvirJE1JTxxC2Frr1d
         JPcdvfOev5YkAuTdBxiYdqqQo45uDxOnWR4xc1id+1qtUCikbp9GgLtvQQ4hh/0nAUOl
         DxZHMlzW1R1k0F9Pdg0HUBnnCqjPf+6MYXfo1abtz5kzESXX2k8KUXA4sT1BScNEIHip
         0+2kN9LxhpBBCoYmvuBD10EYeIA+LWY0WsSrzv5i78pN4r/xGK4Rht37lvDTFRdddKWz
         fr6lVhTwyleL09/2iHcaq/Uw3HOa+kVSFDA8xVfKn6a8/+X9qw5HB+eV8HklQZqoQUsW
         2gIg==
X-Gm-Message-State: AOAM533E304W3mFcDQLeukeLIaI9kefSV7DRPSSNpGxVKZXkrsifEgLo
	cJeSWUa9Gky7zpfIPtnA6eXuI4bHEfo0JYNg95T7gknO1kLmM9Yg
X-Google-Smtp-Source: ABdhPJxcrN6B4esSsq1wQYg5tPdmuL4Cp3sMEEwXhMogtPx7Jwt1/VW0EyKpXF7eOFL1uiaOtSLg/Re1R+z/4vhU+Lg=
X-Received: by 2002:a6b:580d:0:b0:64d:2495:b598 with SMTP id
 m13-20020a6b580d000000b0064d2495b598mr6598683iob.89.1649665267374; Mon, 11
 Apr 2022 01:21:07 -0700 (PDT)
MIME-Version: 1.0
From: Felix Fu <foyjog@gmail.com>
Date: Mon, 11 Apr 2022 16:20:56 +0800
Message-ID: <CAAr7cF2zor2=J0D=NxFqS0TecrZTv2X8d_W53=vp_KWNJ-rxsg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000429ec605dc5ca072"
Subject: [oss-security] CVE-2022-28893: Linux kernel: Use after free in SUNRPC subsystem

--000000000000429ec605dc5ca072
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello, I Request a CVE from MITRE.

Description: The SUNRPC subsystem in the Linux kernel through 5.17.2 can
call xs_xprt_free before ensuring that sockets are in the intended state.
Details: Use after free happens in inet_put_port because some sockets are
not close before xs_xprt_free().
CVE-ID: CVE-2022-28893  (
https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2022-28893)
Fix:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?=
id=3D1a3b1bba7c7a5eb8a11513cf88427cb9d77bc60a

------------------------------------------------------------
I followed the steps as below :

To report minor security bugs (such as local DOS or local info leak):

1=E3=80=81Report the bug publicly to kernel developers as described above a=
nd wait
until a fix is committed. Alternatively, you can develop and send a fix
yourself.

2=E3=80=81Request a CVE from MITRE through the web form. Describe the bug d=
etails
and add a link to the fix (from patchwork.kernel.org, git.kernel.org or
github.com) in the request.

3=E3=80=81Once a CVE is assigned, send the bug details, the CVE number and =
a link
to the fix to oss-security@lists.openwall.com

(
https://github.com/google/syzkaller/blob/master/docs/linux/reporting_kernel=
_bugs.md
)

--000000000000429ec605dc5ca072--
