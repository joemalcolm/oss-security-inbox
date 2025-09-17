Received: (qmail 17691 invoked by uid 550); 17 Sep 2025 15:17:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11834 invoked from network); 17 Sep 2025 12:51:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudbees.com; s=google; t=1758113458; x=1758718258; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Lbu6IJO1iIJXsE91RotbhF6Qb/k1f4P0IFngSkbSA3w=;
        b=mL0aeWqScwuGnc9DedZpb6eZXf9gGCeaucDmOfWm25wipI8O/y1kWuO5EE8Myeowfy
         bIv0WjxyRnTjih967D6JR/T6eFAJICzNXZVmBLkvQGzPqXhWvhz7RT3KY4P1BiiOTrkU
         7Ukx6ZoW8gHK8ef4luVUqZwldfvifQKB8YrPc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758113458; x=1758718258;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Lbu6IJO1iIJXsE91RotbhF6Qb/k1f4P0IFngSkbSA3w=;
        b=e8AkSzAtp7yYOSwNdHuOmhwjwCMM/4Nsn4WaCjj1JtJ7utP/Wryr0C3iReZ+/ZNmMN
         qD+3uVfiYB+vnsaZNLorn4OgvcB7l0C3hLV469lEXARwvXvy+neFGU0U0+WupBJTP4u7
         U/u6YlC/XBYrEfnyVLt9z0avn4f35euTezN7j3b+lH1YgXQgdrB33TWQajQ0DERgEzgK
         l5u1sxVAOyKnnH4Ld1u1jHXaWl3DNAxiHAuO5SGVjoL4LSXWWcrWIe6fZyOP67eoIeSS
         Ei4GjV5Ub/EfpGiAKcu/o+Ltqv+0w9H5YoM/Onkj5K3ipuQhgD2XNoF/8clmobX07iGl
         +Fjw==
X-Gm-Message-State: AOJu0YwRVLfUYWm85YjRZwv2tbtVH0Zp9RfBAFdPnSgSDLiSf3omdQ5z
	9dSlMwM0qOtYz5KVADLrHZF8l01ZLmIDJbwgq/jdvpjodRTTYsD0g1oCFGDUr8gFDC4GPHrqoRC
	NmiRxOl4pGxlXIaz79nIEGV+4MyM8XmHaGvPSqo4SDPG5sqAAGkhfV1c=
X-Gm-Gg: ASbGncu6cRuA6xJwpDtXKg92TD2gbMCINagnAYTYIMSIos0D/5czkqCZzq3k83fwg9K
	x79GUb+s6cww+oXkoooQKV+FIW4QedAHxRRMl5wgA2rfvw5hJeYxqqWHpRUkB0sIaioiXkrnSDd
	lHSBQNA/LL+kVEJYDYybZ0iEjkMiZ9dXWcWFPPWTx/8NZ2GtyexacAWwVD6m3ZmeqHEUBpD4fxv
	QqP/Kc=
X-Google-Smtp-Source: AGHT+IF2OMU2aQNgJn7XM0rNrmFi26v+gSgby6sRXFIflw+aqFVMdc5tBeQ0Twfe2RXJNhPXcxCJykz5GKxJ+lx7eEw=
X-Received: by 2002:a05:690c:6082:b0:721:3bd0:d5ce with SMTP id
 00721157ae682-73892257436mr16166567b3.44.1758113457243; Wed, 17 Sep 2025
 05:50:57 -0700 (PDT)
MIME-Version: 1.0
From: Daniel Beck <dbeck@cloudbees.com>
Date: Wed, 17 Sep 2025 14:50:20 +0200
X-Gm-Features: AS18NWCuuObn_3VvWHj_9BnTpaLrDe6K4C5TsxIfB0XXyycuY4Vgr0WvTzLg2vw
Message-ID: <CAMo7PtLZf+S94qjQELW3k53J=Sc=ug-ck4Npvz0dM1g-ToaLtw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000181cb4063efeb0b5"
Subject: [oss-security] Multiple vulnerabilities in Jenkins

--000000000000181cb4063efeb0b5
Content-Type: text/plain; charset="UTF-8"

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Jenkins 2.528
* Jenkins LTS 2.516.3


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2025-09-17/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-3618 / CVE-2025-5115
Jenkins bundles Winstone-Jetty, a wrapper around Jetty, to act as HTTP and
servlet server when started using `java -jar jenkins.war`. This is how
Jenkins is run when using any of the installers or packages, but not when
run using servlet containers such as Tomcat.

Jenkins 2.523 and earlier, LTS 2.516.2 and earlier bundles versions of
Jetty affected by the security vulnerability CVE-2025-5115
("MadeYouReset"). This vulnerability allows unauthenticated attackers to
cause a denial of service.

