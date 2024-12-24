Received: (qmail 14056 invoked by uid 550); 24 Dec 2024 16:08:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23676 invoked from network); 24 Dec 2024 10:42:19 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AOJu0Yy4p2TlBmGdJqoAYM9Voxk/uvXGm0IJfSzjHjVJaj9QIxbVlsoe
	emWdQqLJLy+ABzsaG0UxBA0V0xoYq7V5Laq7Jmu3khCEX96XojWYwvhZzmwe3uSgP+iuYLdwD2h
	cAcwwMyBaHTOiKPscvUU1hYxI76U=
X-Google-Smtp-Source: AGHT+IHvwHzXFmCOuJ1mHiMkk+ypvrr91a3jfwTz2EYP87CZwwd0d0fh7quZ1Z9+1v1jUW7tTujvbmhen/3llbh9oL0=
X-Received: by 2002:ad4:5f89:0:b0:6d8:8416:9c54 with SMTP id
 6a1803df08f44-6dd2333272amr294137106d6.16.1735036928641; Tue, 24 Dec 2024
 02:42:08 -0800 (PST)
MIME-Version: 1.0
From: Imba Jin <jin@apache.org>
Date: Tue, 24 Dec 2024 18:41:57 +0800
X-Gmail-Original-Message-ID: <CA+th4MLOqa9t23YM0hGBYatRSGdLJuL8Ty9MFQWPNn8bB2mhgg@mail.gmail.com>
Message-ID: <CA+th4MLOqa9t23YM0hGBYatRSGdLJuL8Ty9MFQWPNn8bB2mhgg@mail.gmail.com>
To: oss-security@lists.openwall.com, announce@apache.org, 
	dev@hugegraph.apache.org
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2024-43441: Apache HugeGraph-Server: Fixed JWT Token(Secret)

Severity: important

Affected versions:

- Apache HugeGraph-Server 1.0 ~ 1.3 (before 1.5.0)

Description:

Authentication Bypass by Assumed-Immutable Data vulnerability in
Apache HugeGraph-Server.

Users are recommended to upgrade to version 1.5.0, which fixes the issue.

Credit:

L0ne1y (reporter)

References:
- https://hugegraph.apache.org/docs/guides/security/
- https://lists.apache.org/thread/ykzx1076f4mjv0vf19lkz4bgnlb6qx8f
- https://www.cve.org/CVERecord?id=CVE-2024-43441


Apache HugeGraph PPMC
