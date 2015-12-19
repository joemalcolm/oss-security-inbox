X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3412" "Saturday" "19" "December" "2015" "08:47:01" "+0000" "CSW Research Lab" "disclose@cybersecurityworks.com" "<CAMWaY3ODBO6FAWzz21nDrc4x9+kMboe+RSGjWHyoxLWizoO+6A@mail.gmail.com>" "68" "[oss-security] Cross site vulnerability (XSS) in OcPortal CMS 9.0.20" "^Date:" nil nil "12" "2015121908:47:01" "[oss-security] Cross site vulnerability (XSS) in OcPortal CMS 9.0.20" (number mark "U       disclose@cyb Dec 19   68/3412  " thread-indent "\"[oss-security] Cross site vulnerability (XSS) in OcPortal CMS 9.0.20\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30578 invoked by uid 550); 19 Dec 2015 10:01:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5769 invoked from network); 19 Dec 2015 08:47:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cybersecurityworks-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=KnyenOtItG9baRC8HQEaopWvPCcaaUBvb4X5ixd4pRg=;
        b=FbzuRD8qe9TVpv30GvtKz8QYZu6e8XJvmnhEwR0madar0RQwojRj0kJkVP01VudCgi
         JUq7+Mn4cFjY5KV/QXQn2VaIz8NmGHkkt+UAmTAEhXv4z3Ehr1kvylrRweT/Cb7md/N0
         X5Gj6rgqqpyWAsmy4Gm+5q0ac0uK5A+F/M6vR+gbfb1KzEsb6wHM9nb/ZNetTQFg1ms1
         FW+7DoeFhMaYRvgRpVsbiJIunaM19is2UKjG3OFIoGFVa1PJ7oBIcct1zJZ1Bx4nKQOm
         Vd+rIK91RciXP08N2h1rPOOL1siWXrs9Xr/i/NB4EnjSLSHyjUTbO49vm5TcsPQzqsyY
         aM7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-type;
        bh=KnyenOtItG9baRC8HQEaopWvPCcaaUBvb4X5ixd4pRg=;
        b=h/wpFvK4iNSQUeyImOQSRdzGDxA98abFu1Rq5Xcqd/0mj6puigqhaz+T4cCJqfaMNN
         RheERCoIWODiEaKm+j9zqF3Icyay+3E1lgcfye9i08ql+r/6ASkDNtcStUoacJN6/LPv
         UyONecWe30Ual0wuChexSffq7lYiB+HKv1Iznm7NG/mNSwghlu83pJyb5F3lTp8mujET
         01BaEq8JPmgrm0Jc/YxUHNuSyK7fdWSJKzjgpEvts4zO2Ks+FquZvByAZfi0+1Rns1Wg
         X+4sUEXAwca2+L6uVsJRKDNSOuWnJjiHNFfv0YAOVtb8lagtXOUcfjbSRFnyDOvfUDOy
         2+ZQ==
X-Gm-Message-State: ALoCoQnIXyK40ENNBHyVA/r6B9Rgfqkiz9OPvZJ3/AFo1qdenN/J/etf+c4ZgYq/Wf+OCLcn/rfRa+1bll3EHmh11FtxELIFoA==
X-Received: by 10.107.34.199 with SMTP id i190mr9946838ioi.150.1450514830866;
 Sat, 19 Dec 2015 00:47:10 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAMWaY3ODBO6FAWzz21nDrc4x9+kMboe+RSGjWHyoxLWizoO+6A@mail.gmail.com>
Content-Type: multipart/related; boundary=001a1140d9443d98ae05273c4d70
Date: Sat, 19 Dec 2015 08:47:01 +0000
From: CSW Research Lab <disclose@cybersecurityworks.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Cross site vulnerability (XSS) in OcPortal CMS 9.0.20
To: "cve-assign@mitre.org" <cve-assign@mitre.org>, 
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--001a1140d9443d98ae05273c4d70
Content-Type: multipart/alternative; boundary=001a1140d9443d98ab05273c4d6f

