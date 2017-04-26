X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1297" "Tuesday" "25" "April" "2017" "18:16:08" "-0700" "Chris Douglas" "cdouglas@apache.org" "<CACO5Y4zUtzG38tkpQZDAeUdz-c69Gg4Q7fz2dLaT0ywdfWQYcA@mail.gmail.com>" "38" "[oss-security] CVE-2017-3161: Apache Hadoop NameNode XSS vulnerability" nil nil nil "4" "2017042601:16:08" "[oss-security] CVE-2017-3161: Apache Hadoop NameNode XSS vulnerability" (number mark "U       cdouglas@apa Apr 25   38/1297  " thread-indent "\"[oss-security] CVE-2017-3161: Apache Hadoop NameNode XSS vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26094 invoked by uid 550); 26 Apr 2017 02:01:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4043 invoked from network); 26 Apr 2017 01:16:45 -0000
X-Gm-Message-State: AN3rC/6vGV9fA1T9OOaRt36ilooT8pK+H0JOdXbcusFRJ57qPYbKLOXP
	u5oC5wk0gND35JAW0GV3mlxK1V4dYg==
X-Received: by 10.31.154.194 with SMTP id c185mr1479763vke.35.1493169388543;
 Tue, 25 Apr 2017 18:16:28 -0700 (PDT)
MIME-Version: 1.0
From: Chris Douglas <cdouglas@apache.org>
Date: Tue, 25 Apr 2017 18:16:08 -0700
X-Gmail-Original-Message-ID: <CACO5Y4zUtzG38tkpQZDAeUdz-c69Gg4Q7fz2dLaT0ywdfWQYcA@mail.gmail.com>
Message-ID: <CACO5Y4zUtzG38tkpQZDAeUdz-c69Gg4Q7fz2dLaT0ywdfWQYcA@mail.gmail.com>
To: user@hadoop.apache.org, 
	"common-dev@hadoop.apache.org" <common-dev@hadoop.apache.org>, 
	"general@hadoop.apache.org" <general@hadoop.apache.org>, "security@apache.org" <security@apache.org>, 
	full-disclosure@lists.grok.org.uk, bugtraq <bugtraq@securityfocus.com>, 
	oss-security@lists.openwall.com, 
	"<security@hadoop.apache.org>" <security@hadoop.apache.org>
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE-2017-3161: Apache Hadoop NameNode XSS vulnerability

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

CVE-2017-3161: Apache Hadoop NameNode XSS vulnerability

Severity: Important

Vendor: The Apache Software Foundation

Versions affected: Hadoop 2.6.x and earlier

Description:
The HDFS web UI is vulnerable to a cross-site scripting (XSS) attack
through an unescaped query parameter.

Mitigation:
Users of Apache Hadoop 2.6.x and earlier should upgrade to Hadoop
2.7.0 or later.

Credit:
This issue was discovered by Sunil Yadav.
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJY//OZAAoJEPrQXCrFJpS4YEIP/RfhNS+MHoyc+Qgj2DXlw4NK
yH8RVh2Kg2qnIkl/gaNromzYuJn7EEgBuyeXCkEUax4F2G0zUuVEImxVNPlLGVp3
gvj4tAmpCQ6/JcaklI5p8C5LV1Qe17EnHXZ34eFKXTTej3NyE01o6D4mDYW9pmHG
8JGjZ1FtZpP3YTvqiDrSbXTsSx5bY9uJOaqPrkQAdmTOWRrtnKHF/nS39vrBRJCL
J/gEb3k8/UVco5gOtqFcWSXyNPgZofYCfaGgyWH2wauH8ngD6kEI5Yx1fX5CVDeU
Kpr+mJxNGNqICI8+L84tCuHMXO4Ie0ec4X87VzWX1Bf9FGMfAm8UKapsw69qCJrk
Pszul+d1Wq1gEcOUccbnEuMP0JfOuzer8GQ9FohCRUO26C6DFhN7sgMUFRUEJeia
ElTiolEh9jv+2NssmNkgZH8eK6fKrK5MZR8TankmOUiw++nxJjqCRP/D6aGuEkYR
g7zuS3KBK5G8EmLdT/DTRuakWIsKGDkVic0s/NMrYx+fV3DGUe/2hB4ejXfTHQnU
85fYiyR7l8F4YmVqmCf9fb1FYclJ/J/9QuBHw0X523EKUH+sePOFjBzdiF+Apazp
6I5iaPHlnNS50dCSksMs/hlu3GjcU5ZMm9xG+yBGYN8Ex5sEXKcqVuvw7n6Ju4OH
AZbRxaHoIU5p8U0S237o
=87hK
-----END PGP SIGNATURE-----
