Received: (qmail 30621 invoked by uid 550); 6 Oct 2025 08:03:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30583 invoked from network); 6 Oct 2025 08:03:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=more-magic.net; s=dkim-2016-12; h=Content-Type:MIME-Version:Message-ID:
	Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=RPJn4yUzlhXZjfjEoYEi6CUqUeDpXd50iY8g9kwUf1o=; b=e5t9gLKLzhhwRZjoKCFq6rqRuq
	RKgizRUW0cW/31C/ORaZldT5RMh3vNaAywLWBw2QPioCgN4JGIyEdbP3tjFDSM6EuoKrD3n8HrxBo
	FQViRWZID6ogmc+Cl/0K+Az8Qs27stAoI4rUEXNoQpNQU7hHPac5mrJIPLoHRuVpC9Os=;
Date: Mon, 6 Oct 2025 14:03:12 +0600
From: Peter Bex <peter@more-magic.net>
To: Open Source Security <oss-security@lists.openwall.com>
Message-ID: <aON3wLp4RCWMoDFF@doggett>
Mail-Followup-To: Open Source Security <oss-security@lists.openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] Resource consumption weakness in Postgres-using applications &
 frameworks

Hello all,

In "Paged Out!" magazine, issue #7, I posted an article[1] about a
potential resource consumption weakness (aka potential DoS) in
applications using Postgres.  This issue allows an attacker to
force a sequential scan under certain conditions, regardless of any
index.

The issue itself was originally found by Jeremy Evans in 2022[2] using
integer literals in SQL statements.  It had a broader impact than he
originally thought because it can also be triggered with parameterized
queries and prepared statements.  My article provides a deeper dive into
exactly what goes wrong and a survey of which drivers are affected in
some languages that I'm familiar with.

I think it deserves some wider attention, as I've found it affects
*probably* the majority of Python and Clojure applications that use
Postgres.  The reason is that the most popular Postgres drivers for
those two languages are affected.  I've contacted the authors of these
drivers and they acknowledge the problem but also can't or don't want
to fix it for compatibility reasons.  They agreed to add warnings to
the documentation[3][4].

I don't have the time to investigate if and how every single framework
and application in these languages are affected, which is why I want
to raise it here.  Hopefully the right people are reading it and can
weigh in with their expertise.  Perhaps others can investigate how
other drivers in their favorite languages behave.

Below you'll find a slightly extended version of my article.

Cheers,
Peter Bex

---

Let's say you have an API that allows users to search on a field
stored in an integer column COL.  The table is very big, so it has
an index.  What if I told you it might be trivial to force a
sequential scan through implicit casting?  Check out the following
table:

  Filter (WHERE) expression         | safe? | details
  ----------------------------------+-------+-----------
  col=1                             |  yes  | Index
  col=1.0                           |  NO   | Seq scan
  col='1.0'                         |  yes  | Error
  col=4611686018427387904 -- (2^62) |  yes  | Index
  col=9223372036854775808 -- (2^63) |  NO   | Seq scan
  col='9223372036854775808'         |  yes  | Error
  col=$1 / col=? / col=%s           |   ?   | It depends

As you can see, even legitimate integer syntax can trigger sequential
scans!  That's because Postgres parses overlong integers as NUMERIC.
It can't use the index because the INT column must be cast before
it can be compared to NUMERIC.

If you quote the numeric literal, you get an error.  That's because
quoted strings get parsed as per the _column's_ type.  This makes it
much less ripe for abuse.

== Drivers galore

Postgres' wire protocol lets you send the type OID for query
parameters to force them to be parsed according to that type.  If you
send a zero OID, it auto-detects the type, like what happens when you
type in a quoted literal in the psql(1) CLI.

Some drivers set each parameter's OID based on the type of the
parameter's value, which leads to the forced sequential scan
behaviour.

To test your driver's behaviour, first make sure that it can use the
index (if there's not enough data, it might not use the index even if
it could).  Run the equivalent of:

  query('EXPLAIN SELECT FROM x WHERE col = $1', 1)

Check that it says "Index Scan".  If you're satisfied that it works,
perform the actual test:

  query('EXPLAIN SELECT FROM x WHERE col = $1', 1.0)

