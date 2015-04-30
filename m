X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4251" "Thursday" "30" "April" "2015" "11:50:25" "-0400" "Jon Oberheide" "jon@oberheide.org" "<CAFHQe1eXiKoQSj7EZz-XFGpkQSSN3nDmumvhuawi_731Ks6Axg@mail.gmail.com>" "135" "Re: [oss-security] [oCERT-2015-003] MySQL SSL/TLS downgrade" nil nil nil "4" "2015043015:50:25" "[oss-security] [oCERT-2015-003] MySQL SSL/TLS downgrade" (number mark "        jon@oberheid Apr 30  135/4251  " thread-indent "\"Re: [oss-security] [oCERT-2015-003] MySQL SSL/TLS downgrade\"\n") "<20150429140058.GH23142@core.inversepath.com>" ("<20150429140058.GH23142@core.inversepath.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19813 invoked by uid 550); 30 Apr 2015 15:50:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19788 invoked from network); 30 Apr 2015 15:50:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oberheide.org; s=google;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=SffG3/TC/wHAlFEj6siSdd92N3Ge2xjJ6IzZUk7oEkM=;
        b=w8bfND4IrJIlSELL6ubA4y1UxembrqQOwvhRzPlsKpyuDFZTVx3ARk8PqW+Sk2Vn0Q
         J3ehRRIHA+VxU9ySru0a02T2gdewAF9ST0osvKhlsfZOsTOylyEN3beQUhX+NWRo37/J
         w87ldOCBSPSajoZyjfcsHOtKiCZQWvb6bsJkk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=SffG3/TC/wHAlFEj6siSdd92N3Ge2xjJ6IzZUk7oEkM=;
        b=mzHYIrqGggcldLYjvNKsib3EgPKMQmQQb6NnFUqWUW/77HQYPyujblnWMcHj12dmRr
         wnvlvvcH8QgCcaxZWlR+Mu9v3JbBUfWArbDYPmqKXyPM0kK+08qYkaBSzgsFNKDsI6gQ
         0F7WfFm6EFUcGJ9+W4OBEgKWsXYtN7IwQjw+GvtS47AhKHGCCG1TD6D2J4q2gZmj+oIm
         a0iY6bMiUdtSPak9iLOaha2/+Du+Rl9Wmzxa3UJ1iT4cE6V0VQyhHNCrrj0aJtprmjsF
         GGjJEFU5T3vS36oMZClDdKaZ4lI0qwOQ9ZIzmbnT7mLeGTOslYZjntGkDv20wmCkNo51
         SrPQ==
X-Gm-Message-State: ALoCoQmAxSg+0EHKizv8XMd6Kkn1AS0QNc0jVW/svao7RuZNXe7hlSYb/8MqMLVhPrMNXA+5W4Az
MIME-Version: 1.0
X-Received: by 10.107.133.225 with SMTP id p94mr6583322ioi.40.1430409025071;
 Thu, 30 Apr 2015 08:50:25 -0700 (PDT)
In-Reply-To: <20150429140058.GH23142@core.inversepath.com>
References: <20150429140058.GH23142@core.inversepath.com>
Message-ID: <CAFHQe1eXiKoQSj7EZz-XFGpkQSSN3nDmumvhuawi_731Ks6Axg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113ecca0d2d49e0514f30dd1
Cc: ocert-announce@lists.ocert.org, bugtraq@securityfocus.com
Date: Thu, 30 Apr 2015 11:50:25 -0400
From: Jon Oberheide <jon@oberheide.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] [oCERT-2015-003] MySQL SSL/TLS downgrade
To: oss-security@lists.openwall.com

--001a113ecca0d2d49e0514f30dd1
Content-Type: text/plain; charset=UTF-8

Some additional silly links related to the vulnerability:

http://backronym.fail/
https://www.duosecurity.com/blog/backronym-mysql-vulnerability

And actually one useful link from Todd Farmer:

http://mysqlblog.fivefarmers.com/2015/04/29/ssltls-in-5-6-and-5-5-ocert-advisory/

On Wed, Apr 29, 2015 at 10:00 AM, Andrea Barisani <lcars@ocert.org> wrote:

