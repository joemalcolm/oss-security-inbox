Received: (qmail 10084 invoked by uid 550); 11 Feb 2025 14:16:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19690 invoked from network); 10 Feb 2025 23:17:35 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AOJu0YxsEnqRzjbGoEhWpfKtA+wsPdS7Z00rKJ8KYHt0mWutLULr74qU
	pEiqGJt8dVLONJAuxvbYgKMKpT/5v4BgszJXoNJz8EEt9OCdGFPvzRnIFLru6FTCuBc+e6BhnDs
	whUjPoAlAL6Zg4ZH7bWfv+Qp+yYM=
X-Google-Smtp-Source: AGHT+IGccK7agMsJy1xrAZgHfI6VMM4awdNy7nbgTu6YxLq8wYORnOZpbeI1mEYUrWplcSy3Qel0dK2M/VUpPQQGgJM=
X-Received: by 2002:a05:6602:6a46:b0:844:cbd0:66ca with SMTP id
 ca18e2360f4ac-854fd8801e8mr1409559139f.1.1739229420052; Mon, 10 Feb 2025
 15:17:00 -0800 (PST)
MIME-Version: 1.0
References: <c1f7a6bd-da0e-090b-df54-d6d309191239@apache.org>
In-Reply-To: <c1f7a6bd-da0e-090b-df54-d6d309191239@apache.org>
From: Paulo Motta <paulo@apache.org>
Date: Mon, 10 Feb 2025 18:16:48 -0500
X-Gmail-Original-Message-ID: <CAKaZCX4jroL_Hp++LC=nwf=o233mcRJi=Tvo5UvHkP1ALJZVrw@mail.gmail.com>
X-Gm-Features: AWEUYZnjvP2ER3RnZ5uExJopi7U7mGA6o9crNtU5TMLKDyaazVcrYgHv8CF5low
Message-ID: <CAKaZCX4jroL_Hp++LC=nwf=o233mcRJi=Tvo5UvHkP1ALJZVrw@mail.gmail.com>
To: announce@apache.org, user@cassandra.apache.org, 
	Cassandra DEV <dev@cassandra.apache.org>
Cc: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Re: CVE-2025-23015: Apache Cassandra: User with MODIFY permission on
 ALL KEYSPACES can escalate privileges to superuser via unsafe actions

A performance regression was detected in the security releases 3.0.31
[1] and 3.11.18 [2]. Users affected by this vulnerability are
recommended to upgrade to versions 3.0.32 and 3.11.19 instead.

Remaining versions are unaffected.

[1] - https://lists.apache.org/thread/yprngr9cmp9c43m1c56thv1v0v6y5ywq
[2] - https://lists.apache.org/thread/hc9shwlm1kmxdxosbh3qo2xooqoo3sc6

On Mon, Feb 3, 2025 at 6:19=E2=80=AFPM Paulo Motta <paulo@apache.org> wrote:
>
> Severity: moderate
>
> Affected versions:
>
> - Apache Cassandra 3.0.0 through 3.0.30
> - Apache Cassandra 3.1.0 through 3.11.17
> - Apache Cassandra 4.0.0 through 4.0.15
> - Apache Cassandra 4.1.0 through 4.1.7
> - Apache Cassandra 5.0.0 through 5.0.2
>
> Description:
>
> Privilege Defined With Unsafe Actions vulnerability in Apache Cassandra. =
An user with MODIFY permission ON ALL KEYSPACES can escalate privileges to =
superuser within a targeted Cassandra cluster via unsafe actions to a syste=
m resource. Operators granting data MODIFY permission on all keyspaces on a=
ffected versions should review data access rules for potential breaches.
>
> This issue affects Apache Cassandra through 3.0.30, 3.11.17, 4.0.15, 4.1.=
7, 5.0.2.
>
> Users are recommended to upgrade to versions 3.0.31, 3.11.18, 4.0.16, 4.1=
.8, 5.0.3, which fixes the issue.
>
> This issue was reported by Adam Pond, Ali Mirheidari, Terry Thibault, and=
 Will Brattain of Apple Services Engineering Security.
>
> References:
>
> https://cassandra.apache.org/
> https://www.cve.org/CVERecord?id=3DCVE-2025-23015
>
