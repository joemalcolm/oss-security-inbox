X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/10/3
Message-ID: <CAG-20GRLDiQt-nHMXwGVv3B+w0=TQObVu89Lw9jmv=BBQG_gKA@mail.gmail.com>
Date: Mon, 10 Aug 2026 17:50:45 +0800
From: Tianyu Chen <billchenchina2001@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-59774: Arbitrary file read via the Org-mode #+INCLUDE directive in Gitea and Forgejo
Content-Type: text/plain; charset=utf-8

Gitea v1.27.1 and Forgejo v15.0.6, v16.0.2 fixed an arbitrary file read via
the Org-mode #+INCLUDE directive.

Gitea announcement mentioned CVE-2026-59774, but it's not yet published.

Announcements:
https://blog.gitea.com/release-of-1.27.1/#security
https://codeberg.org/forgejo/security-announcements/issues/57

Relevant Pull Requests:
https://github.com/go-gitea/gitea/pull/38642
https://codeberg.org/forgejo/forgejo/pulls/13682

Best Regards,
Tianyu Chen

