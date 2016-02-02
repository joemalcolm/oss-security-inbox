X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5066" "Tuesday" "2" "February" "2016" "08:08:34" "-0500" "Larry Cashdollar" "larry0@me.com" "<D2D61482.3331B%larry0@me.com>" "144" "[oss-security] Reflected XSS & Blind SQLi in wordpress plugin eshop v6.3.14" nil nil nil "2" "2016020213:08:34" "[oss-security] Reflected XSS & Blind SQLi in wordpress plugin eshop v6.3.14" (number mark "U       larry0@me.co Feb  2  144/5066  " thread-indent "\"[oss-security] Reflected XSS & Blind SQLi in wordpress plugin eshop v6.3.14\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11370 invoked by uid 550); 2 Feb 2016 13:08:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11298 invoked from network); 2 Feb 2016 13:08:49 -0000
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2016-02-02_08:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1015 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1510270003 definitions=main-1602020226
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=me.com; h=date : subject
 : from : to : message-id : mime-version : content-type :
 content-transfer-encoding; s=4d515a;
 bh=Qkvv8cHEPe2eeZzOX8dPl5IF1iM1cI1qD25MiRUOpJk=;
 b=GdsZZ/wS2siOyhyKoPPIgFBo1Se7XU2n9qL9BtMzK2sfu5mgSxcTT9kW4cCizmwycs+C
 WRFZ0ryh70ZbPB/tumGotVNmEfcEqASw+DEOni12YK/zQcN0s3EJ8qwFFXHpJ+i9DAzF
 WfJ41c/ttiWTxslQNN3Bc92pKcnki8lCGTlLKHs51FOeIq0wmS6Ii7vjiQ0r9hCTtO+c
 hHFpM2fvoRZG4WbTA8bBy2EzjoXdM+Mux7pwGSWy+i9ElpupAFTdfl1Xy8XkrPGoTYwy
 KTn0jqcpS1RvHK1APDecMUa68mbAT5PdHNxhp/IAdaNtwouIS5jDQWy0eBlkAg7d9W53 gg==
User-Agent: Microsoft-MacOutlook/14.6.0.151221
Date: Tue, 02 Feb 2016 08:08:34 -0500
From: Larry Cashdollar <larry0@me.com>
To: Open Security <oss-security@lists.openwall.com>
Message-id: <D2D61482.3331B%larry0@me.com>
Thread-topic: Reflected XSS & Blind SQLi in wordpress plugin eshop v6.3.14
MIME-version: 1.0
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: quoted-printable
Subject: [oss-security] Reflected XSS & Blind SQLi in wordpress plugin eshop v6.3.14

Title: Reflected XSS & Blind SQLi in wordpress plugin eshop v6.3.14
Author: Larry W. Cashdollar, @_larry0
Date: 2016-01-27
Download Site: https://wordpress.org/plugins/eshop
Vendor: Richard Pedley
Vendor Notified: 2016-01-29
Vendor Contact: http://elfden.co.uk/
Description: An accessible Shopping Cart plugin. eShop is an accessible
shopping cart plugin for WordPress, packed with various features.
Vulnerability:
The following code snippets do not sanitize user input before passing back
to the user=E2=80=99s browser via $_GET request.

http://plugins.svn.wordpress.org/eshop/trunk/eshop-orders.php

=46rom eshop-orders.php XSS via page & action variables:

