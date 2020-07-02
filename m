X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7279" "Thursday" "2" "July" "2020" "17:33:20" "+0800" "Zhang Xiao" "xiao.zhang@windriver.com" "<ea742763-f1bb-bf13-3ecf-f61aaf1e0b43@windriver.com>" "159" "[oss-security] Contributing Back" "^Cc:" nil nil "7" "2020070209:33:20" "[oss-security] Contributing Back" (number mark "        xiao.zhang@w Jul  2  159/7279  " thread-indent "\"[oss-security] Contributing Back\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Contributing Back" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29811 invoked by uid 550); 2 Jul 2020 10:07:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8120 invoked from network); 2 Jul 2020 09:33:42 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dZ+W7hCkXmtQOPmG4UI8eMAmb781/nah6KKhOqI60MK4cnxJdkFQpojhKH9V6nQbu6zx/MQgX97amYpkGdfLh6Jth+/djscDdd0mvqEYLjGJ6fYfK6GiivSh+GRzj3rC7MBy9aoL0G6901zfK6hfuUBkIPKE27VgJo1GEqH3yyfpl82dJVFs7Gja4vj/qDS0Vardy/p8C81ncxDrR3XWh69vOCtXGl5xjs4AygUMioURZjFlC5XLIYTi7E9KTA7Alm/QgwggvUNrMLiJOiPdRmfPgPu6GnSuiokbDqTPFjZE1+is/SfjjdL7x+9NoMCH0747EVpaOVTzoZLDh9rAWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xFxmvH5OsvqvHcarq36ZAe/Pf9Btxy7fCe1vn5ERTL4=;
 b=GH+XCmkJBE3T+8hD59tWP8Jivb9Xi+hazeRgY/AoK29izp34wWiwMT2dmT4EiEOBYDxOGa/2wJGZyyZE/NCsiXwgp8yITeMW1L4c5iLC/+Uw3HF890jJlPM/Uu9oBgXXWz/eNwui1cZpXdnrTpLIPUcgzuyD8RAf+sazC8NlY3SUm7szxszONMJY7FUSWQ39Mq7jSrhim2Y2d9q7f6fTMksHlqSPhxdp4FfxunY/XFItVPCjm34fDEerS2oZyuVq2Yjy2rytdV/H+YztySFrSHGH4bh6hIdB2yY16SvFZ6rbtvvkOlD3Q8+Xk7j0lvYwDJxqovwhzl1stdSBwFNorA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xFxmvH5OsvqvHcarq36ZAe/Pf9Btxy7fCe1vn5ERTL4=;
 b=YiXUWXlS7si8ouf0qkCjYPA8xEx1SyNUhSHU4yhXqdqvGg0dnsgtR8eeyc83OT6OlN9xsBLjONeYL/uYjKDOUnBNv9nBv7qSgbGnTIY90lVm5CPbConH7XKdsJ0DivbW+FEsdyAxBnHqzft/XnRXk73YhJ4IPU5a5OS8LGIojoE=
Authentication-Results: openwall.com; dkim=none (message not signed)
 header.d=none;openwall.com; dmarc=none action=none header.from=windriver.com;
Message-ID: <ea742763-f1bb-bf13-3ecf-f61aaf1e0b43@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
Content-Type: multipart/mixed;
 boundary="------------B9406BFC5435452D9DD591EF"
