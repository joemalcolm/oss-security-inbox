Received: (qmail 23931 invoked by uid 550); 18 Jul 2024 15:55:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3951 invoked from network); 18 Jul 2024 15:49:47 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AOJu0YxtSkWjBQl8zoiXV93PhcteIyxGf8+UvQq4RX20GkmrFOQk5f64
	G+uCKOvKObc3BpHEizerlXSQ2kcbYAMjFRzkQlpCpjVNnxEHT777BsJGfJW8MX8523P/OaAqE2e
	qGLLUg4hCUjsm/2qA8qZWZ5cFmjk=
X-Google-Smtp-Source: AGHT+IHvxxxNGklIV631FApQb/BADhz3M7ZpCBdLcTAn3akFqoacCkROjfGcHlaLiWGNobl8wzK5INMSu9uC2e9/+Q8=
X-Received: by 2002:a05:6122:d03:b0:4f2:f1df:89c3 with SMTP id
 71dfb90a1353d-4f4df4d31d3mr7454957e0c.0.1721317777544; Thu, 18 Jul 2024
 08:49:37 -0700 (PDT)
MIME-Version: 1.0
From: Colm O hEigeartaigh <coheigea@apache.org>
Date: Thu, 18 Jul 2024 16:49:25 +0100
X-Gmail-Original-Message-ID: <CAB8XdGDhO0XWJCOZZH-5rkWNc9B06Y-HWgEfd9602ijDZJa=WA@mail.gmail.com>
Message-ID: <CAB8XdGDhO0XWJCOZZH-5rkWNc9B06Y-HWgEfd9602ijDZJa=WA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2024-32007: Apache CXF Denial of Service vulnerability in JOSE

CVE-2024-32007: Apache CXF Denial of Service vulnerability in JOSE

Severity: moderate

Affected versions:

- Apache CXF before 4.0.5, 3.6.4, 3.5.9

Description:

An improper input validation of the p2c parameter in the Apache CXF
JOSE code before 4.0.5, 3.6.4 and 3.5.9 allows an attacker to perform
a denial of service attack by specifying a large value for this
parameter in a token.

Credit:

Jingcheng Yang and Jianjun Chen from Sichuan University and
Zhongguancun Lab. (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2024-32007
