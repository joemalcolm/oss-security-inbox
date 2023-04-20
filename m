Received: (qmail 19962 invoked by uid 550); 20 Apr 2023 18:17:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12059 invoked from network); 20 Apr 2023 18:06:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682013992; x=1684605992;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lJbNgBQXwjjjxQpqpJk5MrVtPRYnaw4JGGbkvntO0EE=;
        b=LsCC3aUIF5XBX4vXYnzW7t6bz11i2EDfG1xwFtOtyMoAdp86oSLFIobyQDJAIklg3A
         vtpNscZLdok8XKBQKLwfDrnwVrKzpuAMYsRwfNwGAdwleCdAFjh9zXKTcePQUa5TELgb
         Et5snGO8dD3Cv0aKwbp+asZ6rxSzQL8uHggnVoB6NPnyutAmwjoAcjOSD554+8mTBK0N
         q43k2r8L4U9txV0LcXsgFe1NQ0f/JjAZXi5jsaWVPRMVbKjM92XlqQY1/QxWJQKYw5aD
         LgNgbsvM3WE8Zw0b8RXHLS7xVI7ZRtvCgh8+o+UYOgGOKuhagLQ+SVYT1fia40UVOeDn
         Trbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682013992; x=1684605992;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lJbNgBQXwjjjxQpqpJk5MrVtPRYnaw4JGGbkvntO0EE=;
        b=CbfoESDYdtAwzqTmAYai2XkIam45OsLNCBNcO2ZKUMvp5N+5SW+4PmTd+Bj3Hg8wS+
         XsVW5GCPaH6WuN7Krrjo7Fjj0Y4gcrBrx8JRAkYlWaFltHvTqdbLTmZpDBk78gXUun8l
         +VeWUn4SJFiqteCGAqSXpztogLpCJ7kU+BfSseGYzFOOH1I5xeeQIZk6WI//NSX1UDE+
         tqYpPP3wYPaVEF64xqXWWCx2hUZQMlSP/DDYwN445ewfjaucZXbnPWLrB//8qnQVX0sJ
         4kesjXh1j2B/c+vEafHQaQkNPeH70VNHcyZH6y6JPf8dSh6z4HT01t2hI4dE74Xt5wyC
         rwWQ==
X-Gm-Message-State: AAQBX9d8RYO1mLXa4Ao3S/820TKtkW+N+EzjHoz3pVqN5/GXr/7qm0Ao
	t8muWo/wWWHPBblLlmAQthAN16IpJKBobu+UUNpirmLeUFY=
X-Google-Smtp-Source: AKy350YlaGNA6N/MmUfeqthQHuud64kZJDPTyXoDpvkR0UwvFSI8d5Wc9faLWbyYuKFVtZIS0faDEsEA10lCun/JliI=
X-Received: by 2002:aca:3c57:0:b0:38e:551e:d96e with SMTP id
 j84-20020aca3c57000000b0038e551ed96emr682878oia.5.1682013991835; Thu, 20 Apr
 2023 11:06:31 -0700 (PDT)
MIME-Version: 1.0
From: Jeffrey Walton <noloader@gmail.com>
Date: Thu, 20 Apr 2023 14:06:21 -0400
Message-ID: <CAH8yC8kDjtf1NZpWjtPTTdToj8p9Sy+LHohW9=k8aJUw2G2y2Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] PostgreSQL and CREATEROLE permission

Hi Everyone,

This information showed up on the pgsql-general mailing list at [1].
It appears a user with CREATEROLE can elevate to root through
pg_execute_server_program.[2]

It looks like PostgreSQL folks will be changing a recommendation and
modifying behavior at v16.[3] Here is the commit of interest: [4].
Changes will not be made for previously released versions of
PostgreSQL.[3]

PostgreSQL does not have a hardening guide. I would hate to see the
nugget lost in a mailing list message or change log entry.

[1] https://www.postgresql.org/message-id/DEFDC682-5BE8-4406-843A-E294C917D6BC%40yugabyte.com
[2] https://www.postgresql.org/message-id/db2c7c3e0c065ca89bb9664b3f6e01cef4f6de8a.camel%40cybertec.at
[3] https://www.postgresql.org/message-id/CAKFQuwY0%3D4_ybzmJ-xi%3D%3DG%3Dm8ONA8hBtujzOwbPm4CNGvqHLEg%40mail.gmail.com
[4] https://git.postgresql.org/gitweb/?p=postgresql.git&a=commitdiff&h=1c77873727dfd2e48ab2ece84d1fb1676e95f9a5