Content-Language: en-US
X-ClientProxiedBy: YT1PR01CA0096.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:2d::35) To BY5PR11MB4353.namprd11.prod.outlook.com
 (2603:10b6:a03:1b9::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-Originating-IP: [60.247.85.82]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 346f0075-544d-458c-2158-08d81e6af9c5
X-MS-TrafficTypeDiagnostic: BYAPR11MB3349:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<BYAPR11MB33490C235F4F7D4107DFA56A906D0@BYAPR11MB3349.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 0452022BE1
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	7Kb97TY4lQaDshvGsS8zZkIHfchAk4fxca8mB+/Qq6S48Q59hO4kQvv4u8N6D9UfqJt8Jm2roaDiq/PtMRk9fmg5GJl7MNRsopp8arb8XqBlhocr41Y7P9J7DcilRZy29WXK3S+2+ZSrnNV8D6IK4QzOkCJGW3lJRu4GYn00LnUnZitUDTuNVCwJ1FQXih+kopG//msCb86+GIB0X3r2qF5LFewJKM9r9mZO77F/7nTrXQt7KBRy5Ww21BWxvi2+6t6P4oGBax9Fi/YkEqOyK0OIuRM58WNCcBQAayDJ21n6aJcJoofWVK+tP9B+cDOvNPQOj6RiOorufCeuYB/Knvlxb4pdNgJG66pUpZlVSrSyVnbjn+sYah8rWc24DcvkxrSUs6g9Lk9cH20QkjUc6ImxUjeJtB36ee9urLVLL/j3mk2x7sdON/mdRPCxjQ25JhYQ35mVBewrruG4L5JSmZjK57dBfnBP9dRzjiFb/yohpTzXV/VeEdTm3wJ5qs3/DOtkVkeffuqOc9kgXg1Naw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB4353.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(396003)(366004)(376002)(39850400004)(136003)(346002)(31696002)(186003)(16526019)(21480400003)(26005)(4326008)(5660300002)(235185007)(36756003)(33964004)(6486002)(6666004)(2616005)(316002)(16576012)(956004)(15650500001)(83380400001)(86362001)(66476007)(83080400001)(966005)(8676002)(166002)(8936002)(6916009)(478600001)(66946007)(6706004)(66556008)(31686004)(52116002)(2906002)(66616009)(78286006)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	850N7Dnfqef3GV9MWuef9XoTDPaMVxuyQCP9BYBPAkQDXpyJpEvnPb/rW2SC4k3W7pr9Tg9O1wLtkM4K+A16BJw+KH4st9wWgmBh4Kg5L2+E8M4dkBXsgTDKIaSFNxdyy0F1WDOPdsTg4hsH4wul1paaj0V37+jyUnKBp3x4JNrK7kWBNxMGYGxMCwGtAIkEFTvs4Tu8t3ilwTYhLU2HSNHLCq5vMevXbjqbIIPDbnOk/l7JPkeEhFps4DUduVNtGYYjPvGmdVUjNMChXFR+uoLngSyDin3/9KZCzUrIqFsDaGbNi+3P93dsZ/LiFyq1EwcWmTvtax6GtA2ltaUpKEKWPfBS6M4ORRbLiMvhhcUFAdmDIl02MBPFlNqaGm6/RZNrJTVtDWsv64OD48mqUD+N0iBpdiPa2hiyZynKZjRQCLqeqCttBSSny5F7aHfNpJe9m8b0Bk0s+ua9xZncnSEXwq75G46zJt2hMOhIOtE=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 346f0075-544d-458c-2158-08d81e6af9c5
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4353.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jul 2020 09:33:28.2225
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: M4MEE0ykHjvTpFzBZC2VAg2MDrirrVIWcIpySODtdMIIie0skP8VAqXgIRF9QWRAb0JxvWfSWcp0byZhqEBL0+u+EE8gigW2BQE0qAfnoN8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3349
Cc: xiao.zhang@windriver.com, Solar Designer <solar@openwall.com>
Date: Thu, 2 Jul 2020 17:33:20 +0800
From: Zhang Xiao <xiao.zhang@windriver.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Contributing Back
To: oss-security@lists.openwall.com

--------------B9406BFC5435452D9DD591EF
Content-Type: multipart/alternative;
 boundary="------------B88F52B7B18AC1270ECF1EE2"

--------------B88F52B7B18AC1270ECF1EE2
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi All,

I am an engineer of WindRiver. Thanks for Alexander's remind about the dist=
ribution and we would like to "backup" the first item of the administrative=
 list:
https://oss-security.openwall.org/wiki/mailing-lists/distros#contributing-b=
ack

1. Promptly review new issue reports for meeting the list's requirements an=
d confirm receipt of the report and, when necessary, inform the reporter of=
 any issues with their report (e.g., obviously not actionable by the distro=
s) and request and/or propose any required yet missing information (most no=
tably, a tentative public disclosure date/time) /- primary: Oracle, backup:=
 vacant /
Please let me know how we get started helping out.

And, I have another point want to discuss. As we know, sometimes, the CVE a=
nd NVD website don't upgrade their web page timely. For example:

the security maillist had an encrypted mail called "curl: overwrite local f=
ile with -J" in 20200617. It was a "pre-notification about a security advis=
ory about to ship next week in sync with our next curl release", for CVE-20=
20-8177. On curl's git tree, that very bug did been fixed and released in 2=
0200621:
https://github.com/curl/curl/commit/8236aba5854

But, till now, both cve.mitre.org and nvd.nist.gov still mark this CVE as "=
RESERVED":
https://nvd.nist.gov/vuln/detail/CVE-2020-8177
https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2020-8177

So I wonder if that is also an contribution to remind them, if so, any advi=
ses to make it? And If it ca be defined as an contribution, we can take it.=
 :-)


