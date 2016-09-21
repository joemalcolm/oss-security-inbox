X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1249" "Wednesday" "21" "September" "2016" "08:09:27" "+0800" "Carl Peng" "felixk3y@gmail.com" "<CAEiFw0UDwyLFxRK0PPVKVGA3+B112scA3M+sskZ6Q8-0K1vAuQ@mail.gmail.com>" "37" "[oss-security] =?UTF-8?B?Q1ZFIHJlcXVlc3TvvJpFeHBvbmVudCBDTVMgMi4zLjkgeHNzIHZ1bG5lcmFiaWxpdHkgaQ==?==?UTF-8?B?biB3b3JsZHBheQ==?=" nil nil nil "9" "2016092100:09:27" "[oss-security] =?UTF-8?B?Q1ZFIHJlcXVlc3TvvJpFeHBvbmVudCBDTVMgMi4zLjkgeHNzIHZ1bG5lcmFiaWxpdHkgaQ==?==?UTF-8?B?biB3b3JsZHBheQ==?=" (number mark "U       felixk3y@gma Sep 21   37/1249  " thread-indent "\"[oss-security] =?UTF-8?B?Q1ZFIHJlcXVlc3TvvJpFeHBvbmVudCBDTVMgMi4zLjkgeHNzIHZ1bG5lcmFiaWxpdHkgaQ==?==?UTF-8?B?biB3b3JsZHBheQ==?=\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25625 invoked by uid 550); 21 Sep 2016 00:46:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1654 invoked from network); 21 Sep 2016 00:09:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=eHiRAgaNIkKBPM8C/2r9V1G/GLrY8EJG5pQDeasjlZA=;
        b=WT9wW6LpA158AZkANlWWAgF5KxKACadKWWUiI9aC2p+Gyw0ziivN+8IqanoWBMzkkg
         dwDnBbruPhxnqgmFt28bDofrPcW+klGG3ehkDXbk2QMM3sEFGK008VKgtwAwoa1gE1s8
         44TdgYF+oUHlI7sdyQnOlJIxsNZRn0lcKAconnRncn+98tBx1oY091ghvv13F3GSpDj4
         1pY1PYHupd2mY2ZJdgZ3CPBfp+US8a1bx5yvbfRj1nz9EraO/iuDd+iwHaZkV33Awxah
         g7znUotsSFD8Fzd+nnL7gof0r7Ti70yvoWbwLsX43qv8AKau9eZmHfRf4TMjDEfvucRE
         LXIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=eHiRAgaNIkKBPM8C/2r9V1G/GLrY8EJG5pQDeasjlZA=;
        b=EjRAyHEO6VOzOBzqlYXrdfQxDeyUgn7CcRZ/oP6ehjIU9+ac8gWrkythWGt2mDXQR9
         rnAUrVqRROB30wzBWPxy4hWpYU/d1RGmxFas/Un3841i09g+4oaXVexzWYizyn4IjRrK
         oGzGy5AweMQcWjfn+yQ861WRyDXruI018c6MK7ow45c/6QLOgRw9ZLjMzgHp5G3ZXHA0
         oTPTdy4af42pfLkoGo/9CWCvfWU//u8Nx7Zvi34unG/DpJ8DHHJLI4oNDQyq3BOIlNwL
         437+PlPyJWK658m5raHLyq8kYuZyhn+LDf9yTK6JFWEl4392no8OqzXnulimjh/Y3AZg
         mU7A==
X-Gm-Message-State: AE9vXwNzwmoxIvRcp9AYb5+hktB9FAokwWm1Xl6OILO+azCHLIlUp8Jf6LaFqlbwIE1Uv1PcYaPj9zfQMAu9Bw==
X-Received: by 10.194.173.168 with SMTP id bl8mr30191776wjc.136.1474416567385;
 Tue, 20 Sep 2016 17:09:27 -0700 (PDT)
MIME-Version: 1.0
From: Carl Peng <felixk3y@gmail.com>
Date: Wed, 21 Sep 2016 08:09:27 +0800
Message-ID: <CAEiFw0UDwyLFxRK0PPVKVGA3+B112scA3M+sskZ6Q8-0K1vAuQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=089e0122ebe4c00415053cf95bce
Subject: [oss-security] =?UTF-8?Q?CVE_request=EF=BC=9AExponent_CMS_2=2E3=2E9_xss_vulnerability_i?=
	=?UTF-8?Q?n_worldpay?=

--089e0122ebe4c00415053cf95bce
Content-Type: text/plain; charset=UTF-8

Hi, I reported the following Cross Site Scripting vulnerability to the
ExponentCMS team on Sep 16, 2016:
vulnerability:
/external/worldpay/callback.php
line 7-11:
```
<head>
<meta http-equiv="refresh" content="2;url=<?php echo URL_FULL;
?>cart/preprocess?transStatus=<?php echo $_POST["transStatus"];
?>&transId=<?php echo $_POST["transId"]; ?>"> //xss
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
<title></title>
</head>
```
"transStatus", "transId" parameters are fail to sufficiently sanitize.

Proof of concept:
http://www.exponentcms.org/external/worldpay/callback.php
And post:transStatus="/><script>alert(/xss/)</script>


And Now, Cross Site Scripting vulnerability have been fixed.
https://exponentcms.lighthouseapp.com/projects/61783/changesets/5e4b749bff4314f2a22c7afef903c67ccb862caf
https://github.com/exponentcms/exponent-cms/commit/5e4b749bff4314f2a22c7afef903c67ccb862caf

This issue was reported by Peng Hua of silence.com.cn Inc. and I would like
to request a CVE for this issue (if not done so).

Thank you.
---------------------------------http://www.silence.com.cn
penghua#silence.com.cn
PKAV Team

--089e0122ebe4c00415053cf95bce--
