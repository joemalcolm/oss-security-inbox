X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/04/20/17
Message-ID: <CAH8yC8kDjtf1NZpWjtPTTdToj8p9Sy+LHohW9=k8aJUw2G2y2Q@mail.gmail.com>
Date: Thu, 20 Apr 2023 14:06:21 -0400
From: Jeffrey Walton <noloader@...il.com>
To: oss-security@...ts.openwall.com
Subject: PostgreSQL and CREATEROLE permission
Content-Type: text/plain; charset=utf-8

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
