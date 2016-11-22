X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2806" "Tuesday" "22" "November" "2016" "17:53:52" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<7982464.2MyO2TlKBG@arcadia>" "115" "[oss-security] metapixel: multiple assertion failures" nil nil nil "11" "2016112216:53:52" "[oss-security] metapixel: multiple assertion failures" (number mark "U       ago@gentoo.o Nov 22  115/2806  " thread-indent "\"[oss-security] metapixel: multiple assertion failures\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18248 invoked by uid 550); 22 Nov 2016 16:54:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18097 invoked from network); 22 Nov 2016 16:54:01 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Tue, 22 Nov 2016 17:53:52 +0100
Message-ID: <7982464.2MyO2TlKBG@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.1.15-gentoo-r1; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] metapixel: multiple assertion failures

Description:
metapixel is a program for generating photomosaics.

A fuzzing on metapixel-imagesize revealed multiple assertion failures. The=
=20
latest upstream release was about ten years ago, so I didn=E2=80=99t made a=
ny report.=20
The bugs do not reside in any shared object which aren=E2=80=99t provided b=
y the=20
package. If you have a web application which relies on the metapixel-images=
ize=20
binary, then you are affected. Since the crashes reside in the command line=
=20
tool, they may don=E2=80=99t warrant a CVE at all, but some distros and pac=
kagers=20
would have the bugs fixed in their repository, so I=E2=80=99m sharing them.

Affected version:
1.0.2
Output/failure:
metapixel-imagesize: rwgif.c:59: void *open_gif_file(const char *, int *, i=
nt=20
*): Assertion `data->file !=3D0=E2=80=B2 failed.
Commit fix:
N/A
Fixed version:
N/A
Testcase:
https://github.com/asarubbo/poc/blob/master/00059-metapixel-assert-open_gif=
_file-1

##########################################

Affected version:
1.0.2
Output/failure:
metapixel-imagesize: rwgif.c:63: void *open_gif_file(const char *, int *, i=
nt=20
*): Assertion `DGifGetRecordType(data->file, &record_type) !=3D 0=E2=80=B2 =
failed.
Commit fix:
N/A
Fixed version:
N/A
Testcase:
https://github.com/asarubbo/poc/blob/master/00060-metapixel-assert-open_gif=
_file-2

##########################################

Affected version:
1.0.2
Output/failure:
metapixel-imagesize: rwgif.c:68: void *open_gif_file(const char *, int *, i=
nt=20
*): Assertion `DGifGetImageDesc(data->file) !=3D 0=E2=80=B2 failed.
Commit fix:
N/A
Fixed version:
N/A
Testcase:
https://github.com/asarubbo/poc/blob/master/00061-metapixel-assert-open_gif=
_file-3

##########################################

Affected version:
1.0.2
Output/failure:
metapixel-imagesize: rwgif.c:102: void *open_gif_file(const char *, int *, =
int=20
*): Assertion `DGifGetExtension(data->file, &ext_code, &ext) !=3D 0=E2=80=
=B2 failed.
Commit fix:
N/A
Fixed version:
N/A
Testcase:
https://github.com/asarubbo/poc/blob/master/00062-metapixel-assert-open_gif=
_file-4

##########################################

Affected version:
1.0.2
Output/failure:
metapixel-imagesize: rwgif.c:106: void *open_gif_file(const char *, int *, =
int=20
*): Assertion `DGifGetExtensionNext(data->file, &ext) !=3D 0=E2=80=B2 faile=
d.
Commit fix:
N/A
Fixed version:
N/A
Testcase:
https://github.com/asarubbo/poc/blob/master/00063-metapixel-assert-open_gif=
_file-5

Credit:
These bugs were discovered by Agostino Sarubbo of Gentoo.

Timeline:
2016-11-22: bugs discovered
2016-11-22: blog post about the issues

Note:
These bugs were found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2016/11/22/metapixel-multiple-assertion-failur=
es

--=20
Agostino Sarubbo
Gentoo Linux Developer
