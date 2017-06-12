X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7669" "Monday" "12" "June" "2017" "23:47:54" "+0200" "Pali =?utf-8?B?Um9ow6Fy?=" "pali.rohar@gmail.com" "<201706122347.54536@pali>" "191" "[oss-security] Re: MySQL - use-after-free after mysql_stmt_close()" "^Date:" nil nil "6" "2017061221:47:54" "[oss-security] Re: MySQL - use-after-free after mysql_stmt_close()" (number mark "        pali.rohar@g Jun 12  191/7669  " thread-indent "\"[oss-security] Re: MySQL - use-after-free after mysql_stmt_close()\"\n") "<201706082349.03355@pali>" ("<201706082349.03355@pali>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22203 invoked by uid 550); 13 Jun 2017 00:16:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5586 invoked from network); 12 Jun 2017 21:48:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:user-agent:references:in-reply-to:mime-version
         :content-transfer-encoding:message-id;
        bh=+QBRnkYTP0GNmAQ7HaqALCrV9KN6AmOxHzISJ/CDwAA=;
        b=DlZB2xtGITjsXo31iTCrR/53k3TOgjCiE7KmzOzaydEB0W9uxLwI8UvQfoqyxD89z9
         aqWYY8kldEL2zhSwor5H0ozPq1Sb0pxQ6S+d94RhsVRVQhQ5jQyPYz3x03NIA535v7qi
         VhJ2/oIuk4xt2miaHaJ8XnUqlGZYLie+BFJ4+N+yY3p8W+9H6xNPHpGU8PP9lxHjpiet
         aGhLf4KSYYHHma+Ngan9gX5ga4mxYtk+abmfqe0XKKOzQIIBa7lcAupNCghR8hdjaB7X
         tFqh/6mfqJiwOIhc/+LdG+2xYvowIkHI7/7gtu9BvtOSTHmc1Ti7RPJwmCnRVeus+S+n
         RolA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:user-agent:references
         :in-reply-to:mime-version:content-transfer-encoding:message-id;
        bh=+QBRnkYTP0GNmAQ7HaqALCrV9KN6AmOxHzISJ/CDwAA=;
        b=pnlnlqkZ4ccaIfv/qFWAfLk4U4nKN2PfUtj3FONB1EOWQBEjQKu1shz9xImq0D3O8A
         Qn5imrlkORHkddNPXy6oPwfVxA2qsKDzJyy4j2GxXDB6eWI0J23Z/NoDvNgCdURQoONB
         H5U9FTJ/mJ0SBu1m42d9E6EHd2qrIZSTFlsw4/4qWBPqwkvySOLoJgU8+AFTklnsUgUp
         DoT0pMQE1ZWhSh2l6alKDaC4dS2YzFW8F+DtahT51NXJeU0V46CMPfnlxWlsW/gkVPUr
         TV7ycRi6afZq07E168B7edI0/yk3eOz3jSUWqI6+LVRPsznwKrs0JTOn27BWJeELWPRD
         OkDQ==
X-Gm-Message-State: AKS2vOxGi3W9N39/uGOoSoVCCKp4AO+ygMpmdhQuzj6It7q1Aba0z+h2
	50Z62wK+MjvmHmcq
X-Received: by 10.223.132.194 with SMTP id 60mr567074wrg.80.1497304076677;
        Mon, 12 Jun 2017 14:47:56 -0700 (PDT)
User-Agent: KMail/1.13.7 (Linux/3.13.0-117-generic; KDE/4.14.2; x86_64; ; )
References: <201706082349.03355@pali>
In-Reply-To: <201706082349.03355@pali>
MIME-Version: 1.0
Content-Type: multipart/signed;
  boundary="nextPart5415029.dV7T3SNUHd";
  protocol="application/pgp-signature";
  micalg=pgp-sha1
Content-Transfer-Encoding: 7bit
Message-Id: <201706122347.54536@pali>
Date: Mon, 12 Jun 2017 23:47:54 +0200
From: Pali =?utf-8?q?Roh=C3=A1r?= <pali.rohar@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: MySQL - use-after-free after mysql_stmt_close()
To: oss-security@lists.openwall.com,
 security@mariadb.org,
 secalert_us@oracle.com,
 security@percona.com,
 Andrea Barisani <andrea@inversepath.com>,
 Michiel Beijen <michiel.beijen@gmail.com>,
 Alceu Rodrigues de Freitas Junior <glasswalk3r@yahoo.com.br>

--nextPart5415029.dV7T3SNUHd
Content-Type: Text/Plain;
  charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello!

Any idea how to handle this particular problem?

On Thursday 08 June 2017 23:49:03 Pali Roh=C3=A1r wrote:
> Hello!
>=20
> MySQL applications written according to Oracle's MySQL documentation
> & examples for mysql_stmt_close() function call are vulnerable to
> use- after-free defect.
>=20
> In mysql_stmt_close() documentation [1] for return value is written:
> "Zero for success. Nonzero if an error occurred." And there are
> defined two errors: CR_SERVER_GONE_ERROR CR_UNKNOWN_ERROR. From
> other parts of documentation can be understood that error messages
> for statements could be obtained by mysql_stmt_error() function [2].
>=20
> Whole example of usage is written in mysql_stmt_execute() function
> [3]. The relevant part for mysql_stmt_close() is at the end of
> example:
>=20
> /* Close the statement */
> if (mysql_stmt_close(stmt))
> {
>   fprintf(stderr, " failed while closing the statement\n");
>   fprintf(stderr, " %s\n", mysql_stmt_error(stmt));
>   exit(0);
> }
>=20
> And here is a problem, use-after-free defect. Current implementation
> of mysql_stmt_close() function unconditionally free passed statement
> structure and therefore following mysql_stmt_error() call is
> defective to use-after-free.
>=20
> Relevant part of implementation of mysql_stmt_close() function is:
>=20
> my_bool mysql_stmt_close(MYSQL_STMT *stmt)
> {
>   int rc=3D0;
> ...
>   if ((rc=3D stmt_command(mysql, COM_STMT_CLOSE, buff, 4, stmt)))
>     set_stmt_errmsg(stmt, &mysql->net);
> ...
>   my_free(stmt);
>   return rc;
> }
>=20
> As you can see it stores real error message into stmt structure, but
> at the end it is freed. Which means error message is no longer
> available and caller is not able to read it (even via
> mysql_stmt_error() call).
>=20
> As such defective code is in example of the usage, probably couple of
> MySQL applications written according to that defective documentations
> are affected to this issue.
>=20
> There is reported real bug for MySQL DBI driver that is affected by
> this issue [4]. Reporter probably compiled MySQL library or driver
> itself with some compiler options which could detect buffer
> overflows and uncovered this issue.
>=20
>=20
> In April 17 I reported this issue to oCERT team and it was forwarded
> to MySQL, MariaDB and Percona security teams.
>=20
> MariaDB team answered that this is problem in Oracle & MySQL and
> their documentation as MariaDB do not have such vulnerable example
> in their documentation.
>=20
> Oracle team was unwilling to tell anything, provide any information
> how to handle such issue or what to do, therefore with suggestion
> from oCERT I decided to make this report public and open public
> discussion for other people on oss-security list how to handle this
> problem.
>=20
>=20
> As Oracle fully ignored this problem and have not stated if problem
> is in documentation, implementation or both, I see probably 3
> different solutions:
>=20
> 1) Documentation with examples is correct and this is how it should
> be used. What is wrong is implementation.
>=20
> It would mean that function mysql_stmt_error() and mysql_stmt_errno()
> needs to specially handle statement pointers which were already freed
> by mysql_stmt_close(). This can be done e.g. by storing hash table
> of pointers and assigning for them last received error.
>=20
> Or clarifying that mysql_stmt_close() does not always free passed
> memory. Because from current description in documentation it is not
> fully unambiguous what happen if function fails.
>=20
> In this case implementation of mysql_stmt_close(), mysql_stmt_error()
> and mysql_stmt_errno() are vulnerable to use-after-free defect and
> needs to be fixed. And it should be assigned CVE for MySQL for this
> problem.
>=20
> 2) Implementation is correct, documentation is wrong.
>=20
> Documentation needs to be fixed to properly describe how are those
> functions implemented. Important note must be that if function
> mysql_stmt_close() fails it is not possible to take error code via
> mysql_stmt_error() or mysql_stmt_errno(). Also examples needs to be
> fixed.
>=20
> And then all MySQL applications which were written according to wrong
> documentation needs to be fixed and for each one needs to be assigned
> CVE. Number of those applications is unknown, to get it first every
> application which uses libmysqlclient.so needs to be checked and
> verified. What we know now is that MySQL Perl DBI is affected.
>=20
> 3) Documentation is wrong, but implementation of mysql_stmt_close()
> is not-so-correct.
>=20
> Which would mean that return value of mysql_stmt_close() is fully
> meaningless as there is no way to recover from bad state. Currently
> mysql_stmt_close() unconditionally free memory for statement, so no
> recover is possible.
>=20
> There are two options what can be done:
>=20
> * Always return value zero which means no error occurred. This
> basically mitigate use-after-free vulnerability in Oracle's
> documentation and also all applications which were written according
> to documentation.
>=20
> * When error occurred, do not free memory of passed structure. This
> would mean that following mysql_stmt_error() call would not be
> affected by use-after-free anymore.
>=20
>=20
> As Oracle ignored this security related problem (***) I would like to
> ask, how to handle this problem? And to which software needs to be
> requested for CVE? To MySQL itself (as described in option 1)? Or to
> every one software which uses MySQL (as described in option 2)?
>=20
> I think you understand me, that MySQL DBD driver needs to be fixed,
> ideally ASAP. Bug report on github is from April 13 [4]. And as
> Oracle is not willing to do anything, I hope that people on public
> oss-security list give some advice how to handle this situation.
>=20
> I'm CCing all relevant security teams, when replaying please do not
> forget to include them + me. Thanks!
>=20
> --
>=20
> [1] - https://dev.mysql.com/doc/refman/5.7/en/mysql-stmt-close.html
> [2] - https://dev.mysql.com/doc/refman/5.7/en/mysql-stmt-error.html
> [3] - https://dev.mysql.com/doc/refman/5.7/en/mysql-stmt-execute.html
> [4] - https://github.com/perl5-dbi/DBD-mysql/issues/120

