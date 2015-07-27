X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3680" "Monday" "27" "July" "2015" "00:42:59" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<7A32AB08-3039-4F44-BD53-9680109B79C4@me.com>" "93" "[oss-security] Re: Remote file upload vulnerability & SQLi in wordpress plugin wp-powerplaygallery v3.3" nil nil nil "7" "2015072704:42:59" "[oss-security] Re: Remote file upload vulnerability & SQLi in wordpress plugin wp-powerplaygallery v3.3" (number mark "        larry0@me.co Jul 27   93/3680  " thread-indent "\"[oss-security] Re: Remote file upload vulnerability & SQLi in wordpress plugin wp-powerplaygallery v3.3\"\n") "<20150720145820.751AC72E1A4@smtpvbsrv1.mitre.org>" ("<20150720145820.751AC72E1A4@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5866 invoked by uid 550); 27 Jul 2015 04:43:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5598 invoked from network); 27 Jul 2015 04:43:14 -0000
X-Proofpoint-Virus-Version: vendor=fsecure
 engine=2.50.10432:5.14.151,1.0.33,0.0.0000
 definitions=2015-07-27_01:2015-07-22,2015-07-26,1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=1 phishscore=0 adultscore=0 bulkscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=7.0.1-1412110000 definitions=main-1507270084
Content-type: text/plain; charset=utf-8
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2102\))
In-reply-to: <20150720145820.751AC72E1A4@smtpvbsrv1.mitre.org>
Content-transfer-encoding: quoted-printable
Message-id: <7A32AB08-3039-4F44-BD53-9680109B79C4@me.com>
References: <20150720145820.751AC72E1A4@smtpvbsrv1.mitre.org>
X-Mailer: Apple Mail (2.2102)
Cc: Open Source Security <oss-security@lists.openwall.com>
Date: Mon, 27 Jul 2015 00:42:59 -0400
From: "Larry W. Cashdollar" <larry0@me.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Remote file upload vulnerability & SQLi in wordpress plugin
 wp-powerplaygallery v3.3
To: cve-assign@mitre.org


> On Jul 20, 2015, at 10:58 AM, cve-assign@mitre.org wrote:
>=20
> As far as we can tell, the issue you are reporting (when a current PHP
> version is used) is that the attacker can create a directory anywhere
> with "_uploadfolder" at the end of its name. This behavior isn't
> required for achieving PHP code execution, and seems unlikely to help
> with other important attacks. It might waste disk space on a small
> filesystem, and might allow an attacker to store files outside of
> wp-content (e.g., in a directory that wouldn't be checked during a
> user's post-exploitation cleanup). If so, then this is an issue that
> can be included in CVE, but it seems marginal.
>=20

It is marginal, but I thought note worthy and decided to mention it in my a=
dvisory.

> For anyone who is interested in reporting these types of low-priority
> side issues: it would be helpful to explicitly state that the issue is
> independently relevant and could be independently fixed.

Yes, good point.

>=20
>=20
>> 2. Arbitrary file uploads to a path in the web root directory:
>> Lines 138-160 of uploads.php don't verify what types of files are allowe=
d or where they should be placed:
>=20
> We didn't completely understand this part. It seems that the essence
> of the problem is that the product could reject unsafe file types such
> as .php files, but doesn't do that. That can have one CVE ID. Is there
> also a problem with "where they should be placed" within this part of
> the code? The files seem to be placed in a *_uploadfolder/big/
> directory, which is a correct directory for an upload of an image
> file.
>=20
> Are you also reporting any authorization problem? Is upload.php
> responsible for verifying that the client user has the upload_files
> capability, regardless of what file type is being uploaded?
>=20

It should filter out what file types are allowed for uploading at least.  I=
 know I wouldn=E2=80=99t want arbitrary images uploaded to my Wordpress ins=
tance from users who aren=E2=80=99t logged in.


>=20
>> albumid needs to be a numeric value matching an existing album number, 1=
 is probably a good start
>> but you can enumerate these by using curl, and looking for redirect 301 =
responses:
>=20
> Why does the album number need to exist? Wasn't the mkdir supposed to
> create the directory for an arbitrary $_REQUEST['albumid'] value?

The directory creation code in upload.php doesn=E2=80=99t create the subdir=
ectories big and thumb.   These directories are added when a=20
new album is created through normal use of the plugin.  So the file upload =
will fail if the album doesn=E2=80=99t exist.


=46rom power_play.php:

263                         if( !is_dir($album_dir . '/big') )
264                                 mkdir($album_dir . '/big');
265                         if( !is_dir($album_dir . '/thumb') )
266                                 mkdir($album_dir . '/thumb');


I hope I answered your questions.

Thanks!
Larry

>=20
> - --=20
> CVE assignment team, MITRE CVE Numbering Authority
> M/S M300
> 202 Burlington Road, Bedford, MA 01730 USA
> [ PGP key available through http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1.4.14 (SunOS)
>=20
> iQEcBAEBAgAGBQJVrQv+AAoJEKllVAevmvmsO8AH/3hMf5MDgzozxwptBSXnBrVv
> 8gjPcUDIDop1KqM5ZDAeC8X+tp/oQzgtN9ZPqL2mkyYWdhs3Rm+Pv/+VlFIAKjTC
> NbrL9LsuaVe9UrK2KL0zzQ0okyXOEeDGz2Myb5YrGVvshNMTmYcGOyL4oP/IiZmy
> 8XZCM6QJolEiMjtX2w1J9ZdlBV7yRh+d4ie/XEdmvcPBEWdvmYt/UxTs8guZ1PZM
> 8PBEUz8sTdI94Cl0mW0DRGZLzZ/T9tOvHq/Gxl0+wb+khRzWJkfPL8zuVjoi1P5x
> ZFQrcWkK6pyQCYimLLRTQs6x6MY8NdKdlUQ0t4hljg1UEVm4QSYiab9qBGsDVwM=3D
> =3D94ua
> -----END PGP SIGNATURE-----

