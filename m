X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1526" "Monday" "6" "March" "2017" "12:32:30" "-0500" "Larry W. Cashdollar" "larry0@me.com" "<4EBCE262-F53E-4DAC-90E4-913D8E81C063@me.com>" "40" "[oss-security] Remote file upload vulnerabilities in multiple wordpress plugins" nil nil nil "3" "2017030617:32:30" "[oss-security] Remote file upload vulnerabilities in multiple wordpress plugins" (number mark "U       larry0@me.co Mar  6   40/1526  " thread-indent "\"[oss-security] Remote file upload vulnerabilities in multiple wordpress plugins\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7426 invoked by uid 550); 6 Mar 2017 17:32:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7405 invoked from network); 6 Mar 2017 17:32:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=4d515a;
	t=1488821551; bh=ZkwC1j5WQfzQMjpWp+VqPW5hrne8saTrxvXm6ju388I=;
	h=From:Content-type:Subject:Message-id:Date:To:MIME-version;
	b=Fx6S4pj/ZIo/QumwCTFuS1/2AYGjczwTg4gLzeSomUEiJ2rlOqQu3UojNxaY5ipSd
 BXLG4DVeAKrLQN/vY4z1c1KKu+8BP8QMXUI5e8hGlSGcCoap654BiwkeDMdov4l5Ts
 G1mrfo0n6L9cWIsTzeD5cbqb3oPCYu6BkdoQueRUKPXjRnbqxQ8IBGh02nPFUHuY6x
 8/veNq/9cMeOwg9jnu/EIhVfDAoDfJTiPu2KaaWiP+1YJQn/UgL0HG3n6dEPA/k/n6
 GlmvrLG2w3dLPupOakqeU+zCe5qDU7j4/k5Oh+gMNlHx5l4VH490hdOpiJPsGCrDuo
 TmwNV6OhfU+hw==
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2017-03-06_17:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1034 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1701120000 definitions=main-1703060143
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: text/plain; charset=us-ascii
Content-transfer-encoding: quoted-printable
Message-id: <4EBCE262-F53E-4DAC-90E4-913D8E81C063@me.com>
Date: Mon, 06 Mar 2017 12:32:30 -0500
To: Open Source Security <oss-security@lists.openwall.com>
MIME-version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: [oss-security] Remote file upload vulnerabilities in multiple wordpress plugins


Hello,

All of these plugins include unlicensed software developed by http://www.in=
vedion.com/ that is vulnerable, I am unable to get=20
more details from the vendor as to what the software name and version are a=
nd therefor can't issue a CVE for just
that software.  I've issued CVEs for the impacted plugins I know of:

CVE-2017-1002000
Remote file upload vulnerability in Wordpress Plugin mobile-friendly-app-bu=
ilder-by-easytouch v3.0
Example: http://example.com/wordpress/wp-content/plugins/mobile-friendly-ap=
p-builder-by-easytouch/server/images.php
http://www.vapidlabs.com/advisory.php?v=3D179

CVE-2017-1002001
Remote file upload vulnerability in Wordpress Plugin mobile-app-builder-by-=
appress v1.05
Example: http://example.com/wordpress/wp-content/plugins/mobile-app-builder=
-by-wappress/server/images.php
http://www.vapidlabs.com/advisory.php?v=3D180

CVE-2017-1002002
Remote file upload vulnerability in Wordpress Plugin webapp-builder v2.0
Example: http://example.com/wordpress/wp-content/plugins/webapp-builder/ser=
ver/images.php
http://www.vapidlabs.com/advisory.php?v=3D181


CVE-2017-1002003
Remote file upload vulnerability in Wordpress Plugin wp2android-turn-wp-sit=
e-into-android-app v1.1.4
Example: http://example.com/wordpress/wp-content/plugins/wp2android-turn-wp=
-site-into-android-app/server/images.php
http://www.vapidlabs.com/advisory.php?v=3D182

@muntopia provided an exploit for all of them here:
https://github.com/alienwithin/Scripts-Sploits/blob/master/zen_app_mobile_w=
p_rfu.py=
