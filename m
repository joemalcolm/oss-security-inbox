X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3862" "Wednesday" "1" "February" "2017" "20:35:01" "+0100" "=?UTF-8?B?QsOhbGludCBSw6ljemV5?=" "balint@balintreczey.hu" "<CAK0OdpzgDzedff7xC=bEiSoG69QzHfPSjhWQLUaMdJA5UNXO2g@mail.gmail.com>" "89" "[oss-security] CVE request: Use after free in libmysqlclient.so (was: Re: Use after free in libmysqlclient.so)" nil nil nil "2" "2017020119:35:01" "[oss-security] CVE request: Use after free in libmysqlclient.so (was: Re: Use after free in libmysqlclient.so)" (number mark "U       balint@balin Feb  1   89/3862  " thread-indent "\"[oss-security] CVE request: Use after free in libmysqlclient.so (was: Re: Use after free in libmysqlclient.so)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20178 invoked by uid 550); 1 Feb 2017 19:35:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20151 invoked from network); 1 Feb 2017 19:35:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:sender:from:date:message-id:subject:to;
        bh=NQvIVtAxliW5rMCdpFAI+T7P31KTXSSciXtiicTPfSk=;
        b=ArvCcDxOqcFjgRoScaXl9CHNjIiESqWl2w1PvYpBiRlcSkW5zPjTY4+Iz/JABWVRCc
         05OFIwwAax2wWYyivwYksIRS7dOt3G6UT7/Yw6RGGLVlRrqTCKR9637OHc8/aSF+0Dut
         4Ta9GMONx1MAlYZoNAoEQhuqwZ1upmIGxG1E01lpR01Wm//WEDxf1fyuOhEOpJvop+hc
         n1UxCNL0vYzsWjop3LAkXyqfl7T4rx+vHB2BxK2Jzmknul58LnXUsu9cZJsVYTTxJzH2
         v3SaAewLP+puwAd/jbVx2jPve0I6ZGSjnF+bzuuuREUZfhG2/gpstPMpHuag6tkVQVpD
         Yc6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:sender:from:date
         :message-id:subject:to;
        bh=NQvIVtAxliW5rMCdpFAI+T7P31KTXSSciXtiicTPfSk=;
        b=BaX1h1YuCIFl5oDKwxgTjeikZKOiy4UWUT6PqHS+GXpk/0UCIuzyafDE1HhTx7s2w2
         UcSQedu98cmTEL3LrxD/dtOQWbBOVyBNrPidvFwIIQG1b9ZP6rzKDGQvs2XDG8QPJH4V
         hwM0ukfy7Tsm95YX6nhilYGaw2oQmtH2zvCdvKXA5+SlPVi+ZPplWTZKW3H9Jr65oZTI
         visVAt/Sf9iW8c7DND5inEkCr4feeqFZobhik6jfmIvThgVXDUdIx1uS02H/JnvUmcD/
         2NI2eaoQyV6ufqYghjapKRJShxQ9yeZt8/M+4oEDiJn/sE/4E/gcm7PVgaSNvqeb3oDO
         QEWg==
X-Gm-Message-State: AIkVDXLjeGZZJxS0yNPzh2NFlnhd5Tkk6rpb+NcVF9+W2mxoFYq0A6mnx5PHDDNrzMkgQAd0Bx3wMbS/LmvPog==
X-Received: by 10.176.82.16 with SMTP id i16mr1873047uaa.77.1485977721683;
 Wed, 01 Feb 2017 11:35:21 -0800 (PST)
MIME-Version: 1.0
Sender: rbalint@gmail.com
From: =?UTF-8?B?QsOhbGludCBSw6ljemV5?= <balint@balintreczey.hu>
Date: Wed, 1 Feb 2017 20:35:01 +0100
X-Google-Sender-Auth: uTxm2c9DjQLPV44SqOF5_wFSNGo
Message-ID: <CAK0OdpzgDzedff7xC=bEiSoG69QzHfPSjhWQLUaMdJA5UNXO2g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE request: Use after free in libmysqlclient.so (was: Re: Use after
 free in libmysqlclient.so)

