X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6879" "Thursday" "8" "June" "2017" "23:49:03" "+0200" "Pali =?utf-8?B?Um9ow6Fy?=" "pali.rohar@gmail.com" "<201706082349.03355@pali>" "170" "[oss-security] MySQL - use-after-free after mysql_stmt_close()" "^Cc:" nil nil "6" "2017060821:49:03" "[oss-security] MySQL - use-after-free after mysql_stmt_close()" (number mark "        pali.rohar@g Jun  8  170/6879  " thread-indent "\"[oss-security] MySQL - use-after-free after mysql_stmt_close()\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17435 invoked by uid 550); 8 Jun 2017 21:55:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5518 invoked from network); 8 Jun 2017 21:49:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:user-agent:cc:mime-version
         :content-transfer-encoding:message-id;
        bh=Al3+iilmLcrEoFHiBgK6CVq/79/9tuAwz3COr3CicLQ=;
        b=bhI9wd8SfqyXni2lRol6fagKChNjLxnCAA43yjZZ/ZeUEvifgF/KJ2udYmCe1RswRP
         /MV9bi1Lhs95yUfhRI2gFM4iD6JKoVzSqPX347QkCL5Fych6axUzJMg5GS/w8J3oW5Pn
         02kL91sA282M/CMksZcQdU5iuEGyZbOtZGjE3413RzUhZ5cYpe54g3f1Du95mdCu/qE1
         942Co4vGnjKAEp7fjPrq8zfOHkWNYwcEQHVHueI82ac1QXchyx9sdnzhD2ekT9oB5isJ
         BDfzAOkT1CKhCqSRMevYYVC415O5PMwH6w1Dw4E0RFXhLM/e1Ew+Mp0xO5YPEwRv6WxQ
         +IlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:user-agent:cc:mime-version
         :content-transfer-encoding:message-id;
        bh=Al3+iilmLcrEoFHiBgK6CVq/79/9tuAwz3COr3CicLQ=;
        b=aPQHEkDv9PV1IHlkfnFl+p69h2fjxl1Of3oiWPsHUabIXpJ0DtKpvWh/eYqwPG+drd
         vShcHFZD2L67nPnui2E7SegnoEm+d2EcqsYVZN8FbC3HHXRk0Jm/os7BTiU2FGYy6nLZ
         bDA31npj3kN0hTETANZpXAW+eXK4J2+mRYWDFNP+4N3EChnZliEPs0Vr911grc0CKZae
         gwTMT55pWjkWKiF9MPX7WNVmqMteuOaTYOIIbzOMzMqR31qdJKGYG9Z2VZsC8I1n9jsb
         Y+TjIqdKJcZr9hgwoKeqXY/9It9dKLCJ1jSk8eqL/tDANEJCxv0juHBh3TtgRHWXJlEW
         wF3g==
X-Gm-Message-State: AODbwcBJbL8Cd7bq0ewRNX+3/AWRZAzSQXYrSJZ7NNr2iy1uASaB55e0
	X5bkRjWYvv3dIbR+
X-Received: by 10.28.210.13 with SMTP id j13mr4909057wmg.110.1496958544896;
        Thu, 08 Jun 2017 14:49:04 -0700 (PDT)
User-Agent: KMail/1.13.7 (Linux/3.13.0-117-generic; KDE/4.14.2; x86_64; ; )
MIME-Version: 1.0
Content-Type: multipart/signed;
  boundary="nextPart7311002.134NTyiPbi";
  protocol="application/pgp-signature";
  micalg=pgp-sha1
Content-Transfer-Encoding: 7bit
Message-Id: <201706082349.03355@pali>
Cc: security@mariadb.org,
 secalert_us@oracle.com,
 security@percona.com,
 Andrea Barisani <andrea@inversepath.com>,
 Michiel Beijen <michiel.beijen@gmail.com>,
 Alceu Rodrigues de Freitas Junior <glasswalk3r@yahoo.com.br>,
 cve-assign@mitre.org
Date: Thu, 8 Jun 2017 23:49:03 +0200
From: Pali =?utf-8?q?Roh=C3=A1r?= <pali.rohar@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] MySQL - use-after-free after mysql_stmt_close()
To: oss-security@lists.openwall.com

--nextPart7311002.134NTyiPbi
Content-Type: Text/Plain;
  charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello!

MySQL applications written according to Oracle's MySQL documentation &=20
examples for mysql_stmt_close() function call are vulnerable to use-
after-free defect.

In mysql_stmt_close() documentation [1] for return value is written:
"Zero for success. Nonzero if an error occurred." And there are defined=20
two errors: CR_SERVER_GONE_ERROR CR_UNKNOWN_ERROR. From other parts of=20
documentation can be understood that error messages for statements could=20
be obtained by mysql_stmt_error() function [2].

Whole example of usage is written in mysql_stmt_execute() function [3].=20
The relevant part for mysql_stmt_close() is at the end of example:

/* Close the statement */
if (mysql_stmt_close(stmt))
{
  fprintf(stderr, " failed while closing the statement\n");
  fprintf(stderr, " %s\n", mysql_stmt_error(stmt));
  exit(0);
}

And here is a problem, use-after-free defect. Current implementation of=20
mysql_stmt_close() function unconditionally free passed statement=20
structure and therefore following mysql_stmt_error() call is defective=20
to use-after-free.

