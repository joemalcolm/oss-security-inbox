X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1501" "Thursday" "24" "November" "2016" "15:22:28" "+0800" "haojun hou" "haojunhou@gmail.com" "<6921209F-B318-4448-B0C1-55798888CDE3@gmail.com>" "49" "[oss-security] CVE request - BigTree CMS 4.2.13 Extension Form Builder Multiple Cross-Site Scripting (XSS)" nil nil nil "11" "2016112407:22:28" "[oss-security] CVE request - BigTree CMS 4.2.13 Extension Form Builder Multiple Cross-Site Scripting (XSS)" (number mark "U       haojunhou@gm Nov 24   49/1501  " thread-indent "\"[oss-security] CVE request - BigTree CMS 4.2.13 Extension Form Builder Multiple Cross-Site Scripting (XSS)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22094 invoked by uid 550); 24 Nov 2016 10:38:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12096 invoked from network); 24 Nov 2016 07:22:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:mime-version:subject:message-id:date:to;
        bh=t1wGef+Wt02lwmTCyHoHoWZBq+RR2MzUjRWmj4qNMxs=;
        b=jfdJ8nSRQo2x00VHGuCqt468BZ+2pb+NlBpvgBPLrYzD8xcjVzo7k7snWi16TfGe+5
         yOXvnru1y2Qnb/sijj80goSI4M4/q0Y9kKmpf15c63pKNXpV6WZ96Tpg42HSdtydFaTV
         sGcOdn0uzRVvS8pvy7Zc7rZQv1nG4MYTOUwZBGO9QsZ2hOk2J8LNwNNt1xQceHFY8XlH
         9YuYnyFenVuyL/qRe+jWsAw2JNguH6N1LWuGWnPw0uQQf36zAFanTA079bPSLp6WV2Uq
         W9SnOf79lr8PWq5iFsPHgYRIKxlGo31v/tKyXyJTEmlHykpt2cYjKZHScxCd3qXZ5OKd
         7Gzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
        bh=t1wGef+Wt02lwmTCyHoHoWZBq+RR2MzUjRWmj4qNMxs=;
        b=J0Pqdo126DHJ4JH9F5+g/AG3WDC3agmRb++4NuEUqVdS5osS6oeTAwDjxYpwSwQBF3
         FXoyFeUNCQy+C8MXlHbHYhad8eWzCb7E/XLK1UlwnoOU5gfpCcjSy6Ug7l6r/nB6Ylcp
         i4qN2ZPR84bxSOcT4xHJzxjoqFwrFOvrvrGRE07VTlfm0GWkGiaeLI2yUoHAMVbljn8Q
         qk1+pRJ4cW7H91dB8+1b9rahhsiT1S9M2YZu+7JrFDQIj6BBtiesEpqzTY1dkhI9F4so
         ayaiZcI7XZ4nLKjTa0gCk+vxby+AMJRMCA7gRVME9zB4jN8uEHP9STAFIkFFq5QUikZJ
         /6UA==
X-Gm-Message-State: AKaTC02X0lCRj3lPZKJrGFRyqpjM/2Jb7XNgthA8HFgXTyFQxUeG4gzCpqGOGrw8iGgKCw==
X-Received: by 10.99.98.2 with SMTP id w2mr1768742pgb.59.1479972153210;
        Wed, 23 Nov 2016 23:22:33 -0800 (PST)
From: haojun hou <haojunhou@gmail.com>
Content-Type: multipart/alternative;
 boundary="Apple-Mail=_34E99912-F32A-4D89-B1FF-FA236BB3FC6F"
Mime-Version: 1.0 (Mac OS X Mail 10.1 \(3251\))
Message-Id: <6921209F-B318-4448-B0C1-55798888CDE3@gmail.com>
Date: Thu, 24 Nov 2016 15:22:28 +0800
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3251)
Subject: [oss-security] CVE request - BigTree CMS 4.2.13 Extension Form Builder Multiple
 Cross-Site Scripting (XSS)

--Apple-Mail=_34E99912-F32A-4D89-B1FF-FA236BB3FC6F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=gb2312

Hi:
BigTree CMS 4.2.13 Extension Form Builder- Multiple Cross-Site Scripting (X=
SS)=20

Procuct: BigTree CMS Extension Form Builder

Vendor: BigTree CMS Developer

https://www.bigtreecms.org/extensions/details/com.fastspot.form-builder

Vunlerable Version: 1.1

Tested Version: 1.1

Author: Haojun Hou in ADLab of Venustech=20

Advisory Details:

Haojun Hou in ADLab of Venustech discovered Multiple Cross-Site Scripting (=
XSS) in BigTree CMS Extension =A1=B0Form Builder=A1=B1, which can be exploi=
ted to add,modify or delete information in application`s database and gain =
complete control over the application.



The vulnerability exists due to insufficientfiltration of user-supplied dat=
a in multiple HTTP POST parameters passed to =A1=B0site/index.php/../../ext=
ensions/com.fastspot.form-builder/ajax/redraw-field.php=A1=B1 url. An attac=
ker could execute arbitrary HTML and script code in browser in context of t=
he vulnerable website.

The exploitation examples below uses the "alert()" JavaScript function to s=
ee a  pop-up messagebox:

(1)POST id=3D "?><script>alert("hacked by ADLab");</script><?"

(2)POST name=3D "?><script>alert("hacked by ADLab");</script><?"

(3)POST type=3D "?><script>alert("hacked by ADLab");</script><?"


Could you please help me assign a  CVE for this issue?=

--Apple-Mail=_34E99912-F32A-4D89-B1FF-FA236BB3FC6F--