Just to note that Oracle silently updated above documentation pages
after I sent this email. Original versions are available in web.archive:

[1] - http://web.archive.org/web/20161220021610/https://dev.mysql.com/doc/r=
efman/5.7/en/mysql-stmt-close.html
[2] - http://web.archive.org/web/20161220021610/https://dev.mysql.com/doc/r=
efman/5.7/en/mysql-stmt-error.html
[3] - http://web.archive.org/web/20161220021610/https://dev.mysql.com/doc/r=
efman/5.7/en/mysql-stmt-execute.html

> (***) - This is not a first time! Previous two security issues
> reported by me were ignored too. Oracle is the worst company in
> handling security issues. It is useless to report them anything.
> They just start threaten if you make information about issue public.
> And they are not competent to start working on it or fix it in less
> then 6 months! Really I suggest to not report any security bug to
> Oracle, it is just wasting of time.

--=20
Pali Roh=C3=A1r
pali.rohar@gmail.com

--nextPart5415029.dV7T3SNUHd
Content-Type: application/pgp-signature; name=signature.asc 
Content-Description: This is a digitally signed message part.

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAlk/DAoACgkQi/DJPQPkQ1LC1wCgrD742MCb54ifwjV1he+yEhzJ
asQAnRtJhMwKIMYqHyaFhHqqC4xAE1FX
=c0lc
-----END PGP SIGNATURE-----

--nextPart5415029.dV7T3SNUHd--
