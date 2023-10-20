Received: (qmail 29836 invoked by uid 550); 20 Oct 2023 13:04:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10059 invoked from network); 20 Oct 2023 09:09:58 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AOJu0Ywy08Yd6oHIfn1xuwOHmHhiJKucR+jwdBxl5ZNnroqnrVVrLtkE
	8AG6/kP0amBuasrxe61iR0PjjnHrb+x9Z42aLXE=
X-Google-Smtp-Source: AGHT+IHLp7myTrzYUnOgVqmF6lf0K31Z5i3LNJtvxkoKMavWk1gNoSO3ePvA9cmcbR1VzUYj8Sc6RyTAgwsM+KWcC+c=
X-Received: by 2002:a17:907:9808:b0:9bd:f4b8:b0bd with SMTP id
 ji8-20020a170907980800b009bdf4b8b0bdmr819023ejc.6.1697792968707; Fri, 20 Oct
 2023 02:09:28 -0700 (PDT)
MIME-Version: 1.0
From: Colm O hEigeartaigh <coheigea@apache.org>
Date: Fri, 20 Oct 2023 10:09:16 +0100
X-Gmail-Original-Message-ID: <CAB8XdGA58wd-CUqd+wW+6V6PVrz2kimSq74TsYJdizDZaT3=hQ@mail.gmail.com>
Message-ID: <CAB8XdGA58wd-CUqd+wW+6V6PVrz2kimSq74TsYJdizDZaT3=hQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2023-44483: Apache Santuario: Private Key disclosure in debug-log output

Severity: moderate

Affected versions:

- Apache Santuario  before < 2.2.6
- Apache Santuario  before < 2.3.4
- Apache Santuario  before < 3.0.3

Description:

All versions of Apache Santuario - XML Security for Java prior to
2.2.6, 2.3.4, and 3.0.3, when using the JSR 105 API, are vulnerable to
an issue where a private key may be disclosed in log files when
generating an XML Signature and logging with debug level is enabled.
Users are recommended to upgrade to version 2.2.6, 2.3.4, or 3.0.3,
which fixes this issue.

Credit:

Apache Santuario would like to thank Max Fichtelmann for reporting
this issue. (finder)

References:

https://santuario.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-44483
