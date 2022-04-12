Received: (qmail 1451 invoked by uid 550); 12 Apr 2022 11:22:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1498 invoked from network); 12 Apr 2022 10:55:15 -0000
X-Gm-Message-State: AOAM532ZTahcYIDCg4UGnyFsTlM5rFvE4/8zRJZ15gexB3JFxJ6vhD7t
	aJmQPiGL4grN+Mf7wvac4aQKkJwXjTqRzs+aRrE=
X-Google-Smtp-Source: ABdhPJx79uO6W08+ExORjcscEGtUfAY+1t2+K+Nqb7BTRTS8Mc5ZuZPM8djSYRnmqOU8q1SyyTTdOMclD/w2Qc9QSrc=
X-Received: by 2002:aca:c182:0:b0:2ef:8fd4:7523 with SMTP id
 r124-20020acac182000000b002ef8fd47523mr1473345oif.148.1649760882923; Tue, 12
 Apr 2022 03:54:42 -0700 (PDT)
MIME-Version: 1.0
From: "markphip@gmail.com" <markphip@apache.org>
Date: Tue, 12 Apr 2022 06:54:32 -0400
X-Gmail-Original-Message-ID: <CAHFaGCpaF=-bkXcsZ8TBqAqb+mCjyE3P-L+9xBtCG39Vv4G-1w@mail.gmail.com>
Message-ID: <CAHFaGCpaF=-bkXcsZ8TBqAqb+mCjyE3P-L+9xBtCG39Vv4G-1w@mail.gmail.com>
To: announce@subversion.apache.org, Subversion <users@subversion.apache.org>, 
	Subversion Development <dev@subversion.apache.org>
Cc: security@apache.org, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] [SECURITY][ANNOUNCE] Apache Subversion 1.10.8 released

I'm happy to announce the release of Apache Subversion 1.10.8.
Please choose the mirror closest to you by visiting:

    https://subversion.apache.org/download.cgi#supported-releases

This is a stable bugfix and security release of the Apache Subversion
open source version control system.

THIS RELEASE CONTAINS TWO IMPORTANT SECURITY FIXES:

CVE-2021-28544
"SVN authz protected copyfrom paths regression"

The full security advisory for CVE-2021-28544 is available at:
    https://subversion.apache.org/security/CVE-2021-28544-advisory.txt
    https://subversion.apache.org/security/CVE-2021-28544-advisory.txt.asc

A brief summary of this advisory follows:

   Subversion servers reveal 'copyfrom' paths that should be hidden accordi=
ng to
   configured path-based authorization (authz) rules.  When a node has been
   copied from a protected location, users with access to the copy can see =
the
   `copyfrom' path of the original.  This also reveals the fact that
the node was copied.
   Only the 'copyfrom' path is revealed; not its contents. Both httpd
and svnserve
   servers are vulnerable.

   We recommend all users to upgrade to a known fixed release of the
Subversion server.

   This issue was reported by Evgeny Kotkov

CVE-2022-24070
"Subversion's mod_dav_svn is vulnerable to memory corruption"

The full security advisory for CVE-2022-24070 is available at:
    https://subversion.apache.org/security/CVE-2022-24070-advisory.txt
    https://subversion.apache.org/security/CVE-2022-24070-advisory.txt.asc

A brief summary of this advisory follows:

   While looking up path-based authorization rules, mod_dav_svn servers
   may attempt to use memory which has already been freed.

   We recommend all users to upgrade to a known fixed release of the
Subversion server.

   This issue was reported by Thomas Wei=C3=9Fschuh

SHA-512 checksums are available at:

    https://www.apache.org/dist/subversion/subversion-1.10.8.tar.bz2.sha512
    https://www.apache.org/dist/subversion/subversion-1.10.8.tar.gz.sha512
    https://www.apache.org/dist/subversion/subversion-1.10.8.zip.sha512

PGP Signatures are available at:

    https://www.apache.org/dist/subversion/subversion-1.10.8.tar.bz2.asc
    https://www.apache.org/dist/subversion/subversion-1.10.8.tar.gz.asc
    https://www.apache.org/dist/subversion/subversion-1.10.8.zip.asc

For this release, the following people have provided PGP signatures:

   Julian Foad [rsa4096/1FB064B84EECC493] with fingerprint:
    6011 63CF 9D49 9FD7 18CF  582D 1FB0 64B8 4EEC C493
   Stefan Sperling [rsa2048/4F7DBAA99A59B973] with fingerprint:
    8BC4 DAE0 C5A4 D65F 4044  0107 4F7D BAA9 9A59 B973
   Branko =C4=8Cibej [rsa4096/1BCA6586A347943F] with fingerprint:
    BA3C 15B1 337C F0FB 222B  D41A 1BCA 6586 A347 943F
   Mark Phippard [ed25519/C4416167349A3BCB] with fingerprint:
    EC25 FCC1 0561 8D04 ADB4  3429 C441 6167 349A 3BCB
   Johan Corveleyn [rsa4096/B59CE6D6010C8AAD] with fingerprint:
    8AA2 C10E EAAD 44F9 6972  7AEA B59C E6D6 010C 8AAD

These public keys are available at:

    https://www.apache.org/dist/subversion/subversion-1.10.8.KEYS

Release notes for the 1.10.x release series may be found at:

    https://subversion.apache.org/docs/release-notes/1.10.html

You can find the list of changes between 1.10.8 and earlier versions at:

    https://svn.apache.org/repos/asf/subversion/tags/1.10.8/CHANGES

Questions, comments, and bug reports to users@subversion.apache.org.

Thanks,
- The Subversion Team