Thanks
Xiao


--------------B88F52B7B18AC1270ECF1EE2
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <div class=3D"moz-text-plain" wrap=3D"true" style=3D"font-family:
      -moz-fixed; font-size: 12px;" lang=3D"x-unicode">
      <pre class=3D"moz-quote-pre" wrap=3D"">Hi All,

I am an engineer of WindRiver. Thanks for Alexander's remind about the dist=
ribution and we would like to &quot;backup&quot; the first item of the admi=
nistrative list:
<a class=3D"moz-txt-link-freetext" href=3D"https://oss-security.openwall.or=
g/wiki/mailing-lists/distros#contributing-back">https://oss-security.openwa=
ll.org/wiki/mailing-lists/distros#contributing-back</a>

1. Promptly review new issue reports for meeting the list's requirements an=
d confirm receipt of the report and, when necessary, inform the reporter of=
 any issues with their report (e.g., obviously not actionable by the distro=
s) and request and/or propose any required yet missing information (most no=
tably, a tentative public disclosure date/time) <em>- primary: Oracle, back=
up: vacant
</em>
Please let me know how we get started helping out.

And, I have another point want to discuss. As we know, sometimes, the CVE a=
nd NVD website don't upgrade their web page timely. For example:

the security maillist had an encrypted mail called &quot;curl: overwrite lo=
cal file with -J&quot; in 20200617. It was a &quot;pre-notification about a=
 security advisory about to ship next week in sync with our next curl relea=
se&quot;, for CVE-2020-8177. On curl's git tree, that very bug did been fix=
ed and released in 20200621:
<a class=3D"moz-txt-link-freetext" href=3D"https://github.com/curl/curl/com=
mit/8236aba5854">https://github.com/curl/curl/commit/8236aba5854</a>

But, till now, both cve.mitre.org and nvd.nist.gov still mark this CVE as &=
quot;RESERVED&quot;:
<a class=3D"moz-txt-link-freetext" href=3D"https://nvd.nist.gov/vuln/detail=
/CVE-2020-8177">https://nvd.nist.gov/vuln/detail/CVE-2020-8177</a>
<a class=3D"moz-txt-link-freetext" href=3D"https://cve.mitre.org/cgi-bin/cv=
ename.cgi?name=3DCVE-2020-8177">https://cve.mitre.org/cgi-bin/cvename.cgi?n=
ame=3DCVE-2020-8177</a>

So I wonder if that is also an contribution to remind them, if so, any advi=
ses to make it? And If it ca be defined as an contribution, we can take it.=
 :-)


Thanks
Xiao
</pre>
    </div>
  </body>
</html>

--------------B88F52B7B18AC1270ECF1EE2--

--------------B9406BFC5435452D9DD591EF
Content-Type: application/pgp-keys;
 name="pEpkey.asc"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="pEpkey.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----=0A=
