X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4123" "Thursday" "2" "July" "2015" "18:26:01" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<F1F1AB50-CF3F-4509-AEC1-07E9F8F42DAC@me.com>" "104" "[oss-security] SQL Injection in easy2map wordpress plugin v1.24" nil nil nil "7" "2015070222:26:01" "[oss-security] SQL Injection in easy2map wordpress plugin v1.24" (number mark "        larry0@me.co Jul  2  104/4123  " thread-indent "\"[oss-security] SQL Injection in easy2map wordpress plugin v1.24\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5644 invoked by uid 550); 2 Jul 2015 23:37:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5591 invoked from network); 2 Jul 2015 23:36:58 -0000
X-Proofpoint-Virus-Version: vendor=fsecure
 engine=2.50.10432:5.14.151,1.0.33,0.0.0000
 definitions=2015-07-02_14:2015-07-02,2015-07-02,1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=7.0.1-1412110000 definitions=main-1507020343
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Message-id: <F1F1AB50-CF3F-4509-AEC1-07E9F8F42DAC@me.com>
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Mailer: Apple Mail (2.2098)
Cc: fulldisclosure@seclists.org
Date: Thu, 02 Jul 2015 18:26:01 -0400
From: "Larry W. Cashdollar" <larry0@me.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] SQL Injection in easy2map wordpress plugin v1.24
To: Open Source Security <oss-security@lists.openwall.com>

Title: SQL Injection in easy2map wordpress plugin v1.24
Author: Larry W. Cashdollar, @_larry0
Date: 2015-06-08
Download Site: https://wordpress.org/plugins/easy2map
Vendor: Steven Ellis
Vendor Notified: 2015-06-08, fixed in v1.25
Vendor Contact: https://profiles.wordpress.org/stevenellis/
Advisory: http://www.vapid.dhs.org/advisory.php?v=3D131
Description: The easiest tool available for creating custom & great-looking=
 Google Maps. Add multiple pins and customize maps with drag-and-drop simpl=
icity.
Vulnerability:
The following lines in Function.php use sprintf() to format queries being s=
ent to the database, this doesn't provide proper sanitization of user input=
 or
properly parameterize the query to the database.

 90         $wpdb->query(sprintf("UPDATE $mapsTable
 91         SET PolyLines =3D '%s'
 92         WHERE ID =3D '%s';", $PolyLines, $mapID));

=2E
=2E
=2E
163             $wpdb->query(sprintf("
164                 UPDATE $mapsTable
165                 SET TemplateID =3D '%s',
166                     MapName =3D '%s',
167                     Settings =3D '%s',
168                     LastInvoked =3D CURRENT_TIMESTAMP,
169                     CSSValues =3D '%s',
170                     CSSValuesList =3D '%s',
171                     CSSValuesHeading =3D '%s',
172                     MapHTML =3D '%s',
173                     IsActive =3D 1,
174                     ThemeID =3D '%s'
175                 WHERE ID =3D %s;",
176                     $Items['mapTemplateName'],
177                     $Items['mapName'],
178                     urldecode($Items['mapSettingsXML']),
179                     urldecode($Items["mapCSSXML"]),
180                     urldecode($Items["listCSSXML"]),
181                     urldecode($Items["headingCSSXML"]),
182                     urldecode($Items["mapHTML"]),
183                     $Items['mapThemeName'],
184                     $mapID));
185         } else {
186=20
187             //this is a map insert
188             if (!$wpdb->query(sprintf("
189             INSERT INTO $mapsTable(
190                 TemplateID,
191                 MapName,
192                 DefaultPinImage,
193                 Settings,
194                 LastInvoked,
195                 PolyLines,
196                 CSSValues,
197                 CSSValuesList,
198                 CSSValuesHeading,
199                 MapHTML,
200                 IsActive,
201                 ThemeID
202             ) VALUES ('%s', '%s', '%s', '%s',=20
203                     CURRENT_TIMESTAMP, '%s', '%s', '%s', '%s', '%s', 0,=
 '%s');",
204                     $Items['mapTemplateName'],
205                     $Items['mapName'], str_replace('index.php', '', eas=
y2map_get_plugin_url('/index.php')) .     "images/map_pins/pins/111.png",
206                     urldecode($Items['mapSettingsXML']), '',
207                     urldecode($Items["mapCSSXML"]),
208                     urldecode($Items["listCSSXML"]),
209                     urldecode($Items["headingCSSXML"]),
210                     urldecode($Items["mapHTML"]),
211                     $Items['mapThemeName'])))=20
=2E
=2E
267         $wpdb->query(sprintf("
268             UPDATE $mapsTable
269             SET MapName =3D '%s',
270             LastInvoked =3D CURRENT_TIMESTAMP,
271             IsActive =3D 1
272             WHERE ID =3D %s;", $mapName, $mapID));

In MapPinImageSave.php, code isn=E2=80=99t sanitized when creating a direct=
ory allowing ../ to create files outside of intended directory:

4 $imagesDirectory =3D WP_CONTENT_DIR . "/uploads/easy2map/images/map_pins/=
uploaded/" . $_GET["map_id"] . "/";
=2E
=2E
11 if (is_uploaded_file($_FILES["pinicon"]['tmp_name'])) {
12=20
13     if (!file_exists($imagesDirectory)) {
14         mkdir($imagesDirectory);
15     }

CVEID: 2015-4614 (SQLi) 2015-4616 (../ bug)
OSVDB:
Exploit Code:
	=E2=80=A2 $ sqlmap -u 'http://wp.site:80/wp-admin/admin-ajax.php' --data=
=3D"mapID=3D11&mapName=3D'+or+1%3D%3D1%3B&action=3De2m_img_save_map_name" -=
-cookie=3D=C3=A2=E2=82=AC=CB=9CCOOKIE HERE=C3=A2=E2=82=AC=E2=84=A2 --level=
=3D5 --risk=3D3=
