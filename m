Received: (qmail 18103 invoked by uid 550); 11 Aug 2024 23:25:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15825 invoked from network); 11 Aug 2024 23:24:33 -0000
Date: Mon, 12 Aug 2024 01:24:23 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20240811232423.GA27506@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] CVE-2024-7348: PostgreSQL relation replacement during pg_dump executes arbitrary SQL

Hi,

PostgreSQL 16.4, 15.8, 14.13, 13.16, 12.20 released on August 8 fix the
below security issue.

Content from https://www.postgresql.org/support/security/CVE-2024-7348/

> CVE-2024-7348
> PostgreSQL relation replacement during pg_dump executes arbitrary SQL
> 
> Time-of-check Time-of-use (TOCTOU) race condition in pg_dump in
> PostgreSQL allows an object creator to execute arbitrary SQL functions
> as the user running pg_dump, which is often a superuser. The attack
> involves replacing another relation type with a view or foreign table.
> The attack requires waiting for pg_dump to start, but winning the race
> condition is trivial if the attacker retains an open transaction.
> Versions before PostgreSQL 16.4, 15.8, 14.13, 13.16, and 12.20 are
> affected.
> 
> The PostgreSQL project thanks Noah Misch for reporting this problem.

> CVSS 3.0
> Overall Score 	8.8
> Component 	core server
> Vector 	AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H

Alexander
