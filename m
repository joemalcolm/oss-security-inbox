Received: (qmail 9993 invoked by uid 550); 13 Dec 2022 15:18:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5719 invoked from network); 13 Dec 2022 15:17:33 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: ANoB5pl6Cpnwmk5LR/VSWOxuqfiBLg6CPn3bFPg+q8hrxh+g8r9+RhBx
	cI+IFC6AfKzkcP+hAuZYEKXEiblha9NFucZjjmc=
X-Google-Smtp-Source: AA0mqf5E1mBtw7IpNVIcZpTPRy2Q6YPpU/zD6GP6xh8jYCBSRmTcYvPBpAr2W4IcveORGMrbT/5dj+eIx3EAcS+RBmY=
X-Received: by 2002:a2e:be04:0:b0:267:9d30:5ba with SMTP id
 z4-20020a2ebe04000000b002679d3005bamr30136952ljq.284.1670944639243; Tue, 13
 Dec 2022 07:17:19 -0800 (PST)
MIME-Version: 1.0
From: Colm O hEigeartaigh <coheigea@apache.org>
Date: Tue, 13 Dec 2022 15:17:08 +0000
X-Gmail-Original-Message-ID: <CAB8XdGBFtQ+=vXfezFEJLUBHzOd16gvdBiQn+6KC5K30f6d5Eg@mail.gmail.com>
Message-ID: <CAB8XdGBFtQ+=vXfezFEJLUBHzOd16gvdBiQn+6KC5K30f6d5Eg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2022-46364: Apache CXF SSRF Vulnerability

CVE-2022-46364: Apache CXF SSRF Vulnerability

Severity: important

Description:

A SSRF vulnerability in parsing the href attribute of XOP:Include in
MTOM requests in versions of Apache CXF before 3.5.5 and 3.4.10 allows
an attacker to perform SSRF style attacks on webservices that take at
least one parameter of any type.

Credit:

thanat0s from Beijin Qihoo 360 adlab (finder) (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2022-46364
