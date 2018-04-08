X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7355" "Sunday" "8" "April" "2018" "14:21:07" "+0200" "Pali =?utf-8?B?Um9ow6Fy?=" "pali.rohar@gmail.com" "<20180408122107.dftnkqrrgfuz3w2h@pali>" "229" "[oss-security] CVE-2018-2767: MySQL & MariaDB: Return of the BACKRONYM vulnerability (public disclosure)" nil nil nil "4" "2018040812:21:07" "[oss-security] CVE-2018-2767: MySQL & MariaDB: Return of the BACKRONYM vulnerability (public disclosure)" (number mark "U       pali.rohar@g Apr  8  229/7355  " thread-indent "\"[oss-security] CVE-2018-2767: MySQL & MariaDB: Return of the BACKRONYM vulnerability (public disclosure)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31948 invoked by uid 550); 8 Apr 2018 12:21:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31925 invoked from network); 8 Apr 2018 12:21:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=VbTFGyoxXDHMWHZx5kt0VGyUIwj+uSDV67ZA8GGtrO4=;
        b=IHdgfotRmMqb2WjbD1lcFqYQtrgsxebU/a0gXanpBPhGjJUzQQoA/yuCsKoPWgMMl8
         VqBrYO1r4e2mO8kBiltJaa5t38SUgpt74fnZUEMxxIc6AKXLKMPhCDBLdHImTraMWKfQ
         tj3w6KGcFET4pZw2PgTBKXgevo0BspTgGCAIQaluBgy/pxqrfjYTus4PvVfufexUNK1j
         NxwdrXIa1IOyCbWvmXOOZUddjiJ4yutDunFDlNW2ECE8COwMGPFpouVcK2RpiWT6PIQR
         2YcuiK0TbRcaqnc+ZEJMNRsMjtktB4z68IlUGHtdiIOSM6iUAh27Eht3o9j8ppbrZvOE
         ldsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=VbTFGyoxXDHMWHZx5kt0VGyUIwj+uSDV67ZA8GGtrO4=;
        b=Aj6KCFpblvNlAn6BIbzaM8vPECPI41JQH3OSOAsJ4KtOEYHhw13P9OGDtJ7JvZXwdO
         ES2b4YNBVI5Mo6jIdpGQibpPanwB3kdHbVvz5R2P1zO4c3izFpeClSCzhhKytQ1dZd8y
         w1FQvkamRuRuJalAWC/dXkneqaTiQ8VwK4zT9KT0Z86Cxk8LtXVoVmudsdP3uSJdJkXV
         QFC7pi/z6YCEcymf6LJaQJSS1KI2186g2ivJEXEczU0WN8dJwcz1eV5oWqrtQjAbIll8
         GendnhD407c6qtCajnwNIH7YNP8aU7+qfIkNuuGOk7fGm0ErpuECaONbWSCmZ11BQyid
         F7+g==
X-Gm-Message-State: AElRT7HTN4r0XdpK3aGysW8kqxNicy9V6xqPZ9FLK7cCDOf185cPhpuZ
	e0Zu1YWbKnyuoerdEniiGrVaiA==
X-Google-Smtp-Source: AIpwx4+hHycFPJFSyHvh2Qxcmc6/Bmg20IYh46V8sXQCIrUykmIoNh0QAjXVXD5QP5TeMYgluMWvJA==
X-Received: by 10.223.195.205 with SMTP id d13mr26283182wrg.0.1523190081961;
        Sun, 08 Apr 2018 05:21:21 -0700 (PDT)
Date: Sun, 8 Apr 2018 14:21:07 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
To: oss-security@lists.openwall.com, security@mariadb.org,
	Percona Security Team <security@percona.com>,
	Oracle Security Alerts <secalert_us@oracle.com>,
	labs@duosecurity.com
Message-ID: <20180408122107.dftnkqrrgfuz3w2h@pali>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="tyxnflmsbshsx3tm"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: [oss-security] CVE-2018-2767: MySQL & MariaDB: Return of the BACKRONYM
 vulnerability (public disclosure)

