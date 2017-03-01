X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1302" "Wednesday" "1" "March" "2017" "04:38:07" "-0500" "Larry W. Cashdollar" "larry0@me.com" "<4B868989-042B-4372-B240-CA7A707CA929@me.com>" "30" "[oss-security] Persistent XSS in wordpress plugin rockhoist-badges v1.2.2" nil nil nil "3" "2017030109:38:07" "[oss-security] Persistent XSS in wordpress plugin rockhoist-badges v1.2.2" (number mark "U       larry0@me.co Mar  1   30/1302  " thread-indent "\"[oss-security] Persistent XSS in wordpress plugin rockhoist-badges v1.2.2\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7827 invoked by uid 550); 1 Mar 2017 09:38:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7795 invoked from network); 1 Mar 2017 09:38:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=4d515a;
	t=1488361089; bh=5A3F3fBtHWHfV3CLvNrPq+l7KH9o8lFJ9TK+5RpuVeM=;
	h=From:Content-type:Subject:Message-id:Date:To:MIME-version;
	b=LJXIr1ZW8SvLcvC/m+mj5eIKOxo4XorB2Ck9x+ZjjRtQrctlIayKqO9TmV5N/qYev
 /l/vlGX9Cap81EPG2mg2aFnn0CifIVfPMoOY2fzxmsvNc7A44ResEBd1XHtXSfqwko
 Z7Eii6Dr2YzodHeF1DO2LmUUL0Oh6GjlB2kO17c817U3xQfRoBf2taXFpNG9MVMvt+
 1zfoNn+cNioxn8POfLg/z5htXyVIt87a9z6emBruJlOzHgRenrX0KWYFW9mdF5nCvS
 qhIat8NJzzDC6SyXWz3iYfgrXeggmMWX81dN5No8Q1IZWy220n1ZHJtmknZETCCl4x
 CoB5TUsn91VzQ==
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2017-03-01_05:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1034 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1701120000 definitions=main-1703010093
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Message-id: <4B868989-042B-4372-B240-CA7A707CA929@me.com>
Date: Wed, 01 Mar 2017 04:38:07 -0500
To: Open Source Security <oss-security@lists.openwall.com>
MIME-version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: [oss-security] Persistent XSS in wordpress plugin rockhoist-badges v1.2.2

Title: Persistent XSS in wordpress plugin rockhoist-badges v1.2.2
Author: Larry W. Cashdollar, @_larry0
Date: 2017-02-20
Download Site: https://wordpress.org/plugins/rockhoist-badges/
Vendor: https://profiles.wordpress.org/esserq/
Vendor Notified: 2017-02-20
Vendor Contact:
Description: A Stack Overflow inspired plugin for WordPress which allows us=
ers to acquire badges for contributing website content. Badges are created =
and managed through the WordPress Dashboard.
Vulnerability:
There is a persistent cross site scripting vulnerability in the plugin Rock=
hoist Badges.  A user with the=20
ability to edit_posts can inject malicious javascript.  Into the badge desc=
ription or title field.

Line 603 doesn't sanitize user input before sending it to the browser in fi=
le ./rockhoist-badges/rh-badges.php:

-> 603: <span class=3D"delete"><a href=3D"?page=3Dbadges&action=3Ddeletecon=
dition&badge_ID=3D<?php echo $_GET['badge_ID']; ?>&badge_condition_ID=3D<?p=
hp echo $badge_condition->badge_condition_id; ?>" class=3D"delete-tag">Dele=
te</a></span>

CVE-ID: CVE-2017-6102
Exploit Code:
	=E2=80=A2 "><script>alert(1);</script> in the title or description field w=
ill inject js.
Screen Shots: [http://www.vapidlabs.com/m/badges.jpg]
Advisory: http://www.vapidlabs.com/advisory.php?v=3D176=
