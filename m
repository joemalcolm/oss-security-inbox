Received: (qmail 24204 invoked by uid 550); 18 Jul 2024 15:55:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13334 invoked from network); 18 Jul 2024 15:52:52 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AOJu0YwdnFVGP6pXMsHHsnxEG3tVpDilNXREQmHPao/kJtEZ+K5gJOka
	ez53waVtSBHS3aQRJ1uTMQs39d0ZM79biSSHcf+CyQBcbhCZZxLXHA5ybMH4HODAW7OyFBhI9y8
	4n6wG6EV3LCixCiOXA6qhU+Q5yg0=
X-Google-Smtp-Source: AGHT+IE6x/m8nhP3M/Mgb/G6DhdJJDh48B8L7mMVR0WnB4AO0Ns98mxAraxBAg8yef3dl6Q54jMxfX/Rw1q9xbXAfJU=
X-Received: by 2002:a05:6122:179f:b0:4f2:a974:29e5 with SMTP id
 71dfb90a1353d-4f4df64a5ccmr6410766e0c.1.1721317961382; Thu, 18 Jul 2024
 08:52:41 -0700 (PDT)
MIME-Version: 1.0
From: Colm O hEigeartaigh <coheigea@apache.org>
Date: Thu, 18 Jul 2024 16:52:29 +0100
X-Gmail-Original-Message-ID: <CAB8XdGAyo6cf23fn-iWRaHB3Kt0qvw3H=JqG02jqW0Buf6fzpg@mail.gmail.com>
Message-ID: <CAB8XdGAyo6cf23fn-iWRaHB3Kt0qvw3H=JqG02jqW0Buf6fzpg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2024-41172: Unrestricted memory consumption in CXF HTTP clients

CVE-2024-41172: Unrestricted memory consumption in CXF HTTP clients

Severity: low

Affected versions:

- Apache CXF 3.6.0, 4.0.0 before 3.6.4, 4.0.5

Description:

In versions of Apache CXF before 3.6.4 and 4.0.5 (3.5.x and lower
versions are not impacted), a CXF HTTP client conduit may prevent
HTTPClient instances from being garbage collected and it is possible
that memory consumption will continue to increase, eventually causing
the application to run  out of memory

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2024-41172
