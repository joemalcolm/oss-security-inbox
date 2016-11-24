X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1383" "Thursday" "24" "November" "2016" "15:18:02" "+0800" "haojun hou" "haojunhou@gmail.com" "<F0516C22-C2D6-4C52-8AD1-86F33F6A2513@gmail.com>" "45" "[oss-security] CVE request - BigTree CMS 4.2.13 - Cross-Site Scripting (XSS)" nil nil nil "11" "2016112407:18:02" "[oss-security] CVE request - BigTree CMS 4.2.13 - Cross-Site Scripting (XSS)" (number mark "U       haojunhou@gm Nov 24   45/1383  " thread-indent "\"[oss-security] CVE request - BigTree CMS 4.2.13 - Cross-Site Scripting (XSS)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21882 invoked by uid 550); 24 Nov 2016 10:38:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10177 invoked from network); 24 Nov 2016 07:19:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:mime-version:subject:message-id:date:to;
        bh=4ojm23mEPpZ30/CMnHMLYqUr0+WU0SL6EKo6jCQOqmQ=;
        b=B6SBy3JPEpKEoCDOzPt1EltNkN7wdp4oIN5u7BdHvB8xqg6i5NgoEDL3DdJ86uGga/
         hyCEA+lZexwnggr7oxNuGO9yPrXOHnS6ByH86XdAEr0E3YmEg/yPPJsynNrjtg6OQSaS
         ZzQWSPO2d+ymXQDnyafZO7qhTNxLbM/gpMImIiE/8gzYQJQWx7x8zkVxwwgE35pDmN6J
         cN3YMvohcORqGl0OFBOp7kEEAC7AMaIyZXAJ1Mez6ZJwSgcn0v9MzqvPBfpl/LBvx/mi
         rduV/GDjit63whLM8A8jDyhESPZGoFcjMvVdtjR1vXQmbbrpvEycqX91Y2d7yLaHJmfd
         nPZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
        bh=4ojm23mEPpZ30/CMnHMLYqUr0+WU0SL6EKo6jCQOqmQ=;
        b=jEEATcFVEfqBcxEwKErmmw9urrutM13a7D5Q33jn1D6Qwmn2hn+DhA3aRjW+lyklm3
         TP16gcp3cHY+02XQZcomwtthz/kYmN17cXvDmF2NO+8zuqJEAPxkQi/qwHI1rJzrFQsQ
         vL91xEopG3Dj4sN8ci5WA5Gv02vReHkHCeorSqAvIXIvR/2CS1GzPJCSC2Tq0E6ZE0OA
         tolhy1sCaWJHqtebIJjj6fmSIISCYyefFlyNhA1dHxBm8Bd//UMLRkqsgtGdMbOjNHi7
         Z47Zjc0QXS6iQMqjm3wrvx/PdGPG/MjmbTbF4+gj1n71pi7++gHtIRupYJbUpJ7ybK7S
         OtNg==
X-Gm-Message-State: AKaTC009BXOCDAHdo055utzjAnXEZRsC1JM0rrGHs+MbFYY5QDAyNsYy9lNzfqZhdb0kFg==
X-Received: by 10.98.69.133 with SMTP id n5mr945091pfi.160.1479971947791;
        Wed, 23 Nov 2016 23:19:07 -0800 (PST)
From: haojun hou <haojunhou@gmail.com>
Content-Type: multipart/alternative;
 boundary="Apple-Mail=_029D2FF3-3E87-4150-8609-0F7BB5DB6C4A"
Mime-Version: 1.0 (Mac OS X Mail 10.1 \(3251\))
Message-Id: <F0516C22-C2D6-4C52-8AD1-86F33F6A2513@gmail.com>
Date: Thu, 24 Nov 2016 15:18:02 +0800
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3251)
Subject: [oss-security] CVE request - BigTree CMS 4.2.13 - Cross-Site Scripting (XSS)

--Apple-Mail=_029D2FF3-3E87-4150-8609-0F7BB5DB6C4A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=gb2312

Hi:
BigTree CMS 4.2.13 - Cross-Site Scripting (XSS)=20

Procuct: BigTree CMS

Vendor: BigTree CMS (https://www.bigtreecms.org/)

Vunlerable Version: 4.2.13 and probably prior

Tested Version: 4.2.13

Author: Haojun Hou in ADLab of Venustech

=20

Advisory Details:

Haojun Hou in ADLab of Venustech discovered a Cross-Site Scripting (XSS) in=
 BigTree CMS, which can be exploited to add,modify or delete information in=
 application`s database and gain complete control over the application.

=20

The vulnerability exists due to insufficientfiltration of user-supplied dat=
a in =A1=B0id=A1=B1 HTTP GET parameter passed to =A1=B0core/admin/adjax/das=
hboard/check-module-integrity.php=A1=B1 url. An attacker could execute arbi=
trary HTML and script code in browser in context of the vulnerable website.

The exploitation example below uses the "alert()" JavaScript function to se=
e a  pop-up messagebox:

http://localhost/BigTreeCMS/core/admin/adjax/dashboard/check-module-integri=
ty.php?id=3D=A1=B0><script>alert(1);</script>< <http://localhost/BigTreeCMS=
/core/admin/adjax/dashboard/check-module-integrity.php?id=3D>=A1=B1

=20

Could you please help me assign a CVE for this issue?=

--Apple-Mail=_029D2FF3-3E87-4150-8609-0F7BB5DB6C4A--
