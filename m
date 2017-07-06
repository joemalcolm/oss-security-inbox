X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1765" "Thursday" "6" "July" "2017" "15:49:39" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty1yT4APP6kfiNA5=_bPu0LR7r-Vn624vCAK-3jjh1K27Q@mail.gmail.com>" "49" "Re: [oss-security] systemd fails to parse user that should run service" "^Date:" nil nil "7" "2017070621:49:39" "[oss-security] systemd fails to parse user that should run service" (number mark "        kseifried@re Jul  6   49/1765  " thread-indent "\"Re: [oss-security] systemd fails to parse user that should run service\"\n") "<VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>" ("<VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32407 invoked by uid 550); 6 Jul 2017 21:49:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32386 invoked from network); 6 Jul 2017 21:49:52 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=flzX2afLZJK+VaOpk/7OV1QhKSyEqWrCxAYM7QQao/c=;
        b=aPmQ7OIMKcb2Ogo0akZb2JzkVxFBMz8Dy4nn8iUQ4FbW0W29rVSKuJBzeDHHayffrn
         0LKr+4AVC6ZczFlfi3EQVcbpRLv5ZZVx8Xm/kPmOvLdte/gJfHJqQH0+DaywyKYU6c6x
         0fTBdMYrb6SjmdaJzXhLomFHfAonPyZs1XYesuVyjSAUJ8TIPp/O75HYCdPbUaETuyKa
         7/G+l5BsZlRJskgrB+5693tZ0q9UV74eWgwN8tnFROcf6DZ6qMmAatDdnbIGa3sFk+z7
         7njABEJtkOtKqptKj2ZXJtc7LjlHTP+0ud/OuABuUwvHixUst6Hlp+2O+IcMMz/Ycxxy
         QMXA==
X-Gm-Message-State: AKS2vOxKVaHiS0TiK8d827PPMmxHEBe9P5vWfIuMK90pEol561DItY/9
	uD9CRZNvrWYlAa9V3Bl/z8WcdIojs+2N9TT5OQ==
X-Received: by 10.237.47.132 with SMTP id m4mr66948484qtd.200.1499377780389;
 Thu, 06 Jul 2017 14:49:40 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>
References: <VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>
Message-ID: <CANO=Ty1yT4APP6kfiNA5=_bPu0LR7r-Vn624vCAK-3jjh1K27Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary="94eb2c123b66fc1ab60553ad174f"
Date: Thu, 6 Jul 2017 15:49:39 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] systemd fails to parse user that should run service
To: oss-security <oss-security@lists.openwall.com>, daniel@dsinf.net, 
	lennart@poettering.net

--94eb2c123b66fc1ab60553ad174f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Jul 2, 2017 at 3:08 AM, Daniel Skowro=C5=84ski <daniel@dsinf.net> w=
rote:

> Hi all,
>
> Just wanted to bring attention to issue with systemd not doing what is
> expected when parsing User that should run service.
> When it fails to parse string starting with digit it fails back to root
> causing obvious threat to security.
>
> See discussion with developer on github: https://github.com/systemd/
> systemd/issues/6237
>
> Best,
> -Daniel Skowronski
>

I've assigned CVE-2017-1000082 for this issue. Lennart is CC'ed.


{"data_version":"4.0","references":{"reference_data":[{"url":"
https://github.com/systemd/systemd/issues/6237"},{"url":"
http://www.openwall.com/lists/oss-security/2017/07/02/1"}]},"description":{=
"description_data":[{"lang":"eng","value":"systemd
v233 and earlier fails to safely parse usernames starting with a numeric
digit (e.g. \"0day\"), running the service in quesiton with root privileges
rather than the user
intended"}]},"data_type":"CVE","affects":{"vendor":{"vendor_data":[{"produc=
t":{"product_data":[{"version":{"version_data":[{"version_value":"v223
and
earlier"}]},"product_name":"systemd"}]},"vendor_name":"systemd"}]}},"CVE_da=
ta_meta":{"DATE_ASSIGNED":"2017-70-06","STATE":"PUBLIC","ID":"CVE-2017-1000=
082","ASSIGNER":"
kurt@seifried.org","REQUESTER":"kseifried@redhat.com
"},"data_format":"MITRE","problemtype":{"problemtype_data":[{"description":=
[{"lang":"eng","value":"CWE-20"}]}]}}


--=20

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--94eb2c123b66fc1ab60553ad174f--