Relevant part of implementation of mysql_stmt_close() function is:

my_bool mysql_stmt_close(MYSQL_STMT *stmt)
{
  int rc=3D0;
...
  if ((rc=3D stmt_command(mysql, COM_STMT_CLOSE, buff, 4, stmt)))
    set_stmt_errmsg(stmt, &mysql->net);
...
  my_free(stmt);
  return rc;
}

As you can see it stores real error message into stmt structure, but at=20
the end it is freed. Which means error message is no longer available=20
and caller is not able to read it (even via mysql_stmt_error() call).

As such defective code is in example of the usage, probably couple of=20
MySQL applications written according to that defective documentations=20
are affected to this issue.

There is reported real bug for MySQL DBI driver that is affected by this=20
issue [4]. Reporter probably compiled MySQL library or driver itself=20
with some compiler options which could detect buffer overflows and=20
uncovered this issue.


In April 17 I reported this issue to oCERT team and it was forwarded to=20
MySQL, MariaDB and Percona security teams.

MariaDB team answered that this is problem in Oracle & MySQL and their=20
documentation as MariaDB do not have such vulnerable example in their=20
documentation.

Oracle team was unwilling to tell anything, provide any information how=20
to handle such issue or what to do, therefore with suggestion from oCERT=20
I decided to make this report public and open public discussion for=20
other people on oss-security list how to handle this problem.


As Oracle fully ignored this problem and have not stated if problem is=20
in documentation, implementation or both, I see probably 3 different=20
solutions:

1) Documentation with examples is correct and this is how it should be=20
used. What is wrong is implementation.

It would mean that function mysql_stmt_error() and mysql_stmt_errno()=20
needs to specially handle statement pointers which were already freed by=20
mysql_stmt_close(). This can be done e.g. by storing hash table of=20
pointers and assigning for them last received error.

Or clarifying that mysql_stmt_close() does not always free passed=20
memory. Because from current description in documentation it is not=20
fully unambiguous what happen if function fails.

In this case implementation of mysql_stmt_close(), mysql_stmt_error()=20
and mysql_stmt_errno() are vulnerable to use-after-free defect and needs=20
to be fixed. And it should be assigned CVE for MySQL for this problem.

2) Implementation is correct, documentation is wrong.

Documentation needs to be fixed to properly describe how are those=20
functions implemented. Important note must be that if function=20
mysql_stmt_close() fails it is not possible to take error code via=20
mysql_stmt_error() or mysql_stmt_errno(). Also examples needs to be=20
fixed.

And then all MySQL applications which were written according to wrong=20
documentation needs to be fixed and for each one needs to be assigned=20
CVE. Number of those applications is unknown, to get it first every=20
application which uses libmysqlclient.so needs to be checked and=20
verified. What we know now is that MySQL Perl DBI is affected.

3) Documentation is wrong, but implementation of mysql_stmt_close() is=20
not-so-correct.

Which would mean that return value of mysql_stmt_close() is fully=20
meaningless as there is no way to recover from bad state. Currently=20
mysql_stmt_close() unconditionally free memory for statement, so no=20
recover is possible.

There are two options what can be done:

* Always return value zero which means no error occurred. This basically=20
mitigate use-after-free vulnerability in Oracle's documentation and also=20
all applications which were written according to documentation.

* When error occurred, do not free memory of passed structure. This=20
would mean that following mysql_stmt_error() call would not be affected=20
by use-after-free anymore.


As Oracle ignored this security related problem (***) I would like to=20
ask, how to handle this problem? And to which software needs to be=20
requested for CVE? To MySQL itself (as described in option 1)? Or to=20
every one software which uses MySQL (as described in option 2)?

I think you understand me, that MySQL DBD driver needs to be fixed,=20
ideally ASAP. Bug report on github is from April 13 [4]. And as Oracle=20
is not willing to do anything, I hope that people on public oss-security=20
list give some advice how to handle this situation.

I'm CCing all relevant security teams, when replaying please do not=20
forget to include them + me. Thanks!

--

[1] - https://dev.mysql.com/doc/refman/5.7/en/mysql-stmt-close.html
[2] - https://dev.mysql.com/doc/refman/5.7/en/mysql-stmt-error.html
[3] - https://dev.mysql.com/doc/refman/5.7/en/mysql-stmt-execute.html
[4] - https://github.com/perl5-dbi/DBD-mysql/issues/120

(***) - This is not a first time! Previous two security issues reported=20
by me were ignored too. Oracle is the worst company in handling security=20
issues. It is useless to report them anything. They just start threaten=20
if you make information about issue public. And they are not competent=20
to start working on it or fix it in less then 6 months! Really I suggest=20
to not report any security bug to Oracle, it is just wasting of time.

--=20
Pali Roh=C3=A1r
pali.rohar@gmail.com

--nextPart7311002.134NTyiPbi
Content-Type: application/pgp-signature; name=signature.asc 
Content-Description: This is a digitally signed message part.

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAlk5xk8ACgkQi/DJPQPkQ1IiYwCeO1CgPwRFimTsyQhtKjGo0FOD
vgYAn2SQqMnYrHmIueBSlUbYhvtwqu0f
=yDK4
-----END PGP SIGNATURE-----

--nextPart7311002.134NTyiPbi--