--tyxnflmsbshsx3tm
Content-Type: multipart/mixed; boundary="52xrsyoq35cql7u7"
Content-Disposition: inline


--52xrsyoq35cql7u7
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

at the first let me remind you The BACKRONYM and The Riddle
vulnerabilities in MySQL and MariaDB database client software.

http://backronym.fail/

The BACKRONYM vulnerability was discovered in 2015 by Duo Labs and cause
that any mandatory encryption and requirement of usage SSL encryption by
client software which uses MySQL/MariaDB client is only opportunistic.
When server does not support SSL/TLS then client fallback to plain text
non-encrypted connection without any notice. Therefore fully vulnerable
to the downgrade attack.

http://riddle.link/

Later in 2017 I discovered that fix for BACKRONYM in MySQL 5.5 by Oracle
introduced another vulnerability: The Riddle. Oracle fixed BACKRONYM by
adding a new check that SSL/TLS encryption is active -- but this check
was done *after* authentication phase. Therefore vulnerable to reply
attack (thanks to insecure scheme "Secure Password Authentication").

http://again.riddle.link/

After Oracle released a version of MySQL which claimed to fix The Riddle
vulnerability I immediately discovered that it is not truth and problem
was still there... After that Oracle again released a new version with
next attempt of fix.

So... do you think that problems with The BACKRONYM and the Riddle
vulnerabilities were fixed after third attempt? No, I discovered that
BACKRONYM is still present.

The Riddle vulnerability uses the weaknesses of the MySQL auth protocol.
https://dev.mysql.com/doc/internals/en/secure-password-authentication.html
"MySQL Secure Password Authentication" is not secure at all. I already
described it in The Riddle page, usage of SCRAM cryptographic scheme
instead could prevent this problem. We would see in future if "MySQL
Secure Password Authentication" is going to be changed or this "secure"
scheme allows us to break authentication again.

I discovered that BACKRONYM vulnerability is still present in the last
version of the MySQL 5.7 series, MariaDB 5.5 and 10.3 series when client
application which enforces SSL/TLS is linked with libmysqld (library
which supports embedded server, but also connecting to the regular
database server via TCP). Probably other series are affected too, I have
not tested them.

MySQL 5.7 client connects to server even when SSL is unsupported.
MariaDB 10.3 client does not connect to server when SSL is unsupported,
but it connects without establishing SSL tunel when SSL is supported by
server. This behavior is really strange!

In attachment is simple program written in C which can demonstrate this
problem. It sets mysql client options to enforce SSL, then connect to
database server and outputs value of "Ssl_cipher" variable. "Ssl_cipher"
indicates which cipher was used for encryption, empty string when SSL
was not established.

Compile it with libmysqld and see results.

$ cc -o a.out ssl-test.c `mysql_config --cflags --libmysqld-libs` -lstdc++
$ ./a.out 127.0.0.1 3306 "" "user" "pass" "/path/to/ca"

It should either print error message that connection cannot be
established due to server does not support SSL encryption. Or it should
print Ssl_cipher with valid non-empty cipher when connection is really
encrypted.

On tested versions it shows that encryption is not used.

If you are unsure, just open wireshark and watch network communication.

These details were reported to MariaDB, Oracle and Percona security
teams in 2018-03-25. After discussion Oracle sent to other teams
CVE-2018-2767 identifier for this issue and 2018-04-08 was chosen for
public disclosure. Should not be 3 years enough for fixing BACKRONYM?

So... would be BACKRONYM finally fixed? :-) Or can we expect in next
months another new vulnerability which is going to be introduced with
the fix for this one by Oracle team?


PS: In past I had very bad experience with Oracle, they fully ignored
previous reports, did not want to communicate with me and they tried to
remove and hide all details about The Riddle Vulnerability (also from
MITRE). Therefore I'm longer not doing any discussion with Oracle and I
suggest you to do same (I was very polite that for now I sent them at
least details before disclosure).

--=20
Pali Roh=C3=A1r
pali.rohar@gmail.com

