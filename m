X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3253" "Thursday" "28" "July" "2016" "13:58:08" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<9F8556B6-3B55-4BFF-898A-92B084238AB6@me.com>" "78" "[oss-security] Reflected XSS and SQLi in Huge IT Joomla Slider v1.0.9 extension" nil nil nil "7" "2016072817:58:08" "[oss-security] Reflected XSS and SQLi in Huge IT Joomla Slider v1.0.9 extension" (number mark "U       larry0@me.co Jul 28   78/3253  " thread-indent "\"[oss-security] Reflected XSS and SQLi in Huge IT Joomla Slider v1.0.9 extension\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13479 invoked by uid 550); 28 Jul 2016 17:58:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11897 invoked from network); 28 Jul 2016 17:58:29 -0000
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2016-07-28_12:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1015 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1603290000 definitions=main-1607280180
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Message-id: <9F8556B6-3B55-4BFF-898A-92B084238AB6@me.com>
Date: Thu, 28 Jul 2016 13:58:08 -0400
To: Open Source Security <oss-security@lists.openwall.com>
MIME-version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=4d515a;
	t=1469728689; bh=m6X3yzBIwszbrwBY0tsOr0/UNUt7D23RKraZlwinp+I=;
	h=From:Content-type:Subject:Message-id:Date:To:MIME-version;
	b=ocXdi2m9F3+R1giF3CYr8cBSgjX+/HSQf0zA2ndXV0BcY+TclWcG+01TD99RwzvUb
 SlXFaTe95xKxGGnWZE//kAxES+YAliQ5DMx1qlx5JqpxUGD2Ttuy5AZqnZP/rVCdAH
 JWz6zC2MFE20vbFPbTo7shiGvBUkkNOgfEbfDoGRi1ERNpzj1pG6mk2qqklZIdiNHj
 1DKcCa15lSOfIoBacS63QqX3ToGcbxtC/jlGxuY82HAFHS4lqTwPG4vc29sW2Ci0Ep
 rhzZq5Y27cE2ae4pe503R7bp3K8N9Zlg+yo4RkjBCk2OtexFv7ZidIGJJff9Lste3a
 Hmc9C3WJFZXXg==
Subject: [oss-security] Reflected XSS and SQLi in Huge IT Joomla Slider v1.0.9 extension

Title: Reflected XSS and SQLi in Huge IT Joomla Slider v1.0.9 extension
Author: Larry W. Cashdollar, @_larry0
Date: 2016-07-22
Download Site: http://extensions.joomla.org/extensions/extension/photos-a-i=
mages/slider
Vendor: huge-it.com
Vendor Notified: 2016-07-22
Vendor Contact:
Description: Huge-IT Slider extension is one of the powerful products that =
our company offer. It gives style and charm to your site and help to attrac=
t the attention of visitors to certain parts of the content.
Vulnerability:
The attacker must be logged in with at least manager level access or access=
 to the administrative panel to exploit this vulnerability.

XSS in ./admin/views/slider/tmpl/default.php via id variable:
275:                    <a class=3D"modal" rel=3D"{handler: 'iframe', size:=
 {x: 800, y: 500}}" href=3D"index.php?option=3Dcom_slider&view=3Dvideo&tmpl=
=3Dcomponent&pid=3D<?php echo $_GET['id']; ?>" title=3D"Video" >

SQL Injection in the following sections of code:

in file ./admin/models/slider.php
53:        $id_cat =3D JRequest::getVar('id');
54-        $query =3D $db->getQuery(true);
55-        $query->select('#__huge_itslider_images.name as name,'
56-                . '#__huge_itslider_images.id ,'
57-                . '#__huge_itslider_sliders.name as portName,'
58-                . 'slider_id, #__huge_itslider_images.description as des=
cription,image_url,sl_url,sl_type,link_target,#__huge_itslider_images.order=
ing,#__huge_itslider_images.published,published_in_sl_width');
--
69:        $id_cat =3D JRequest::getVar('id');
70-        $query =3D $db->getQuery(true);
71-        $query->select('*');
72-        $query->from('#__huge_itslider_images');
73-        $query->where('slider_id=3D' . $id_cat);
74-        $db->setQuery($query);
--
117:        $id_cat =3D JRequest::getVar('id');
118-
119-        $query =3D $db->getQuery(true);
120-        $query->update('#__huge_itslider_sliders')->set('name =3D"' . $=
name . '"')
121-                ->set('sl_height=3D"' . $sl_height . '"')->set('slider_=
list_effects_s=3D"' . $slider_effects_list . '"')
122-                ->set('pause_on_hover=3D"' . $pause_on_hover . '"')
--
133:        $id_cat =3D JRequest::getVar('id');
134-        $query =3D $db->getQuery(true);
135-        $query->update('#__huge_itslider_sliders')->set('slider_list_ef=
fects_s =3D"' . $styleName . '"')->where('id=3D"' . $id_cat . '"');
136-        $db->setQuery($query);
137-        $db->execute();
138-    }
--
182:        $id_cat =3D JRequest::getVar('removeslide');
183:        $id =3D JRequest::getVar('id');
184-        $db =3D JFactory::getDBO();
185-        $query =3D $db->getQuery(true);
186-        $query->delete('#__huge_itslider_images')->where('id =3D' . $id=
_cat);
187-        $db->setQuery($query);
188-        $db->execute();

CVE-2016-1000121 XSS
CVE-2016-1000122 SQLi
Exploit Code:
	=E2=80=A2 XSS:
	=E2=80=A2=20=20
	=E2=80=A2 http://192.168.0.125/administrator/index.php?option=3Dcom_slider=
&view=3Dslider&id=3D1%20--%20%22%3E%3Cscript%3Ealert(1);%3C/script%3E
	=E2=80=A2=20=20
	=E2=80=A2 SQLi:
	=E2=80=A2=20=20
	=E2=80=A2 http://192.168.0.125/administrator/index.php?option=3Dcom_slider=
&view=3Dslider&id=3DHERE
Advisory: http://www.vapidlabs.com/advisory.php?v=3D168=
