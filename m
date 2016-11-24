X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1402" "Thursday" "24" "November" "2016" "15:24:04" "+0800" "haojun hou" "haojunhou@gmail.com" "<92067071-434D-4B7B-BF05-39E1BD7FE449@gmail.com>" "47" "[oss-security] CVE request - itdb 1.23  Cross-Site Scripting (XSS)" nil nil nil "11" "2016112407:24:04" "[oss-security] CVE request - itdb 1.23 Cross-Site Scripting (XSS)" (number mark "U       haojunhou@gm Nov 24   47/1402  " thread-indent "\"[oss-security] CVE request - itdb 1.23  Cross-Site Scripting (XSS)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28168 invoked by uid 550); 24 Nov 2016 10:39:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13605 invoked from network); 24 Nov 2016 07:24:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:mime-version:subject:message-id:date:to;
        bh=VLJjE3RNCV8NLTYC+0Gi3LOVbBh1NjWx1OwSZazXLM8=;
        b=rZIfaBZmceNsbZHlrBOs45B5Xaa+urqkneg8ks0HKOdcPcEv6itz5bEAUGP4i2y+fJ
         B9AcH5BuhRNUtS/WK8qXXwn4pU8m6hFnrEv5gRLcOkV+ZcFGEFtzKoErVrK/xbozpyOc
         AXOnylxHGbHpk8pyKsUw1M8NBm6SeoprIS603CQSXaro0DEl5pvBYewDbUWjjQvKeK72
         18K6hz4zvaACYSIqzKRJNm+w61/+g+5lVaR9UnYJenEHHVooPDvN1q8K/+34N/5OivXA
         QxNTBx9t+Tai2KkpwpV1uwrhT+KVDjbBXc3lzuNNIm7+owCK3FXBixCZhXNkER1IWyDp
         ZX2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
        bh=VLJjE3RNCV8NLTYC+0Gi3LOVbBh1NjWx1OwSZazXLM8=;
        b=b+XMkW5qsVPMk4L8INNvrQw8DTrtEcAQMG86cL0Eez2qTeD9GpewUO7sRoV3rSY9cs
         mIR/XJZPfLiK4lxuHtzKLyvPVH1jZGBuls4XhScG9Eoj9Oi2CeUtEyMvA4l77O/bCv7C
         BP3p34o9l8MM/Bl0H9X3SuMfve/dIUpshCguwGD0dKuBzJQlkKCvKdNDYc/1vzU0oE6s
         3M+Ry3oWlGf5+cTQsw77hruMSWJmqCT8dcV4eg7B5e5TMtqT+QQXlxzpG5v+UyV+35ox
         LClmD9sZVxrOvLXdA7SnFYKzM92IPygc1KlrQhMHIHg/85KMs942+mNhq4naeYvoeyA7
         7GDg==
X-Gm-Message-State: AKaTC02OZyfQH/Gmm3NcyfXNZmKcTiPEhkRiXBFk1aeoSWkdZNDs+I7ZJbwwxD30woHLSg==
X-Received: by 10.84.129.34 with SMTP id 31mr2381884plb.104.1479972249241;
        Wed, 23 Nov 2016 23:24:09 -0800 (PST)
From: haojun hou <haojunhou@gmail.com>
Content-Type: multipart/alternative;
 boundary="Apple-Mail=_4E3A5905-363A-429E-BD5C-5EA4AF2380AB"
Mime-Version: 1.0 (Mac OS X Mail 10.1 \(3251\))
Message-Id: <92067071-434D-4B7B-BF05-39E1BD7FE449@gmail.com>
Date: Thu, 24 Nov 2016 15:24:04 +0800
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3251)
Subject: [oss-security] CVE request - itdb 1.23  Cross-Site Scripting (XSS)

--Apple-Mail=_4E3A5905-363A-429E-BD5C-5EA4AF2380AB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=gb2312

Hi:
itdb 1.23 - Cross-Site Scripting (XSS)=20

Procuct: IT Items DataBase

Vendor: ITDB http://www.sivann.gr/software/itdb/

Vunlerable Version: 1.23 and probably prior

Tested Version: 1.23

Author: Haojun Hou in ADLab of Venustech


Advisory Details:

Haojun Hou in ADLab of Venustech discovered a Cross-Site Scripting (XSS) in=
 itdb <>, which can be exploited to add,modify or delete information in app=
lication`s database and gain complete control over the application.



The vulnerability exists due to insufficientfiltration of user-supplied dat=
a in =A1=B0value=A1=B1 HTTP POST parameter passed to =A1=B0itdb-1.23/js/Dat=
aTables-1.8.2/examples/examples_support/editable_ajax.php=A1=B1 url. An att=
acker could execute arbitrary HTML and script code in browser in context of=
 the vulnerable website.

The exploitation example below uses the "alert()" JavaScript function to se=
e a  pop-up messagebox:

POST value=3D"><script>alert(1);</script><"

http://localhost/itdb-1.23/js/DataTables-1.8.2/examples/examples_support/ed=
itable_ajax.php <http://localhost/itdb-1.23/js/DataTables-1.8.2/examples/ex=
amples_support/editable_ajax.php>

Could you please help me assign a  CVE for this issue?

=20=

--Apple-Mail=_4E3A5905-363A-429E-BD5C-5EA4AF2380AB--