--001a1140d9443d98ab05273c4d6f
Content-Type: text/plain; charset=UTF-8

Hi all

can you please assign CVE for this issue ?
http://ocportal.com/site/news/view/security_issues/security-patch-for-xss.htm?filter=1%2C2%2C3%2C29%2C30

Proof of Concept URL
***************************
[+] http://localhost/ocportal
/data/emoticons.php?field_name=post&keep_session=1
840048647&utheme=default&overlay=1/
[image: XSS on Data_emotions_browser.PNG]

Vulnerable Parameter(s):
******************************
[+]  Field_Name

Credits & Authors
--------------------
Arjun Basnet from Cyber Security Works Pvt. Ltd. (
http://cybersecurityworks.com)

--001a1140d9443d98ab05273c4d6f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all=C2=A0<div><br></div><div>can you please assign CVE =
for this=C2=A0issue ?</div><div><a href=3D"http://ocportal.com/site/news/vi=
ew/security_issues/security-patch-for-xss.htm?filter=3D1%2C2%2C3%2C29%2C30"=
 target=3D"_blank">http://ocportal.com/site/news/view/security_issues/secur=
ity-patch-for-xss.htm?filter=3D1%2C2%2C3%2C29%2C30</a><br></div><div><br></=
div><div><div style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">P=
roof of Concept URL</span><br style=3D"font-size:12.8px"><span style=3D"fon=
t-size:12.8px">***************************</span></div><div style=3D"font-s=
ize:12.8px"><div><span style=3D"font-size:12.8px">[+]=C2=A0</span><font col=
or=3D"#1155cc"><span style=3D"font-size:12.8px"><a href=3D"http://localhost=
/ocportal/data/emoticons.php?field_name=3Dpost&amp;keep_session=3D1" target=
=3D"_blank">http://localhost/<span>ocportal</span>/data/emoticons.php?field=
_name=3Dpost&amp;keep_session=3D1</a></span></font><span style=3D"font-size=
:12.8px;color:rgb(17,85,204)">840048647&amp;utheme=3Ddefault&amp;overlay=3D=
1/</span></div><div><span style=3D"font-size:12.8px;color:rgb(17,85,204)"><=
img src=3D"cid:151b96a6892346304b84" alt=3D"XSS on Data_emotions_browser.PN=
G" class=3D"kr" style=3D"max-width: 100%; opacity: 1;"><br></span></div><br=
 style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">Vulnerable Par=
ameter(s):</span><br></div></div><div style=3D"font-size:12.8px"><span styl=
e=3D"font-size:12.8px">******************************</span></div><div styl=
e=3D"font-size:12.8px"><div style=3D"font-size:12.8px"><span style=3D"font-=
size:12.8px">[+] =C2=A0Field_Name</span></div><div style=3D"font-size:12.8p=
x"><span style=3D"font-size:12.8px"><br></span></div><div style=3D"font-siz=
e:12.8px"><span style=3D"font-size:12.8px;line-height:19.2px">Credits &amp;=
 Authors</span><br style=3D"font-size:12.8px;line-height:19.2px"><span styl=
e=3D"font-size:12.8px;line-height:19.2px">--------------------</span><br st=
yle=3D"font-size:12.8px;line-height:19.2px"><span style=3D"font-size:12.8px=
;line-height:19.2px">Arjun Basnet from Cyber Security Works Pvt. Ltd. (<a h=
ref=3D"http://cybersecurityworks.com/" target=3D"_blank">http://cybersecuri=
tyworks.com</a>)</span><span style=3D"font-size:12.8px"><br></span></div><d=
iv style=3D"font-size:12.8px"><span style=3D"font-size:12.8px"><br></span><=
/div><div style=3D"font-size:12.8px"><span style=3D"font-size:12.8px"><br><=
/span></div></div></div>

--001a1140d9443d98ab05273c4d6f--

--001a1140d9443d98ae05273c4d70--
