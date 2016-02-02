X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["943" "Monday" "1" "February" "2016" "19:05:21" "-0500" "Larry Cashdollar" "larry0@me.com" "<D2D55CF1.332B4%larry0@me.com>" "23" "[oss-security] Wordpress plugin Reflected XSS in connections v8.5.8" nil nil nil "2" "2016020200:05:21" "[oss-security] Wordpress plugin Reflected XSS in connections v8.5.8" (number mark "U       larry0@me.co Feb  1   23/943   " thread-indent "\"[oss-security] Wordpress plugin Reflected XSS in connections v8.5.8\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7615 invoked by uid 550); 2 Feb 2016 00:05:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7533 invoked from network); 2 Feb 2016 00:05:37 -0000
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2016-02-02_01:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1015 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=1 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1510270003 definitions=main-1602010402
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=me.com; h=date : subject
 : from : to : message-id : mime-version : content-type :
 content-transfer-encoding; s=4d515a;
 bh=dPnaBWL8iq4I4FLdeDgyidpV0XuVFyxWKvF1JFSSzUU=;
 b=Y45+JeEi5qBYgN/tLId8s29Xj/GiN7WM6/DSvVHX6y9L8OxI6YzsqA9JeC/CPRMYLUba
 qqRxXSmZe3sOFeAZ4UWGoe3wGGl+9QyS3FeFErkCnZfcTE57Qfa+Peury/AcYuVEOi3l
 uHxEeVeYfGlD2XXuv1QsjpSLM4BVJqh8dPUyT0MeDD5vXXzwRqPrkG/Cf3yrzfijzr0D
 n269MJZiJPKmENpTTE1E9YnipGZX+KigUtPdtQUrkjp4G5KpWPpZrEnwaNlBSDgiEzca
 exTTotDTddrxYnqMqFA8Hou35iocFIng5zY442kfP68bnq7iB/flBvHe10C08D15EoBn Yg==
User-Agent: Microsoft-MacOutlook/14.6.0.151221
Date: Mon, 01 Feb 2016 19:05:21 -0500
From: Larry Cashdollar <larry0@me.com>
To: Open Security <oss-security@lists.openwall.com>
Message-id: <D2D55CF1.332B4%larry0@me.com>
Thread-topic: Wordpress plugin Reflected XSS in connections v8.5.8
MIME-version: 1.0
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: quoted-printable
Subject: [oss-security] Wordpress plugin Reflected XSS in connections v8.5.8

Title: Wordpress plugin Reflected XSS in connections v8.5.8
Author: Larry W. Cashdollar, @_larry0
Date: 2016-01-26
Download Site: https://wordpress.org/plugins/connections/
Vendor: https://profiles.wordpress.org/shazahm1hotmailcom/
Vendor Notified: 2016-01-28
Vendor Fixed: 2016-02-01, v8.5.9
Vendor Contact: https://profiles.wordpress.org/shazahm1hotmailcom/
Description: An easy to use directory plugin to create an address book,
business directory, staff
directory or church directory.
Vulnerability:Line 320 contains unfiltered user input for the search field
being sent directly via
echo back to the users browser via the =E2=80=99s=E2=80=99 variable.
In file includes/admin/pages/manage.php
Line 320:
<input type=3D"search" id=3D"entry-search-input" name=3D=E2=80=9Cs" value=
=3D"<?php if (
isset( $_GET['s'] ) && ! empty( $_GET['s'] )) echo $_GET['s'] ; ?>" />
CVEID: 2016-0770
Advisory: http://www.vapidlabs.com/advisory.php?v=3D161


