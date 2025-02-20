Received: (qmail 24134 invoked by uid 550); 20 Feb 2025 17:10:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23764 invoked from network); 20 Feb 2025 17:10:45 -0000
Date: Thu, 20 Feb 2025 18:10:39 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20250220171039.GA19097@openwall.com>
References: <20250216161818.GA12372@openwall.com> <CAF3AkiMDf-RTf0Z0z-fyc5Fi65no5yxSrc6JPvW_43wGRLK47w@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAF3AkiMDf-RTf0Z0z-fyc5Fi65no5yxSrc6JPvW_43wGRLK47w@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2025-1094: PostgreSQL: Quoting APIs miss neutralizing quoting syntax in text that fails encoding validation, enabling psql SQL injection

On Sun, Feb 16, 2025 at 06:22:30PM +0000, James Addison wrote:
> On Sun, Feb 16, 2025 at 4:22???PM Solar Designer <solar@openwall.com> wrote:
> > As announced on February 13 in:
> >
> > https://www.postgresql.org/about/news/postgresql-173-167-1511-1416-and-1319-released-3015/
> > https://www.postgresql.org/message-id/173945575457.197393.6175786842655230205%40wrigleys.postgresql.org
> >
> > > The PostgreSQL Global Development Group has released an update to all supported
> > > versions of PostgreSQL, including 17.3, 16.7, 15.11, 14.16, and 13.19.
> > > This release fixes 1 security vulnerability and over 70 bugs reported over the
> > > last several months.
> > > [ ... snip ... ]
> 
> For anyone considering upgrading: please note also that the fix for
> this vulnerability introduced a regression[1] that should be addressed
> by subsequent upcoming releases of PostgreSQL on Thursday 2025-02-20
> (a few days from now).
> 
> [1] - https://www.postgresql.org/message-id/272abbd9-d24c-49f1-8b61-83721906aa3b@postgresql.org

This has in fact happened:

https://www.postgresql.org/about/news/postgresql-174-168-1512-1417-and-1320-released-3018/
https://www.postgresql.org/message-id/174006113082.664.12166915817407398396%40wrigleys.postgresql.org

> The PostgreSQL Global Development Group has released an update to all supported
> versions of PostgreSQL, including 17.4, 16.8, 15.12, 14.17, and 13.20.
> 
> For the full list of changes, please review the
> [release notes](https://www.postgresql.org/docs/release/).
> 
> Bug Fixes and Improvements
> --------------------------
>  
> The issues listed below affect PostgreSQL 17. Some of these issues may also
> affect other supported versions of PostgreSQL.
> 
> * Improve behavior of quoting functions in [`libpq`](https://www.postgresql.org/docs/current/libpq.html).
> The fix for [CVE-2025-1094](https://www.postgresql.org/support/security/CVE-2025-1094/)
> caused the quoting functions to not honor their string length parameters and, in
> some cases, cause crashes. This problem could be noticeable from a PostgreSQL
> client library, based on how it is integrated with `libpq`.
> * Fix small memory leak in
> [`pg_createsubscriber`](https://www.postgresql.org/docs/current/app-pgcreatesubscriber.html).

Alexander
