X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["466" "Monday" "16" "December" "2019" "14:16:30" "+0000" "daniel gaspar" "danielvazgaspar@gmail.com" nil "22" nil nil nil nil "12" nil nil (number mark "U       danielvazgas Dec 16   22/466   " thread-indent "\"[oss-security] [CVE-2019-12413] Apache Incubator Superset meta data leak vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-12413] Apache Incubator Superset meta data leak vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14123 invoked by uid 550); 16 Dec 2019 15:19:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21651 invoked from network); 16 Dec 2019 14:16:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=uRiCuqBwdWiYn3f2psPhsiIZp8lP7ENRsm1dN/5iAAY=;
        b=RjvTC+3LoMLovKi0BzJgKsUcfkEuYciw4njxcr+5aBJJE/pY1t4MYaU1cf+uwO3joE
         fRrnXLg1KKs66HjIYzPHBYWicSFmOgalvQ3r9eARKI7czs8TnEeJh2FyMhZMq92JsOlY
         /aHgcV8O3+0z+J4VjcuQw/baFuIt9DDAw8QD5SiCT8caooO6dyz8bspQ2BcoFvfFi0HB
         gbKjFD28CM+ShPmjHnN2rouEssydvfy+5dhIlhGZgWdUvYCC5c4d6VR6VJO6ANX56kil
         aLueQRHWkeYSgYGWxWS12cFc5Fr2QqB7CN5uS0FpaISHByC7UI/NvoVA98FDXwkm9icB
         TK0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=uRiCuqBwdWiYn3f2psPhsiIZp8lP7ENRsm1dN/5iAAY=;
        b=hb/8YrmYRXZ44/kVqYIQUdcQQSjpQjqjEArNLrejDzeti6RoS3U+GjHXOSo/ie668s
         iL6Js9p8dBpgBVgLsJDC0550EWzDarDoh+KDyordr4blIWxTOx9KVNY1BfmD+s2Uqplg
         Q1eHroirgGRgSvXE3ZDw2AduoFHSxhpmzwbh/N98bigGVLt5Oe4+MjwF+zoPhGcfqreA
         Ctqx6p0tSunCsDo08XiBXB+KGt1J9z7VjUiqNFhz57KnOFpDsn+DxyvN2TqwOJ0tRxGz
         B6RWvbit73Y3NPCNVf9ffsY8q5BY7pBlEXZM7dqKLt4MMNSdk1kHJKUc4xy3VQpBRvXl
         lL0w==
X-Gm-Message-State: APjAAAUFOYllWaoZkEjsm6VsZsVUl3PNa33InlOMm0xeTpbpJv8/Lj/6
	EuC5OaUlUH9e+/QDkEUXH34QF4CvPVPSmiKbjpOaJRdA4LA=
X-Google-Smtp-Source: APXvYqzJ03zohLunOYnRrURgeHyr8M1J9y8NgDUOevVWOzJT0gZYA6DlIh83wAgchVI4OUXbLQT7AP67dMiH4EJ+GJQ=
X-Received: by 2002:ab0:374a:: with SMTP id i10mr22873457uat.97.1576505801036;
 Mon, 16 Dec 2019 06:16:41 -0800 (PST)
MIME-Version: 1.0
From: daniel gaspar <danielvazgaspar@gmail.com>
Date: Mon, 16 Dec 2019 14:16:30 +0000
Message-ID: <CALSkbjrJaRD51rYCmHr13a8iDepyKKpueJirw0K+tCKwogwyyA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000041da7d0599d2dcc7"
Subject: [oss-security] [CVE-2019-12413] Apache Incubator Superset meta data leak vulnerability

--00000000000041da7d0599d2dcc7
Content-Type: text/plain; charset="UTF-8"

Severity: Low

Vendor:
The Apache Software Foundation

Product:
Apache Incubator Superset

Versions Affected:
Superset < 0.31

Description:
A user could query database metadata information from a database he has
no access to, by using a specially crafted complex query.

Mitigation:
Superset users with version prior to 0.31 should upgrade to 0.31 or higher

--00000000000041da7d0599d2dcc7--
