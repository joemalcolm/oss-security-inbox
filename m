Received: (qmail 22521 invoked by uid 550); 18 Jul 2024 15:55:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1408 invoked from network); 18 Jul 2024 15:48:43 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AOJu0YzIVpSZI+sIvsxf1duhoekh70oJ7iVCJL8wuGqdF6Q3BFAWNdXa
	KNnnN19Al4aOLpXtNlbvKtMQTOPmbhfNWX5SDMK2OcEyJtBZyFb6q0lJLY5r5RuqSkGod2gu50p
	Hx3LwfQFnRvjTk5lSxyu8zSx7dwE=
X-Google-Smtp-Source: AGHT+IGLnWKrLnW9lqLH/7lCIuJOE4QewXb44ifgLBMtqG5oT5IWcap+4Mvyjtuir5PYOA+xKK4nq7ZHD13g88fljrY=
X-Received: by 2002:a05:6512:b9e:b0:52c:df55:e110 with SMTP id
 2adb3069b0e04-52ee53a7675mr5139067e87.12.1721317581229; Thu, 18 Jul 2024
 08:46:21 -0700 (PDT)
MIME-Version: 1.0
From: Colm O hEigeartaigh <coheigea@apache.org>
Date: Thu, 18 Jul 2024 16:46:10 +0100
X-Gmail-Original-Message-ID: <CAB8XdGBaHXz-XkNidPmuGwep+rkbJitHbtdY0qK86824TMLDog@mail.gmail.com>
Message-ID: <CAB8XdGBaHXz-XkNidPmuGwep+rkbJitHbtdY0qK86824TMLDog@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2024-29736: Apache CXF: SSRF vulnerability via WADL stylesheet parameter

CVE-2024-29736: SSRF vulnerability via WADL stylesheet parameter

Severity: important

Affected versions:

- Apache CXF before 3.5.9, 3.6.4, 4.0.5

Description:

A SSRF vulnerability in WADL service description in versions of Apache
CXF before 4.0.5, 3.6.4 and 3.5.9 allows an attacker to perform SSRF
style attacks on REST webservices. The attack only applies if a custom
stylesheet parameter is configured.

Credit:

Tobias S. Fink (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2024-29736