This should give an error.  If this gives you "Seq scan" in the
plan, you know what's up.

I've surveyed the _default_ behaviour of drivers in several languages,
see the following table:

  Language   | Driver(s)             | Safe?
  -----------+-----------------------+-------
  Clojure    | java.jdbc & next.jdbc | NO
  Java       | (PG)JDBC              | ?
  C          | libpq                 | ?
  Scheme     | postgres egg          | yes
  Ruby       | pg gem                | yes
  Python     | psycopg (both 2 & 3)  | NO
  PHP        | Plain pgsql & PDO     | yes
  Node.JS    | node-postgres (aka pg)| NO

Clojure's jdbc drivers use the .setObject() method from JDBC without a
targetSqlType.  This means it picks an OID based on object's class.
Psycopg 3 does something similar.  Psycopg 2 on the other hand doesn't
use parameterized queries, but simply embeds the literals into the SQL
where the placeholders are.  Funny enough it leads to the exact same
problem because these literals aren't quoted in the case of integers.

The question mark for Java JDBC and C's libpq indicates it's up to the
user.  If you use .setObject() without a type in Java, or somehow(?) a
user-supplied type in C, it's unsafe in the sense that the implicit
cast will happen.

== Fundamental analysis

The problem with drivers automatically using the type of the
user-supplied *value* in parameters is that it's the _wrong type_ to
use.  Instead, one should use the type of the *column* that's compared
against.

The use of formats like JSON with ill-specified numerics compounds
this effect.  Numbers may get parsed willy-nilly as integers or as
floating-point numbers depending on the syntax.

Programming languages with transparent support for arbitrarily large
integers often don't meaningfully differentiate the type of such
numbers from smaller ones.  This sneakily persists the problem even
when the programmer performs strict validation of input types.
They're all integers, after all!  The programmer now has to also
remember to perform a strict range check.

Meanwhile, Postgres does use a very distinct type for arbitrarily
large numbers: NUMERIC.  This type is not even strictly integral; it
can hold arbitrarily large decimal numbers as well.  Integral values
in "standard" ranges may be interpreted as different actual types
(i.e., int2, int4 and int8), but they're all proper integral types and
can be mutually coerced transparently in such a way that any such type
of index can be used with any other type.  But this doesn't work for
NUMERIC.

It is unfortunate that numbers with similar notation are parsed into
types with wildly different behaviour.  Most drivers simply copy this
behaviour by transparently marking bignums as NUMERIC.  This makes
sense as it ensures consistent behaviour between parsed literals in
SQL and parameterized arguments (which may be literals in the
programming language).

== Who is responsible?

Note that I don't consider drivers automatic type assignment a
vulnerability per se.  The responsibility to pass in the right type
lies with the application or _perhaps_ the application framework.

Theoretically, it _should_ be possible to improve the behaviour of
Postgres itself by being smarter about values and ranges when casting.
For example, out-of-range integral numerics can never be satisfied by
an integer, so it could skip the fetch entirely.  Other comparisons on
fractional numerics could be done smartly by rounding to an integer
and comparing against that (i.e. effectively cast the literal value to
the column's type).

Practically, this would be tricky because casting is generic and
extensible via e.g. CREATE CAST and CREATE TYPE.

== Mitigations

The best way to prevent this sort of thing from happening is to
validate both the type _and_ the range of all user input on entry.

If that's not an option and your driver does the wrong thing, you can
use an explicit cast on the placeholder (e.g. $1::int) to force the
correct type.

As an extra safety measure, you can register a type conversion for
bignums to return an error.  If you _need_ bignums in a query, you
can use a wrapper type to indicate known-safe uses.

Finally, you can always declare an expression index on the cast.
Ugly, but it gets the job done.

[1] https://pagedout.institute/download/PagedOut_007.pdf
[2] https://code.jeremyevans.net/2022-11-01-forcing-sequential-scans-on-postgresql.html
[3] https://github.com/psycopg/psycopg/issues/1134
[4] https://github.com/seancorfield/next-jdbc/issues/307
