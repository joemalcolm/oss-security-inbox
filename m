X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3677" "Tuesday" "12" "January" "2016" "12:03:56" "+0100" "Benjamin Daniel Mussler" "sec@ml.fl7.de" "<309844657.20160112120356@fl7.de>" "101" "[oss-security] CVE Request: Vtiger CRM 6.4 Authenticated Remote Code Execution" nil nil nil "1" "2016011211:03:56" "[oss-security] CVE Request: Vtiger CRM 6.4 Authenticated Remote Code Execution" (number mark "U       sec@ml.fl7.d Jan 12  101/3677  " thread-indent "\"[oss-security] CVE Request: Vtiger CRM 6.4 Authenticated Remote Code Execution\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12000 invoked by uid 550); 12 Jan 2016 13:29:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25764 invoked from network); 12 Jan 2016 11:09:25 -0000
X-Virus-Scanned: amavisd-new at heinlein-support.de
Date: Tue, 12 Jan 2016 12:03:56 +0100
From: Benjamin Daniel Mussler <sec@ml.fl7.de>
X-Priority: 3 (Normal)
Message-ID: <309844657.20160112120356@fl7.de>
To: oss-security@lists.openwall.com
CC: cve-assign@mitre.org
X-PGP-Key-URL: <https://fl7.de/pgp/>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg="pgp-sha1";
  boundary="----------0461A42390FD262DD"
Subject: [oss-security] CVE Request: Vtiger CRM 6.4 Authenticated Remote Code Execution

------------0461A42390FD262DD
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

=0D
Please assign a CVE. Thanks.


Vtiger CRM 6.4 Authenticated Remote Code Execution

1. Summary
2. Vulnerability Details
3. References

########## 1. Summary ##########

Vtiger CRM  <https://www.vtiger.com/open-source/> is a CRM application.

Vtiger CRM version 6.4 (=E2=80=9COpen Source=E2=80=9D branch; released on 2=
015-10-16) is
vulnerable to Authenticated Remote Code Execution.

This vulnerability is different than CVE-2015-6000 (in fact it is a
result of an insufficient fix for CVE-2015-6000).


########## 2. Vulnerability Details ##########

Vtiger CRM allows for the upload of a "company logo" from within the
administrative interface.

Multiple flaws in the Settings_Vtiger_CompanyDetailsSave_Action class
allow attackers to upload files with (almost) arbitrary contents,
including PHP code passing commands to the underlying operating system.

The previously mentioned vulnerability, CVE-2015-6000, was partially
caused by an insufficient file type check, relying on the MIME type
("Content-Type") sent by the client.

In an attempt to mitigate the resulting security issues, the following
"mime type check" was added with a Vtiger CRM 6.3 security patch
(released on 2015-10-06) and Vtiger CRM 6.4 (released on 2015-10-16):

//mime type check
$mimeType =3D mime_content_type($logoDetails['tmp_name']);
$mimeTypeContents =3D explode('/', $mimeType);
if (!$logoDetails['size'] || $mimeTypeContents[0] !=3D 'image' || !in_array=
($mimeTypeContents[1], Settings_Vtiger_CompanyDetails_Model::$logoSupported=
Formats)) {
    $saveLogo =3D false;
}

However, an attacker may choose to embed malicious PHP code within a
valid image file, for example as EXIF data of a JPEG file. Once the
server has received the attacker's JPEG file, mime_content_type() will
process it, correctly consider it to be a valid image file, and return
the MIME type "image/jpeg" -- which passes Vtiger's "mime type check".

Because Vtiger allows users to freely choose the name of an uploaded
file, even if the file's extension does not match the previously
determined MIME type, an attacker can upload the image file with a
".php" extension.

Vtiger CRM then saves the uploaded file's contents with the
client-specified file name in the publicly accessible "test/logo/"
directory.

The code can then be run by accessing the location of the uploaded file
(=E2=80=9C<Vtiger URL>/test/logo/<attacker-specified file name>=E2=80=9D).


########## 3. References ##########

Source: <http://b.fl7.de/2016/01/vtiger-crm-6.4-auth-rce.html>

Description of CVE-2015-6000:
<http://b.fl7.de/2015/09/vtiger-crm-authenticated-rce-cve-2015-6000.html>=

------------0461A42390FD262DD
Content-Type: application/pgp-signature

-----BEGIN PGP MESSAGE-----
Version: GnuPG v2.0.21 (MingW32)

iQIcBAEBAgAGBQJWlN2cAAoJEAg0a3ng3v4fYDEQALS0XvE7bkbuZcyxnEF/DN1F
3vwlsVfQppvch8i7GpTd8UMcggUxqSnTxZey5uelVv0/F/MJar7D5c/1zeoD0j/F
xwT8SwW8iM+YjLxxHtUZ0lNhI6JrqU+ZLgFfb+RuJjQsNvW9N5hhaYUrxdFxi+JO
PhX7KtnIISzg6FEO65cwXjdJMGebILOX/JIdpmoCPYV9ZrWM9VgFK1374b7py+xh
nxUxYUIHHwRx95CHieV+hgiV9IQHrMJWv+Y63sG+FLhyBxZl79+QZoF4yMIIMGxZ
cwX6W81ZOAdZEJMSNL5Fg/zkB4rHrFAsSmssrc6+NowM54Z4b+Wi6n4NTLZ9Hjkt
1weSTr8vyTevcE5RuvFFJtFAw81MDfocMRV1EWqAthxfKOW3cpJIc72+txFTJrSD
K6dQf3mqaETruOmktZ6LRoilPTp/jINXag+s9nT422rSfyTblSK8TuXR5CIcGOOQ
g+KN835hVt31xYve0sDZFvH3wZuws7zL2cbzJ4eocIz3g/2JHPRGISfPQ7LPxREq
0l1o9hgd4h0rbiKbKivvxh8229gz9CVwH/poJXpnJpI62jGJ5MiZ20RYvUYoJ/eK
kNaFtzwBYryE+KUnxxNFTdqKUkanBM74YTDUpTi7reRueTF+vfwzrtcCXBAd/l47
zA7E1dCQx3ThX1SnhhlZ
=gaJV
-----END PGP MESSAGE-----

------------0461A42390FD262DD--