NOTE: This only affects instances that enable HTTP/2, typically using the
`--http2Port` argument to `java -jar jenkins.war` or corresponding options
in service configuration files. It is disabled by default in all native
installers and the Docker images provided by the Jenkins project.


SECURITY-3594 / CVE-2025-59474
Jenkins 2.527 and earlier, LTS 2.516.2 and earlier does not perform a
permission check in the sidepanel of a page intentionally accessible to
users lacking Overall/Read permission.

This allows attackers without Overall/Read permission to list agent names
through its sidepanel executors widget.


SECURITY-3625 / CVE-2025-59475
Jenkins 2.527 and earlier, LTS 2.516.2 and earlier does not perform a
permission check for the authenticated user profile dropdown menu. This
allows attackers without Overall/Read permission to obtain limited
information about the Jenkins configuration by listing available options in
this menu (e.g., whether Credentials Plugin is installed).


SECURITY-3424 / CVE-2025-59476
In Jenkins 2.527 and earlier, LTS 2.516.2 and earlier, the log formatter
that prepares log messages for console output (including `jenkins.log`
and equivalent) does not restrict or transform the characters that can be
inserted from user-specified content in log messages.

This allows attackers able to control log message contents to insert line
break characters, followed by forged log messages that may mislead
administrators reviewing log output.

--000000000000181cb4063efeb0b5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Jenkins is an open source automation server which ena=
bles developers around<br>the world to reliably build, test, and deploy the=
ir software.<br><br>The following releases contain fixes for security vulne=
rabilities:<br><br>* Jenkins 2.528<br>* Jenkins LTS 2.516.3<br><br><br>Summ=
aries of the vulnerabilities are below. More details, severity, and<br>attr=
ibution can be found here:<br><a href=3D"https://www.jenkins.io/security/ad=
visory/2025-09-17/">https://www.jenkins.io/security/advisory/2025-09-17/</a=
><br><br>We provide advance notification for security updates on this maili=
ng list:<br><a href=3D"https://groups.google.com/d/forum/jenkinsci-advisori=
es">https://groups.google.com/d/forum/jenkinsci-advisories</a><br><br>If yo=
u discover security vulnerabilities in Jenkins, please report them as<br>de=
scribed here:<br><a href=3D"https://www.jenkins.io/security/#reporting-vuln=
erabilities">https://www.jenkins.io/security/#reporting-vulnerabilities</a>=
<br><br>---<br><br>SECURITY-3618 / CVE-2025-5115<br>Jenkins bundles Winston=
e-Jetty, a wrapper around Jetty, to act as HTTP and<br>servlet server when =
started using `java -jar jenkins.war`. This is how<br>Jenkins is run when u=
sing any of the installers or packages, but not when<br>run using servlet c=
ontainers such as Tomcat.<br><br>Jenkins 2.523 and earlier, LTS 2.516.2 and=
 earlier bundles versions of<br>Jetty affected by the security vulnerabilit=
y CVE-2025-5115<br>(&quot;MadeYouReset&quot;). This vulnerability allows un=
authenticated attackers to<br>cause a denial of service.<br><br>NOTE: This =
only affects instances that enable HTTP/2, typically using the<br>`--http2P=
ort` argument to `java -jar jenkins.war` or corresponding options<br>in ser=
vice configuration files. It is disabled by default in all native<br>instal=
lers and the Docker images provided by the Jenkins project.<br><br><br>SECU=
RITY-3594 / CVE-2025-59474<br>Jenkins 2.527 and earlier, LTS 2.516.2 and ea=
rlier does not perform a<br>permission check in the sidepanel of a page int=
entionally accessible to<br>users lacking Overall/Read permission.<br><br>T=
his allows attackers without Overall/Read permission to list agent names<br=
>through its sidepanel executors widget.<br><br><br>SECURITY-3625 / CVE-202=
5-59475<br>Jenkins 2.527 and earlier, LTS 2.516.2 and earlier does not perf=
orm a<br>permission check for the authenticated user profile dropdown menu.=
 This<br>allows attackers without Overall/Read permission to obtain limited=
<br>information about the Jenkins configuration by listing available option=
s in<br>this menu (e.g., whether Credentials Plugin is installed).<br><br><=
br>SECURITY-3424 / CVE-2025-59476<br>In Jenkins 2.527 and earlier, LTS 2.51=
6.2 and earlier, the log formatter<br>that prepares log messages for consol=
e output (including `jenkins.log`<br>and equivalent) does not restrict or t=
ransform the characters that can be<br>inserted from user-specified content=
 in log messages.<br><br>This allows attackers able to control log message =
contents to insert line<br>break characters, followed by forged log message=
s that may mislead<br>administrators reviewing log output.<br><br><br></div=
></div>

--000000000000181cb4063efeb0b5--