--52xrsyoq35cql7u7
Content-Type: text/x-csrc; charset=us-ascii
Content-Disposition: attachment; filename="ssl-test.c"

#include <mysql.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {

	MYSQL mysql;
	MYSQL_RES *res;
	MYSQL_ROW row;
	unsigned long *lengths;
#ifndef MARIADB_BASE_VERSION
	unsigned int mode;
#endif
	my_bool verify;
	const char *host;
	unsigned int port;
	const char *user;
	const char *passwd;
	const char *db;
	const char *ca;

	if (argc != 7) {
		printf("Usage: %s host port db user passwd ca\n", argv[0]);
		return 1;
	}

	host = argv[1];
	port = atoi(argv[2]);
	db = argv[3];
	user = argv[4];
	passwd = argv[5];
	ca = argv[6];

	/* -1 means to not start embedded server, just initialize client library */
	mysql_library_init(-1, NULL, NULL);

	if (!mysql_init(&mysql)) {
		printf("mysql_init failed");
		return 1;
	}

	/* Do not use embedded server */
	mysql_options(&mysql, MYSQL_OPT_USE_REMOTE_CONNECTION, NULL);

	mysql_ssl_set(&mysql, NULL, NULL, ca, NULL, NULL);

#ifndef MARIADB_BASE_VERSION
	/* Enforce SSL for MySQL client */
	mode = SSL_MODE_REQUIRED;
	if (mysql_options(&mysql, MYSQL_OPT_SSL_MODE, &mode) != 0) {
		printf("mysql_options MYSQL_OPT_SSL_MODE failed: %s\n", mysql_error(&mysql));
		return 1;
	}
#endif

	/* Also enforce SSL for MariaDB client */
	verify = 1;
	if (mysql_options(&mysql, MYSQL_OPT_SSL_VERIFY_SERVER_CERT, &verify) != 0) {
		printf("mysql_options MYSQL_OPT_SSL_VERIFY_SERVER_CERT failed: %s\n", mysql_error(&mysql));
		return 1;
	}

	if (!mysql_real_connect(&mysql, host, user, passwd, db, port, NULL, 0)) {
		printf("mysql_real_connect failed: %s\n", mysql_error(&mysql));
		return 1;
	}

	if (mysql_query(&mysql, "SHOW STATUS LIKE 'Ssl_cipher'") != 0) {
		printf("mysql_real_query failed: %s\n", mysql_error(&mysql));
		return 1;
	}

	res = mysql_store_result(&mysql);
	if (!res) {
		printf("mysql_store_result failed: %s\n", mysql_error(&mysql));
		return 1;
	}

	if (mysql_num_rows(res) != 1) {
		printf("mysql_num_rows returned incorrect number of rows\n");
		return 1;
	}

	if (mysql_num_fields(res) != 2) {
		printf("mysql_num_fields returned incorrect number of fields\n");
		return 1;
	}

	row = mysql_fetch_row(res);
	if (!row) {
		printf("mysql_fetch_row failed: %s\n", mysql_error(&mysql));
		return 1;
	}

	lengths = mysql_fetch_lengths(res);
	if (!lengths) {
		printf("mysql_fetch_lengths failed: %s\n", mysql_error(&mysql));
		return 1;
	}

	printf("Output: %.*s : %.*s\n", row[0] ? (int)lengths[0] : 4, row[0] ? row[0] : "NULL", row[1] ? (int)lengths[1] : 4, row[1] ? row[1] : "NULL");

	mysql_close(&mysql);

	return 0;

}

--52xrsyoq35cql7u7--

--tyxnflmsbshsx3tm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQS4VrIQdKium2krgIWL8Mk9A+RDUgUCWsoJLwAKCRCL8Mk9A+RD
UujhAJ9lBTUWXfsU5KVUvqzbloM10WVGeACgxXHZTpYwZaow746fUo0+c72aNJE=
=C5wz
-----END PGP SIGNATURE-----

--tyxnflmsbshsx3tm--
