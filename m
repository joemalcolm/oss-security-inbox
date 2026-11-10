X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/10/20
Message-ID: <f589f5b9-140c-4962-895b-c0fbd2032896@oracle.com>
Date: Tue, 10 Nov 2026 10:43:19 -0800
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: sqlparse 0.6.1 fixes two vulnerabilities, announces EOL
Content-Type: text/plain; charset=utf-8

https://github.com/andialbrecht/sqlparse/blob/master/CHANGELOG says:
> Release 0.6.1 (Nov 01, 2026)
> ----------------------------
> 
> End of Maintenance
> 
> Version 0.6.1 marks the final release of sqlparse.
> 
> After many years of maintaining this project, I have decided to end its
> active development and maintenance. The increasing volume of security reports,
> particularly those generated through automated vulnerability research, has made
> the workload unsustainable for me as a sole volunteer maintainer.
> 
> No further releases, including security fixes, are planned.
> The source code and existing releases will remain available.
> 
> I would like to thank everyone who has contributed to sqlparse over the years.
> 
> 
> Notable Changes
> 
> * IMPORTANT: Dollar signs are now escaped in the `php` output format. PHP
>   interpolates `$var`, `${expr}` and `{$expr}` inside double-quoted strings,
>   so SQL text containing them could inject PHP code into the generated
>   snippet (CVE-2026-112307, pr937 by cve-zh00). See the security advisory
>   for details:
>   https://github.com/andialbrecht/sqlparse/security/advisories/GHSA-xmww-55xg-h3vc
>   The vulnerability was discovered by @iRevivalx, @Gares95, @manus-pi,
>   @president-xd, @arpitjain099 and @Tan-JunWei. Thanks for reporting!
> * IMPORTANT: Fixes a potential denial of service attack (DOS) in `format()`,
>   which consumed CPU quadratically on statements containing many quotes
>   that are never closed. This affected `format()` with default options and
>   the `sqlformat` command. See the security advisory for details:
>   https://github.com/andialbrecht/sqlparse/security/advisories/GHSA-3r5h-5jcg-gmgg
>   The vulnerability was discovered by @LinFeng-1219 and @president-xd.
>   Thanks for reporting!
> 
> Bug Fixes
> 
> * Fix `IndexError` and `ValueError` in `format()` on some malformed
>   statements, e.g. `( as )` with `reindent=True` or a `CASE` without its
>   own `END` with `reindent_aligned=True`. Grouping no longer moves the
>   brackets of a parenthesis or the `CASE`/`END` keywords into an inner
>   group.
> * `sqlformat` no longer empties the file given with `--in-place` or
>   `--outfile` when formatting fails, e.g. because a statement exceeds the
>   grouping limits. The output file is now only written after formatting
>   succeeded, and the error is reported like other CLI errors. Thanks to
>   @Joejiaojian, @president-xd, @hash3liZer and @eros938 for reporting!

https://github.com/andialbrecht/sqlparse/discussions/945 discusses how the
flood of incoming security reports impacted the decision to end the project.

-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

