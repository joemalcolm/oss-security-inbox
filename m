X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1345" "Tuesday" "25" "April" "2017" "18:16:11" "-0700" "Chris Douglas" "cdouglas@apache.org" "<CACO5Y4zUyP7-znomom9NJFTxAzG+_RjmjCqeF0CQoogVMzL9Dg@mail.gmail.com>" "39" "[oss-security] CVE-2017-3162: Apache Hadoop DataNode web UI vulnerability" nil nil nil "4" "2017042601:16:11" "[oss-security] CVE-2017-3162: Apache Hadoop DataNode web UI vulnerability" (number mark "U       cdouglas@apa Apr 25   39/1345  " thread-indent "\"[oss-security] CVE-2017-3162: Apache Hadoop DataNode web UI vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22235 invoked by uid 550); 26 Apr 2017 02:01:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4094 invoked from network); 26 Apr 2017 01:16:52 -0000
X-Gm-Message-State: AN3rC/4/s9WNoUcF0EP61S1GvFZLDCsRqXmdp8ek5wvqBPWC5WpWQP3v
	Pq+TbKFBqvLPllcIubgXlOV705RzVA==
X-Received: by 10.31.11.208 with SMTP id 199mr1614529vkl.149.1493169391544;
 Tue, 25 Apr 2017 18:16:31 -0700 (PDT)
MIME-Version: 1.0
From: Chris Douglas <cdouglas@apache.org>
Date: Tue, 25 Apr 2017 18:16:11 -0700
X-Gmail-Original-Message-ID: <CACO5Y4zUyP7-znomom9NJFTxAzG+_RjmjCqeF0CQoogVMzL9Dg@mail.gmail.com>
Message-ID: <CACO5Y4zUyP7-znomom9NJFTxAzG+_RjmjCqeF0CQoogVMzL9Dg@mail.gmail.com>
To: user@hadoop.apache.org, 
	"common-dev@hadoop.apache.org" <common-dev@hadoop.apache.org>, 
	"general@hadoop.apache.org" <general@hadoop.apache.org>, "security@apache.org" <security@apache.org>, 
	full-disclosure@lists.grok.org.uk, bugtraq <bugtraq@securityfocus.com>, 
	oss-security@lists.openwall.com, 
	"<security@hadoop.apache.org>" <security@hadoop.apache.org>
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE-2017-3162: Apache Hadoop DataNode web UI vulnerability

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

CVE-2017-3162: Apache Hadoop DataNode web UI vulnerability

Severity: Important

Vendor: The Apache Software Foundation

Versions affected: Hadoop 2.6.x and earlier

Description:
HDFS clients interact with a servlet on the DataNode to browse the
HDFS namespace. The NameNode is provided as a query parameter that is
not validated.

Mitigation:
Users of Apache Hadoop 2.6.x and earlier should upgrade to Hadoop
2.7.0 or later.

Credit:
This issue was discovered by Sunil Yadav.
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJY//MFAAoJEPrQXCrFJpS4ZVYQAJ2BcBuaX/vV8brWXEsMH25L
cUCKbyhdbKaq5m3vcGF6S8H+RAzurZSoy/xxP2Xc9oKKtwcUV/TEphMmYK/xEfTU
iSMs84gV7rLPiCg20YwCSi0DbFjpfvFiLrX/K9YoIHD8ZoWOTxrGmf9JGaGWTsv8
gi7N8iCSja2adc88WoqdbdQg/cTPFdv2OKjQeo0Axg63Vt4UFxdrWpGL7oyXPuHD
df2mJR09jvuprzhyACDL2l4O3YO/Q8BMffHu5XVdnewYUS8K3lOEBsNkdbsJx5YG
8XXUYQEZ8RpnAADaeInI6g5e3qEqISrvtLxp/QXARUgpFYoPY2te+3hBQZADnBiq
JlXtM+UD7iY+bs0c+/AJNTn/JRLqiaRe745E/kkYJ8mjvzFEjko5Eaq1xTuzER42
euH5GDr3tkGXsoGPDrCv+ns9MMMZz9qmMqZOayKNN3oN3gZYg00w6Jm8f4BA5qWs
8tPfgaLGoGnEySoGPZdZPVdwFIOcS16+5Wr2JpvMCv8bTQOPR/H2yAFO4K1mmUEh
HB7T67lBCbNa1LrOFQJIWVRMAx9iR63UzCLpRfiTCKSHei2GFuGzat5gRXly3goF
iZqu2AugMFf93KW9x8koVOyoXYOYcIlhLNyRkBPkpgsYY2LZ96plNkNEPOSD+EGC
FlCf1icS+h2DK/F059f5
=TSqN
-----END PGP SIGNATURE-----