144=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20
$apge=3Dget_admin_url().'admin.php?page=3D'.$_GET['page'].'&amp;action=3D'.=
$_GET[
'action'];
145                         echo '<ul id=3D"eshopsubmenu" class=3D"stuffbox=
">';
146                         echo '<li><span>'.__('Sort Orders by
&raquo;','eshop').'</span></li>';
147                         echo '<li><a
href=3D"'.$apge.'&amp;by=3Dda"'.$cda.'>'.__('Date
Ascending','eshop').'</a></li>';
148                         echo '<li><a
href=3D"'.$apge.'&amp;by=3Ddd"'.$cdd.'>'.__('Date
Descending','eshop').'</a></li>';
149                         echo '<li><a
href=3D"'.$apge.'&amp;by=3Dtn"'.$ctn.'>'.__('ID Number','eshop').'</a></li>=
';
150                         echo '<li><a
href=3D"'.$apge.'&amp;by=3Dca"'.$cca.'>'.__('Company','eshop').'</a></li>';
151                         echo '<li><a
href=3D"'.$apge.'&amp;by=3Dna"'.$cna.'>'.__('Customer','eshop').'</a></li>';
152                         echo '</ul>';



244 <input type=3D"hidden" name=3D"action" value=3D"<?php echo $_GET['actio=
n'];
?>" />


303 $phpself=3D'?page=3D'.$_GET['page=E2=80=99];
=2E
503         echo "<div id=3D\"eshopformfloat\"><form id=3D\"orderstatus\"
action=3D\"".$phpself."\" method=3D\"post\">";
504         ?>
=2E
515 <input type=3D"hidden" name=3D"action" value=3D"<?php echo $_GET['actio=
n'];
?>" />
=2E
=2E

586                                 $downloadable .=3D'
'.$dlinfo->downloads.'<a
href=3D"'.$phpself.'&amp;view=3D'.$view.'&amp;adddown=3D'.$dlinfo->id.'"
title=3D"'.__('Increa    se download allowance by
1','eshop').'">'.__('Increase','eshop').'</a>, <a
href=3D"'.$phpself.'&amp;view=3D'.$view.'&amp;decdown=3D'.$dlinfo->id.'"
title=3D"'.__('Decrea    se download allowance by
1','eshop').'">'.__('Decrease','eshop').'</a></span>';
587=20=20=20=20=20=20=20=20=20=20
=2E
=2E

642                 echo '<strong>'.__('Email:','eshop').'</strong>'." <a
href=3D\"".$phpself."&amp;viewemail=3D".$view."\" title=3D\"".__('Send a fo=
rm
email','eshop')."\"    >".$drow->email.'</a> <small
class=3D"noprint">'.__('(sends a form email)','eshop')."</small><br />\n";
=2E
=2E
746         if($status=3D=3D'Deleted'){$delete=3D"<p class=3D\"delete nopri=
nt\"><a
href=3D\"".$phpself."&amp;delid=3D".$view."\">".__('Completely delete this
order?','eshop')."<    /a><br />".__('<small><strong>Warning:</strong>
this order will be completely deleted and cannot be recovered at a later
date.</small>','eshop')."</p>";}else{$de    lete=3D'';};




Blind SQL Injection & requires authenticated user to Wordpress.

=46rom eshop-orders.php, requires admin user:

287 if (!function_exists('deleteorder')) {
288         function deleteorder($delid){
289                 global $wpdb;
290                 $dtable=3D$wpdb->prefix.'eshop_orders';
291                 $itable=3D$wpdb->prefix.'eshop_order_items';
292                 $dltable=3D$wpdb->prefix.'eshop_download_orders';
293                 $checkid=3D$wpdb->get_var("Select checkid From $dtable
where id=3D'$delid' && status=3D'Deleted'");

=2E
=2E
392 eshop_admin_mode();

393 if(isset($_GET['delid']) && !isset($_GET['view'])){
394         deleteorder($_GET['delid']);



=46rom eshop-orders.php, Requires a regular logged in user:

The following code allows SQL injection via the unsanitized $view
variable.
354 if(isset($_GET['view'])){
355         $view=3D$_GET['view'];
356         $status=3D$wpdb->get_var("Select status From $dtable where
id=3D'$view'=E2=80=9D);

SQL injection points via POST to mark & change:

421 if(isset($_POST['mark']) && !isset($_POST['change'])){
422         $mark=3D$_POST['mark'];
423         $checkid=3D$_POST['checkid'];
424         $query2=3D$wpdb->get_results("UPDATE $dtable set status=3D'$mar=
k'
where checkid=3D'$checkid'");
425         do_action( 'eshop_order_status_updated', $checkid, $mark );
426         echo '<div class=3D"updated fade">'.__('Order status changed
successfully.','eshop').'</div>';
427 }
=2E
=2E
429 if(isset($_POST['change'])){
430         if(isset($_POST['move']) && $_POST['move'][0]!=3D''){
431                 foreach($_POST['move'] as $v=3D>$ch){
432                         $mark=3D$_POST['mark'];
433                         $query2=3D$wpdb->get_results("UPDATE $dtable set
status=3D'$mark' where checkid=3D'$ch'");
434                         do_action( 'eshop_order_status_updated', $ch,
$mark );
CVEID: XSS 2016-0765 SQLi 2016-0769


