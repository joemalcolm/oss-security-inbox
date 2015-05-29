X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1153" "Friday" "29" "May" "2015" "10:55:30" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<6C936C2A-9CF0-4EAC-AA24-FB571775DEA1@me.com>" "34" "[oss-security] wow-moodboard-lite v1.1.1.1 Wordpress plugin has an open redirect" nil nil nil "5" "2015052914:55:30" "[oss-security] wow-moodboard-lite v1.1.1.1 Wordpress plugin has an open redirect" (number mark "U       larry0@me.co May 29   34/1153  " thread-indent "\"[oss-security] wow-moodboard-lite v1.1.1.1 Wordpress plugin has an open redirect\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21988 invoked by uid 550); 29 May 2015 14:55:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21952 invoked from network); 29 May 2015 14:55:52 -0000
X-Proofpoint-Virus-Version: vendor=fsecure
 engine=2.50.10432:5.14.151,1.0.33,0.0.0000
 definitions=2015-05-29_05:2015-05-29,2015-05-29,1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=7.0.1-1412110000 definitions=main-1505290188
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Message-id: <6C936C2A-9CF0-4EAC-AA24-FB571775DEA1@me.com>
Date: Fri, 29 May 2015 10:55:30 -0400
To: Open Source Security <oss-security@lists.openwall.com>
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Mailer: Apple Mail (2.2098)
Subject: [oss-security] wow-moodboard-lite v1.1.1.1 Wordpress plugin has an open redirect

Title: wow-moodboard-lite v1.1.1.1 Wordpress plugin has an open redirect
Author: Larry W. Cashdollar, @_larry0
Date: 2015-05-10
Download Site: https://wordpress.org/plugins/wow-moodboard-lite/
Vendor: mschot
Vendor Notified: 2015-05-19
Vendor Contact: https://profiles.wordpress.org/mschot/
Description:=20
A mood board is a type of collage consisting of images, text, and samples o=
f objects in a composition. They may be physical or digital, and can be "ex=
tremely effective" presentation tools.


Vulnerability:
wowproxy.php doesn=E2=80=99t require any authentication to the proxy images=
 function.   Users can be misled to a malicious link
via this feature.

26 // Get the url of the image to be proxied
27 $url =3D ( isset( $_POST[ 'url' ] ) ) ? $_POST[ 'url' ] : ( isset( $_GET=
[ 'url    ' ] ) ? $_GET[ 'url' ] : false );

39 function proxyimages( $url )
40 {
41         header( "Location: ".$url );
42         exit;
43 }

CVEID: 2015-4070
OSVDB:122368
Exploit Code:
	=E2=80=A2 http://wp-site/wordpress/wp-content/plugins/wow-moodboard-lite/w=
owproxy.php?url=3Dhttp://site_to_redirect
Advisory: http://www.vapid.dhs.org/advisory.php?v=3D120=
