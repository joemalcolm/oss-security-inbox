Received: (qmail 17647 invoked by uid 550); 20 Feb 2023 12:22:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30188 invoked from network); 20 Feb 2023 10:15:31 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AO0yUKVVGR28PZ1dK4jDqeOyB70tM5j3EK9icTzmIE+tPur9kf2OuVcR
	Y4TDDBAVGs1JJjnC8jVefnxHdbS0nrshfX1cq9s=
X-Google-Smtp-Source: AK7set9AfOa9gNRmGD6bBlw1veMLNmVK5WLqfv0lTStKfZVULNYjijhohQpSLac9q/f3HU8WGgqrPs2gWjvXZFEtPo8=
X-Received: by 2002:a50:bb02:0:b0:4ab:4933:225b with SMTP id
 y2-20020a50bb02000000b004ab4933225bmr1270994ede.6.1676888117831; Mon, 20 Feb
 2023 02:15:17 -0800 (PST)
MIME-Version: 1.0
From: Colm O hEigeartaigh <coheigea@apache.org>
Date: Mon, 20 Feb 2023 10:15:04 +0000
X-Gmail-Original-Message-ID: <CAB8XdGD4OdhJGRuf0JM=YFoUuOUpe0Lx6iWKiMJNofumgj5LqQ@mail.gmail.com>
Message-ID: <CAB8XdGD4OdhJGRuf0JM=YFoUuOUpe0Lx6iWKiMJNofumgj5LqQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2023-25613: LDAP Injection Vulnerability in Apache Kerby

Description:

An LDAP Injection vulnerability exists in the LdapIdentityBackend of
Apache Kerby before 2.0.3.

Credit:

4ra1n of Chaitin Tech (finder)

References:

https://directory.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-25613