=0A=
mQGNBF4Ae50BDACwbUj/aceuDcsq+tIQL0QATYoA+u2PiPN2iGK15Aa3hI0kNngg=0A=
mmuDqJpcwVuMdPjaLMKKRSlwP35Lnt3eY83CS9W3hLrSOx2gWn4Ht1hgHJGxJUyd=0A=
zu2hs3qFbmp2cLrrKDNHJh0gPFoBSbF9cX9QP4LJ9klAOzOYfu2WDv08b9RzJjSq=0A=
BleXHh9z8pRV+AYrAlEjWMP5BiFK3P1p1gtbG2qIaSnh41yt6wOmj5rL69ufFFUs=0A=
CIXqw1jjIxX2fm90zSwxsAro9+r6ApTORtbfC6WP/F4dgkQ/gwRcmC4Ny7wM5RA/=0A=
D20bZUUDAbLMqEB2i4h53ycAnDqLDy68gmmlVxr2x+M72g1o96JRE2HLY0DAT99/=0A=
p02GTa7P/UpvpGFJVq2986oJt/yI6qcyRarqghxO/1MqAxj9Z8VQJq7K3Miu2htC=0A=
nn5OwqjN0p0EQAGFZG+CYEymKEnWY1dHFB/VaNExOjQ1AI1xgeo/VIPRCt5/LhQR=0A=
/dLR+dghTnKF8l8AEQEAAbQlWmhhbmcgWGlhbyA8eGlhby56aGFuZ0B3aW5kcml2=0A=
ZXIuY29tPokB1AQTAQgAPhYhBMhrohy3XE01gvdPGBsKbHBIZwsSBQJeAHueAhsD=0A=
BQkB4TOABQsJCAcCBhUKCQgLAgQWAgMBAh4BAheAAAoJEBsKbHBIZwsSfEAL/3/e=0A=
a2ZhuYwyV1wNI69z0xkRavJxGU5Yhxl8SpBTMf+BYtIeRXjajAp1SC4DoFCNkQlw=0A=
9sFAbMUJEF5nvmKri1iFiFuhQ8fBzOgDUqJGBpJERNOOsxA1BsJo5gNaa4jrhzCF=0A=
8l1IB3w7rp+EdiljH64kpwbMJU5VsXCkBveQAutL4agLGYpXdACUeJmAbmuF5Aqo=0A=
vdD3sqmtpK+sDZeQv3XmZHBTgvvIbodmNmHfwZ1P0T6TZxkz+w1Poso/18iebDJT=0A=
koB2641CbU1uwFSYAh6Xtfx0XdgRYc0EDtcKGePA7tML5IlKo/XuhWzddKVuDSgs=0A=
WQk9L2yko5cAWmxKr+gZMH4d9mFPdjhKQhaKmrErjUEHPwpm0dVpwHzw4u97RHyB=0A=
ccxt/LpW+iy0jRQlw9aMwmNQSjOzDicufXLCEwqpHFgK4cp8V8I2ApuyHJmdgtdp=0A=
cGj2z6eOxGstxPvsYkznwCXqdi/H2xLyCobb7xbrPtkoOgKD4arhZxXvY9ljmbkB=0A=
jQReAHudAQwAxuWTNTyFF3WCY78cKspC96ep0J8VqpRk62c5NkVvLA0DiAD+OE8A=0A=
z51B9qYVRsu/WWtLUwQpsrXkoGNF9LdiuNegpvJ2zU0bmskN3f9rICp1zWGJXRLR=0A=
JC6+i759arotFbj4i+p4OU+8Bcv6No64hJMOhqpwkjhO/uh0CmwaO4Vte7Zi3Tw2=0A=
dXTLNvjaw/sHA0Y/hpaT+1qAp8X7ovvN0+jvoCoi4M+z6OB2owoBSyyo4Qld2Psf=0A=
zdWyJwv/ODd9AkvsVrRJMK7F1cAPP/yqj47o+31fDWk3vQVpkr2a8KTysS7IS5jS=0A=
CXFt6BQY4/FOae9qjjONil8WTxgHCn56pINK9CmpSkP0ghFVq2lC+Z3nHBmerooW=0A=
N7zRhxn3WCToh8AoWpFgLL9MkjWogOlxQ1q3zTJRR3f8W/1ya0jUjAH4kMnDgPwb=0A=
yJ9sN9k0i44yoCCBVDjxIFeQkWMLqwZO9+36p6NAOLGZszcgI+u8D6lPL25C2cOV=0A=
dT/7NuEcy+evABEBAAGJAbwEGAEIACYWIQTIa6Ict1xNNYL3TxgbCmxwSGcLEgUC=0A=
XgB7nQIbDAUJAeEzgAAKCRAbCmxwSGcLEkr8C/96ujMAmEsMPrZrQ8MdsUG7RVpT=0A=
iWyf+tec2w8jixMQCzrNEImMrbctazLMx5HmTgGtjqmL+XNzSiPuba8Bxj4mFgQy=0A=
Ki9vLKa7HqtoVdl+NdE6JnmH3IhQrLR/KAjZILvO7u7KMQqCcg631xT4p8buixGo=0A=
TfUyypoPdsMgNNHw/xzv4MXgB8nG1SOz1geD0Bt/S57SrKw7lpH4bw8gEoMmXyzS=0A=
nQiq/jbxSvnDE9ZEiwyWg8XGwfFP3bEifF2BPxqM+BiLPwRkJ9Zf25x2BTD7BhL/=0A=
pIzENbgWmTeE/XYZQHMcxCMfnv2l91v8lHr9serIaTEc9Dczi+tdUX5OUdwM1Zt3=0A=
abQULbFfUIMwH6pvn73SKeVmgKYirrDDNTrRl80tqm/aiEe4X42zzonlM4TeRbAI=0A=
ue+d1/tVpYhFeENd+jlsSuh1gAXJwOjPdIGnHJbmeIuEQAbuq3Mt9Z7XjUzC4snF=0A=
7HKfh1eCzhMXQ4H6kLeE2h9X6ec1DkqIeVAu7DI=3D=0A=
=3D7c/X=0A=
-----END PGP PUBLIC KEY BLOCK-----=0A=

--------------B9406BFC5435452D9DD591EF--
