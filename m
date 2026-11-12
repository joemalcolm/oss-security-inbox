X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/12/4
Message-ID: <9176e9e2-aa7d-47fb-ae66-817fe1395d06@oracle.com>
Date: Thu, 12 Nov 2026 09:59:21 -0800
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: PostgreSQL 18.7, 17.12, 16.16, 15.20, 14.25, and 19 RC 2 Released, fixes 52 security vulnerabilities
Content-Type: text/plain; charset=utf-8

https://www.postgresql.org/about/news/postgresql-187-1712-1616-1520-1425-and-19-rc-2-released-3442/
announces:
> The PostgreSQL Global Development Group has released an update to all
> supported versions of PostgreSQL, including 18.7, 17.12, 16.16, 15.20,
> and 14.25, as well as the second release candidate of PostgreSQL
> 19. This release fixes 52 security vulnerabilities and over 140 bugs
> reported over the last several months.
> 
> There are several issues that may require you to take extra steps
> after updating, which are described in detail below. See the
> "Updating" section for more information on post-update steps you may
> need to take.
> 
> For the full list of changes, please review the release notes.
> 
> PostgreSQL 14 EOL Notice
> ------------------------
> 
> This is the final release of PostgreSQL 14. PostgreSQL 14 is now
> end-of-life and will no longer receive security and bug fixes. If you
> are running PostgreSQL 14 in a production environment, we suggest that
> you make plans to upgrade to a newer, supported version of
> PostgreSQL. Please see our versioning policy for more information.
> 
> Security Issues
> ---------------
> 
> The following security vulnerabilities are closed in this update
> release. You can find more details about the vulnerabilities and their
> affected versions in the links below:
> 
>  * CVE-2026-6460: Type confusion after ALTER ... SET DATA TYPE executes arbitrary code (CVSS v3.1: 8.8)
>  * CVE-2026-6467: Extension script schema mishandling executes arbitrary SQL (CVSS v3.1: 7.2)
>  * CVE-2026-14661: dblink and subscriptions can append to arbitrary files (CVSS v3.1: 8.1)
>  * CVE-2026-16237: INSERT ... ON CONFLICT can read or modify rows despite auto-updatable view WHERE condition (CVSS v3.1: 5.4)
>  * CVE-2026-16240: pg_basebackup can use backup manifest content as a format string (CVSS v3.1: 3.7)
>  * CVE-2026-18447: Output parameter type confusion executes arbitrary code (CVSS v3.1: 8.8)
>  * CVE-2026-116303: Foreign key and JSON conversions bypass EXECUTE privilege on cast functions (CVSS v3.1: 3.1)
>  * CVE-2026-116304: Parallel RECORD typmod use-after-free executes arbitrary code (CVSS v3.1: 8.8)
>  * CVE-2026-116306: Composite-type change during field assignment executes arbitrary code (CVSS v3.1: 8.8)
>  * CVE-2026-116307: plperl prepared-query use-after-free executes arbitrary code (CVSS v3.1: 8.8)
>  * CVE-2026-116308: dict_int reads beyond zero-length tokens (CVSS v3.1: 4.3)
>  * CVE-2026-116309: plperl blessed-reference type confusion may execute arbitrary code (CVSS v3.1: 8.8)
>  * CVE-2026-116310: COPY error context uses freed field storage (CVSS v3.1: 4.3)
>  * CVE-2026-116311: DROP OWNED can remove restrictive row security policies from non-owned tables (CVSS v3.1: 5.4)
>  * CVE-2026-116312: MERGE can place the wrong row in a trigger transition table (CVSS v3.1: 5.4)
>  * CVE-2026-116313: vacuumdb --missing-stats-only lets a database owner execute code as the vacuumdb user (CVSS v3.1: 7.2)
>  * CVE-2026-116314: pg_restore executes arbitrary code due to missing non-plain archive validation (CVSS v3.1: 8.8)
>  * CVE-2026-116315: tsvector_delete() heap buffer overflow executes arbitrary code (CVSS v3.1: 8.8)
>  * CVE-2026-116316: Security-restricted operations can create types in pg_temp, which later queries of the session find (CVSS v3.1: 8.8)
>  * CVE-2026-116317: ts_rank_cd() heap buffer overflow may execute arbitrary code (CVSS v3.1: 8.8)
>  * CVE-2026-116318: pg_dump not-null constraint name allows SQL injection (CVSS v3.1: 8.8)
>  * CVE-2026-116319: plperl reentrant return_next() use-after-free executes arbitrary code (CVSS v3.1: 8.8)
>  * CVE-2026-116320: plperl array and hash conversion use-after-free executes arbitrary code (CVSS v3.1: 8.8)
>  * CVE-2026-116321: Unterminated name value discloses server memory (CVSS v3.1: 4.3)
>  * CVE-2026-116322: Pre-authentication cancel request can leak a spinlock (CVSS v3.1: 5.3)
>  * CVE-2026-116323: pltcl reentrant result conversion use-after-free executes arbitrary code (CVSS v3.1: 8.8)
>  * CVE-2026-116325: reindexdb index name quoting allows SQL injection (CVSS v3.1: 8)
>  * CVE-2026-116326: plperl tied-object exceptions follow stale sigjmp_buf (CVSS v3.1: 8.8)
>  * CVE-2026-116327: security_barrier analysis can expose hidden values through indirect expressions (CVSS v3.1: 4.3)
>  * CVE-2026-116328: Generation memory context integer wraparound executes arbitrary code (CVSS v3.1: 8.8)
>  * CVE-2026-116329: Statistics import type confusion executes arbitrary code (CVSS v3.1: 8.8)
>  * CVE-2026-116330: pg_dump tar restore.sql fails to block psql command injection (CVSS v3.1: 8.8)
>  * CVE-2026-116331: Min/max aggregate type confusion executes arbitrary code (CVSS v3.1: 8.8)
>  * CVE-2026-116332: Portal setup use-after-free executes arbitrary code (CVSS v3.1: 8.8)
>  * CVE-2026-116333: Parallel B-tree array scan reads beyond array bounds (CVSS v3.1: 6.5)
>  * CVE-2026-116335: Commutator or negator result-type confusion executes arbitrary code (CVSS v3.1: 8.8)
>  * CVE-2026-116336: REINDEX CONCURRENTLY does not block DROP INDEX during index functions (CVSS v3.1: 8.8)
>  * CVE-2026-120139: Tuple-size integer wraparound executes arbitrary code (CVSS v3.1: 8.8)
>  * CVE-2026-120141: Materialized set-returning function type confusion executes arbitrary code (CVSS v3.1: 8.8)
>  * CVE-2026-120142: Dropped-column type confusion executes arbitrary code (CVSS v3.1: 8.8)
>  * CVE-2026-120143: Transition-table cursor use-after-free executes arbitrary code (CVSS v3.1: 8.8)
>  * CVE-2026-120144: Type-cache invalidation gap executes arbitrary code (CVSS v3.1: 8.8)
>  * CVE-2026-120145: Logical replication can write to subscriber system catalogs, executing arbitrary code (CVSS v3.1: 8.8)
>  * CVE-2026-120146: REASSIGN OWNED bypasses role SET and CREATEDB checks (CVSS v3.1: 4.3)
>  * CVE-2026-120147: dblink reentrant disconnect use-after-free executes arbitrary code (CVSS v3.1: 8.8)
>  * CVE-2026-120148: Extended-statistics pseudo-type confusion executes arbitrary code (CVSS v3.1: 8.1)
>  * CVE-2026-120149: FDW batch-insert mismatch executes arbitrary code (CVSS v3.1: 8.8)
>  * CVE-2026-120150: Expanded-record domain-check use-after-free executes arbitrary code (CVSS v3.1: 8.8)
>  * CVE-2026-120151: plpgsql record-field type confusion executes arbitrary code (CVSS v3.1: 8.8)
>  * CVE-2026-120152: pg_show_all_settings() use-after-free discloses memory (CVSS v3.1: 4.3)
>  * CVE-2026-120153: Extension-script substitutions allow SQL injection through object names (CVSS v3.1: 7.2)
>  * CVE-2026-120154: INSERT ... ON CONFLICT can read rows despite row security policies (CVSS v3.1: 4.3)

