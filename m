X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1437" "Saturday" "16" "April" "2016" "13:59:06" "+0530" "shravan kumar" "cor3sm4sh3r@gmail.com" "<CAOmn9FQVJ7QQf1rk4v8P07UoRpW-=L+k24dKCVP61fmpD_32mA@mail.gmail.com>" "55" "[oss-security] Reflected XSS Vulnerability in Wordpress Custom-metas plugin 1.5.1" nil nil nil "4" "2016041608:29:06" "[oss-security] Reflected XSS Vulnerability in Wordpress Custom-metas plugin 1.5.1" (number mark "U       cor3sm4sh3r@ Apr 16   55/1437  " thread-indent "\"[oss-security] Reflected XSS Vulnerability in Wordpress Custom-metas plugin 1.5.1\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26411 invoked by uid 550); 16 Apr 2016 09:26:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5218 invoked from network); 16 Apr 2016 08:29:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=qbFR6ORozH9kfjrIJADHVZULopGfaHV4QN8Pb1/fePY=;
        b=QnTZ00RW9br8d3rNlcTXX8Vzw7byqmFVrcUk4W+6NEzxtsgC0XfDgeFfg10Zk14nvR
         QCQdwaxU/39w3lRtkQaiMcT6GH2CrlSTldpKB5ht4iyWNNVSWyfBuvBwB+pJqwGdO4dk
         b9nJRbfMMMkwT9DvI9j1OXpBgZ8ulokwRmJKa0QCfEbhiNOcaUwCh7J7qe58GorVWXRD
         bx7IZTeq9VVGE+mDvTDvZgmDDlgP3SM68+DAc3v3LLlL4MzbzDtF6nvYH1pIzNVp2VuM
         krznKxTbHamW3vG3M6oHCeG2JR/Bn4o0IleY4siqUxqGa4yEnCZD9/2r0feLihOGyyZw
         9NMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=qbFR6ORozH9kfjrIJADHVZULopGfaHV4QN8Pb1/fePY=;
        b=mRJBbVk7GYWBsQfozDTTQig485upL0KI8FLRStJZFzZxs6zG8oKxAprTrJ2kj3k4Fr
         LrLb8EBI8YphYoV3nfOtafCLgYz5/F1oXfLPWlpRxPlYJ2wf5n4oNAy99ImlN52RFNru
         3o6mWthfK/24bJ5Paq/Ix2f27dCS/uoyp79AIQvh0PIbaVVp0WoPWH0J5o0mBrmdsfKE
         RT0q/IZKckms5XM1NG+160RK0c2IkpXcjFB7DOppSzwCY2AyxIMGp8aNiVJ6YiCClFI5
         5c33/NRsULbc8O/Wt3MjoCGbIK8D855m7AsdOIqmBmmE9hrBBvfr76v1Alw4MAYcCT7o
         deMg==
X-Gm-Message-State: AOPr4FUUmMyDpAtPCopQToBItijnXBzSZYh5Fpcwpi85yMZ9pMudcSsA2ePKxFYmYpTi8oOOB4+HVnA+/U/nBw==
MIME-Version: 1.0
X-Received: by 10.107.135.202 with SMTP id r71mr26733406ioi.151.1460795346065;
 Sat, 16 Apr 2016 01:29:06 -0700 (PDT)
Date: Sat, 16 Apr 2016 13:59:06 +0530
Message-ID: <CAOmn9FQVJ7QQf1rk4v8P07UoRpW-=L+k24dKCVP61fmpD_32mA@mail.gmail.com>
From: shravan kumar <cor3sm4sh3r@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a113ea5f0b123b6053095eb79
Subject: [oss-security] Reflected XSS Vulnerability in Wordpress Custom-metas plugin 1.5.1

--001a113ea5f0b123b6053095eb79
Content-Type: text/plain; charset=UTF-8

Hello  ,


I would like to disclose a XSS vulnerability in Custom-metas plugin version
1.5.1  .

The Plugin can be found at https://wordpress.org/plugins/custom-metas/


Reproduction steps:

   - Install the plugin custom-metas
   - Log in to wp-admin as administrator (tested on firefox)
   - Pass the XSS payload as GET parameter to the
   /wp-admin/admin.php?page=custom-metas&paged=<XSS payload here>
   - example
   http://targetip/WPinstallationdir/wp-admin/admin.php?page=custom-metas&paged=
   "><script>alert(1);</script>
   - you will see a alert box.

Technical details:

This vulnerability is due to display of unsanitized GET parameters, which
are directly displayed on the page with-out any filters.

The vulnerable page is

/wp-content/plugins/custom-metas/tpl/meta-data-form-multiple.php


The Code responsible for the vulnerability is

LINE 10
 $currentPageNo = ( isset($_GET['paged']) && $_GET['paged'] != "")?
$_GET['paged']:1;

the currentPageNo variable is set using $_GET['paged'] .

It is then displayed in unsafe manner i.e without any filters. in following
line of code

LINE 43

<input type="text" size="2" value="<?php echo $currentPageNo;?>"
name="paged" title="Current page" id="postCurrent" class="current-page" />
of <span class="total-pages"><?php echo $tPostNumCount; ?></span>


-- 
Shravan Kumar

--001a113ea5f0b123b6053095eb79--
