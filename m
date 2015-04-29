X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6489" "Wednesday" "29" "April" "2015" "16:41:45" "+0200" "=?UTF-8?B?TWljaGHFgiBTdGFydWNo?=" "msta@cinkciarz.pl" "<CAN1difs9XYhuXST0JiOtxyy5DEqNo0pktDQPNR-8ft9NyXtHzA@mail.gmail.com>" "193" "Re: [oss-security] [oCERT-2015-003] MySQL SSL/TLS downgrade" nil nil nil "4" "2015042914:41:45" "[oss-security] [oCERT-2015-003] MySQL SSL/TLS downgrade" (number mark "        msta@cinkcia Apr 29  193/6489  " thread-indent "\"Re: [oss-security] [oCERT-2015-003] MySQL SSL/TLS downgrade\"\n") "<20150429140058.GH23142@core.inversepath.com>" ("<20150429140058.GH23142@core.inversepath.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19723 invoked by uid 550); 29 Apr 2015 14:58:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12222 invoked from network); 29 Apr 2015 14:41:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cinkciarz.pl; s=google;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=P2dQ4yCnrWnvjf0J8yMPNCx6EQQwSwJt2FC9CZ49BWA=;
        b=fAsJ6fQ2EGRCDMAFqEkJgm9gkk88vNZd2jW0cqG/y2oZGvAFInbBtVe0g1UM8Gg/M+
         VgS/Nn2UsXxiUQCSxodFhcdkQLx67GsN+c2HFfvX70ltuXPzzEh4Cm4hZS3jjQc+6IiM
         d992IeCg65kYlFKut5wpfZrd/tfkywxEna6yU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=P2dQ4yCnrWnvjf0J8yMPNCx6EQQwSwJt2FC9CZ49BWA=;
        b=LJTN8ID+F0o+JgD82d30hPwY60bx9W2bZudrt80ScjAahWhpc7ZB+l5uOHleU/4ZR0
         OQHpWCX0eNOKfOPOQd42nMaqKusI82I1+ZOT0lQ/6dhDnYYLIqyZudSQEigxnAPnPS3d
         Iw60cvLBEuaDgBx1nhgUF9hGMTWIt87gvKBNEiJ1Z2l9OpqYBTJWBQKoE2JTGSc9cIQu
         TtPiapsMfH3Dz63HP5DtJAwBxf/yJmUlDCZabbfrfEL7fBiHY9k1+NATzTZXThw1dWOo
         4NZ+a1iLkG7DuNNVPiZar/E6ZKGC9p4K0slQxv5mW71/XZHVnJynZRV0x2eAk3E0fhlD
         6PLQ==
X-Gm-Message-State: ALoCoQnhwPq530miSel2FeFwq+Fmn2b1L1ufhT/ZJEhPUsp3iEhlqPrbvhoUBODGbDX6eclybbF+
MIME-Version: 1.0
X-Received: by 10.152.23.38 with SMTP id j6mr18631538laf.47.1430318505582;
 Wed, 29 Apr 2015 07:41:45 -0700 (PDT)
In-Reply-To: <20150429140058.GH23142@core.inversepath.com>
References: <20150429140058.GH23142@core.inversepath.com>
Message-ID: <CAN1difs9XYhuXST0JiOtxyy5DEqNo0pktDQPNR-8ft9NyXtHzA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e0160b6f0710a5e0514ddfa3f
Date: Wed, 29 Apr 2015 16:41:45 +0200
From: =?UTF-8?Q?Micha=C5=82_Staruch?= <msta@cinkciarz.pl>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] [oCERT-2015-003] MySQL SSL/TLS downgrade
To: oss-security@lists.openwall.com

--089e0160b6f0710a5e0514ddfa3f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Even using "--ssl-verify-server-cert" won't help you much, as certificate
validation
performed by MySQL client is a joke, far from meeting RFC 5280 requirements.

I've performed some tests and given the details to Oracle in 2014 Q3 (MySQL
bug #74066, hidden from public) - but no progress, so far.


On Wed, Apr 29, 2015 at 4:00 PM, Andrea Barisani <lcars@ocert.org> wrote:

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
> In a similar manner to the new '--ssl' option behaviour, users of the MyS=
QL
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
> MySQL <=3D 5.7.2
>
> MySQl Connector/C (libmysqlclient) < 6.1.3
>
> Percona Server, all versions
>
> MariaDB, all versions
>
> Fixed version:
>
> MySQL >=3D 5.7.3
>
> MySQl Connector/C (libmysqlclient) >=3D 6.1.3
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
> https://github.com/mysql/mysql-server/commit/3bd5589e1a5a93f9c224badf983c=
d65c45215390
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



--=20

Pozdrawiam | Best Regards

Micha=C5=82 Staruch | Information Security Officer

ul. Sienkiewicza 9, 65-001 Zielona G=C3=B3ra

msta@cinkciarz.pl

Find us on Bloomberg CKPL <GO>
 [image: Cinkciarz.pl Sp. z.o.o] <https://cinkciarz.pl>

*Cinkciarz.pl Sp. z o.o.*

*Siedziba:* ul. Sienkiewicza 9, 65-001 Zielona G=C3=B3ra

*Biuro PL:* Al. Jerozolimskie 123A, 00-965 Warszawa | *Biuro UK:* The
Broadgate Tower, 20 Primrose Street, London EC2A 2EW

*Sekretariat:* +48 726 666 655 | *Infolinia:* +48 68 410 99 50

biuro@cinkciarz.pl | https://cinkciarz.pl

KRS 0000364722 | Kapita=C5=82 zak=C5=82adowy 23.263.500 z=C5=82

REGON 080465538 | NIP 9291830388

Audited by: Grant Thornton

[image: Oficjalny sponsor Reprezentacji Polski w pi=C5=82ce no=C5=BCnej]

Tre=C5=9B=C4=87 tej wiadomo=C5=9Bci zawiera informacje poufne, przeznaczone=
 tylko dla
adresata. Udost=C4=99pnianie, ujawnianie, powielanie, rozpowszechnianie b=
=C4=85d=C5=BA
powo=C5=82ywanie si=C4=99 na jakikolwiek jej fragment przez inne osoby jest
zabronione. W razie przypadkowego otrzymania tej wiadomo=C5=9Bci prosimy o
powiadomienie o tym nadawcy oraz trwa=C5=82e jej usuni=C4=99cie. Informacje=
 zawarte w
tej wiadomo=C5=9Bci mog=C4=85 by=C4=87 obj=C4=99te tajemnic=C4=85 zawodow=
=C4=85 lub chronione innymi
przepisami prawnymi. Nadawca nie bierze odpowiedzialno=C5=9Bci za jakiekolw=
iek
szkody spowodowane wirusem komputerowym przetransmitowanym w tej
wiadomo=C5=9Bci.  Pogl=C4=85dy i opinie przedstawione w tej wiadomo=C5=9Bci=
 s=C4=85 wy=C5=82=C4=85cznie
pogl=C4=85dami i opiniami jej autora i niekoniecznie reprezentuj=C4=85 pogl=
=C4=85dy i
opinie firmy.

This is a confidential e-mail intended solely for the use of the entity or
the individual to whom it is addressed. Unauthorized publication, use,
dissemination or disclosure of this message, either in whole or in part is
strictly prohibited. If you have received this message in error please send
it back to the sender and delete it. It may also be privileged or otherwise
protected by work product immunity or other legal rules. The company
accepts no liability for any damage caused by any virus transmitted by this
e-mail. Any views or opinions presented in this e-mail are solely those of
the author and do not necessarily represent those of the company.

--089e0160b6f0710a5e0514ddfa3f--