Hi,

I'm adjusting the subject to reflect the content in case the request
was accidentally missed.

Thanks for the report!

Cheers,
Balint

2017-01-27 23:53 GMT+01:00  <pali@cpan.org>:
> Hello, I would like to report problem related to MySQL/MariaDB and
> possibly asking for assigning CVE if this list is the right place.
>
> C client library for MySQL (libmysqlclient.so) has use-after-free defect
> which can cause crash of applications using that MySQL client.
>
> Defect occurs by calling mysql_close() function from libmysqlclient.so.
> If mysql_close() is called before calling all mysql_stmt_close() (for
> all allocated stmts), then following mysql_stmt_close() call try to
> write to already released memory. mysql_close() let dangling pointer
> exist for prepared statements. Real problem is in function
> mysql_prune_stmt_list() which incorrectly iterate over elements.
> Function list_add() overwrite ->next pointer of current element which
> overwrite next element for iteration.
>
> Basically it is just wrong usage of linked list structure.
>
> Languages in which is not guaranteed order of executing destructor of
> created objects have a big problem as such writing to memory pointed by
> dangling can cause crash of whole application.
>
> E.g. libmysqlclient.so used by perl DBD::mysql driver cause crash of
> whole perl process with simple script:
>
> perl -MDBI -e '
> $dbh = DBI->connect("dbi:mysql:", "root", undef,
>                     {RaiseError => 1, mysql_server_prepare => 1});
> $sth1 = $dbh->prepare("SELECT 1");
> $sth2 = $dbh->prepare("USE mysql");
> $dbh->disconnect;
> $dbh = undef;
> '
> Segmentation fault
>
> Tested on amd64 Ubuntu 12.04 LTS with perl 5.14.2. To reproduce change
> username, password and host where is running mysql server. Valgrind can
> prove that memory corruption really occurs.
>
> This defect was fixed in MySQL 5.6.21 and MySQL 5.7.5 releases. But is
> present in all MySQL 5.5 versions (and also older) and appropriate older
> 5.6 and 5.7 versions. MySQL 5.5 is still used, supported and included in
> lot of linux distributions.
>
> Moreover this defect is present also in MariaDB releases. I tested all
> last major versions 10.2.3, 10.1.21, 10.0.29, 5.5.54 and all those are
> affected.
>
> MySQL and MariaDB provides also standalone package with only C client
> library libmysqlclient.so (without server) under name "Connector/C" and
> so appropriate versions of it are affected too.
>
> I found that this defected was fixed in MySQL git repository by commit:
> https://github.com/mysql/mysql-server/commit/4797ea0b772d5f4c5889bc552424132806f46e93
>
> That commit can be easily applied to last MySQL 5.5.54 version and fixes
> this defect.
>
> Looks like problem was already reported and is publically available in
> MySQL bug tracker, see more details on links:
> https://bugs.mysql.com/bug.php?id=70429
> https://bugs.mysql.com/bug.php?id=63363
> (tickets are closed despite fact that MySQL 5.5 and older are not fixed)
>
> ---
>
> I reported this problem to Oracle secalert_us@oracle.com two months ago,
> but they did absolutely nothing for fixing it in MySQL 5.5. Instead they
> started resending this problem to some random people with @cpan.org
> address for unknown reason. And told me to not disclose information
> about this defect. Resending does not look like normal handling of
> security related problem! Therefore I suggest other people to not
> wasting time reporting problems to Oracle for open source applications.
>
> As two months is really long time to fix such problem which was already
> fixed in new versions; it is already publically disclosed in MySQL bug
> tracker; fix available in public git; problem is in major MariaDB
> versions; fix is small; and this is open source product included in many
> linux distributions I decided to send information to oss-security.