>
> #2015-003 MySQL SSL/TLS downgrade
>
> Description:
>
> The MySQL project is an open source relational database management system.
>
> A vulnerability has been reported concerning the impossibility for MySQL
> users
> (with any major stable version) to enforce an effective SSL/TLS connection
> that would be immune from man-in-the-middle (MITM) attacks performing a
> malicious downgrade.
>
> While the issue has been addressed in MySQL preview release 5.7.3 in
> December
> 2013, it is perceived that the majority of MySQL users are not aware of
> this
> limitation and that the issue should be treated as a vulnerability.
>
> The vulnerability lies within the behaviour of the '--ssl' client option,
> which on affected versions it is being treated as "advisory". Therefore
> while
> the option would attempt an SSL/TLS connection to be initiated towards a
> server, it would not actually require it. This allows a MITM attack to
> transparently "strip" the SSL/TLS protection.
>
> The issue affects the ssl client option whether used directly or triggered
> automatically by the use of other ssl options ('--ssl-xxx') that imply
> '--ssl'.
>
> Such behavior is clearly indicated in MySQL reference manual as follows:
>
>   For the server, this option specifies that the server permits but does
> not require
>   SSL connections.
>
>   For a client program, this option permits but does not require the
> client to
>   connect to the server using SSL. Therefore, this option is not
> sufficient in
>   itself to cause an SSL connection to be used. For example, if you
> specify this
>   option for a client program but the server has not been configured to
> permit
>   SSL connections, an unencrypted connection is used.
>
> In a similar manner to the new '--ssl' option behaviour, users of the MySQL
> client library (Connector/C, libmysqlclient), as of MySQL 5.7.3, can take
> advantage of the MYSQL_OPT_SSL_ENFORCE option to enforce SSL/TLS
> connections.
>
> The vulnerability also affects the MySQL forks MariaDB and Percona Server,
> as
> the relevant 5.7.3 patch has not been pulled, at the time of this
> advisory, in
> their respective stable versions.
>
> Affected version:
>
> MySQL <= 5.7.2
>
> MySQl Connector/C (libmysqlclient) < 6.1.3
>
> Percona Server, all versions
>
> MariaDB, all versions
>
> Fixed version:
>
> MySQL >= 5.7.3
>
> MySQl Connector/C (libmysqlclient) >= 6.1.3
>
> Percona Server, N/A
>
> MariaDB, N/A
>
> Credit: vulnerability report from Adam Goodman, Principal Security
> Architect
> at Duo Security.
>
> CVE: CVE-2015-3152 (MariaDB, Percona)
>
> Timeline:
>
> 2015-03-20: vulnerability report received
> 2015-03-23: contacted Oracle Security
> 2015-04-04: oCERT sets embargo date to April 29th
> 2015-04-20: reporter confirms MariaDB is affected
> 2015-04-22: contacted MariaDB and affected vendors, assigned CVEs
> 2015-04-23: contacted Percona
> 2015-04-29: advisory release
>
> References:
>
> https://github.com/mysql/mysql-server/commit/3bd5589e1a5a93f9c224badf983cd65c45215390
> http://mysqlblog.fivefarmers.com/2014/04/02/redefining-ssl-option
> http://dev.mysql.com/doc/relnotes/mysql/5.7/en/news-5-7-3.html
> https://mariadb.atlassian.net/browse/MDEV-7937
> https://bugs.launchpad.net/percona-server/+bug/1447527
>
> Permalink:
> http://www.ocert.org/advisories/ocert-2015-003.html
>
> --
> Andrea Barisani |                Founder & Project Coordinator
>           oCERT | OSS Computer Security Incident Response Team
>
> <lcars@ocert.org>                         http://www.ocert.org
>  0x864C9B9E 0A76 074A 02CD E989 CE7F AC3F DA47 578E 864C 9B9E
>         "Pluralitas non est ponenda sine necessitate"
>



-- 
Jon Oberheide <jon@oberheide.org>
GnuPG Key: 4096R/52961381
Fingerprint: 964B 79EF 47D4 D7D0 CF73 D456 97FF B9D2 5296 1381

--001a113ecca0d2d49e0514f30dd1--
