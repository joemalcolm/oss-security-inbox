Received: (qmail 3217 invoked by uid 550); 22 Apr 2024 13:29:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22425 invoked from network); 22 Apr 2024 07:39:40 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AOJu0YyQJS/POOaLTuTr3XyRMAUlphC8eDNN/vmtLQtbNTmYCW/i8yeg
	9I67HfMtgf2dD3LL4rpsSdmkpFFPQBLpLELEU1p5BUJYXOfXoXH1F2cgB7XOInnWxMl25ayHeDL
	VZHEHB099qyLYYz2QsNlmntq396s=
X-Google-Smtp-Source: AGHT+IEzeQGTI+U8o/AFEgdgRJZwLzEjo4+aV7f2VjquUpIaRFxHV1du7CXziFTLjwOyUa+lMGqZKfj/xMpeif/OjBg=
X-Received: by 2002:ad4:4a0a:0:b0:69b:51b7:b1ce with SMTP id
 m10-20020ad44a0a000000b0069b51b7b1cemr8541355qvz.21.1713771470149; Mon, 22
 Apr 2024 00:37:50 -0700 (PDT)
MIME-Version: 1.0
References: <CA+th4M+hZFd+u7zGbHhJ9acv0WFnOs95JiDek0ZWocCw+fN_5g@mail.gmail.com>
In-Reply-To: <CA+th4M+hZFd+u7zGbHhJ9acv0WFnOs95JiDek0ZWocCw+fN_5g@mail.gmail.com>
From: Imba Jin <jin@apache.org>
Date: Mon, 22 Apr 2024 15:37:38 +0800
X-Gmail-Original-Message-ID: <CA+th4MLqu7Fb+XM_RZxBcFMJJAnhoPqKWMMmWGCCg1j_YA2x8A@mail.gmail.com>
Message-ID: <CA+th4MLqu7Fb+XM_RZxBcFMJJAnhoPqKWMMmWGCCg1j_YA2x8A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2024-27348: Apache HugeGraph-Server: Command execution in gremlin

Severity: important

Affected versions:

- Apache HugeGraph-Server 1.0.0 before 1.3.0

Description:

RCE-Remote Command Execution vulnerability in Apache
HugeGraph-Server.This issue affects Apache HugeGraph-Server: from
1.0.0 before 1.3.0 in Java8 & Java11

Users are recommended to upgrade to version 1.3.0 with Java11 & enable
the Auth system, which fixes the issue.

Also you could enable the "Whitelist-IP/port" function to improve the
security of RESTful-API execution

Credit:

6right of moresec (reporter)

References:

https://hugegraph.apache.org/docs/config/config-authentication/#configure-user-authentication
https://hugegraph.apache.org/docs/download/download/
https://www.cve.org/CVERecord?id=CVE-2024-27348
