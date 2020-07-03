X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6725" "Friday" "3" "July" "2020" "10:06:55" "+0800" "Zhang Xiao" "xiao.zhang@windriver.com" "<0a64f380-fa28-2b60-5710-cd3d556949ca@windriver.com>" "161" "Re: [oss-security] Contributing Back" "^Cc:" nil nil "7" "2020070302:06:55" "[oss-security] Contributing Back" (number mark "        xiao.zhang@w Jul  3  161/6725  " thread-indent "\"Re: [oss-security] Contributing Back\"\n") "<alpine.DEB.2.20.2007021325170.16951@tvnag.unkk.fr>" ("<ea742763-f1bb-bf13-3ecf-f61aaf1e0b43@windriver.com>" "<CAKgU3W_1sg2DLq3_H2hs6QTb0sK=7by7f8bbkhdjZia6zStoQQ@mail.gmail.com>" "<alpine.DEB.2.20.2007021325170.16951@tvnag.unkk.fr>") nil nil nil nil nil nil nil "Re: [oss-security] Contributing Back" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14047 invoked by uid 550); 3 Jul 2020 02:23:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7870 invoked from network); 3 Jul 2020 02:07:18 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F9/WZVBvyCg364iiaUtkhAK8x6mXz90Oc9H4O0IkKuC297r9tYlzpNBTdnSerk8bYoQPh4X/YTYMIOTca3Xs6xI/uFXhVIAnhHPeAuOTD1aS/DL4TPAAt0K1DGjfz38LP/W9J626RWtvCI7J1AL1HfPrLw4H6Ge+Irkxn8vmdtdtbyOxDHxGQzGx3tTpzpFucK9kedTqwEOFB+/cJqyCM1cMA1BVYisATsHvJw8j3sY+J1iY89J/JH7++uqAu4NseNvmfvn5I9JQjWHiR+/89X1AbOlCbhPflEmon4j2K+mVsl3luShfLjzr5OJgWKfulN3fiIL1dWeDHU6cCkaSqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TMluy8yC8gFTGrSQvNPbd3GQC8XTBQRTt9IjJ+vpPfc=;
 b=Er/hO36NEl92pqfx07KEF0lcEDx8ptgXyPXjlmfBUPVsRVqQruMqOxQer6f+fkSeIULX1wdoTBVZgyEPC7+XTqToD5xNPFgWlzXJ/sLg1rDJXfQAtuiol4ygrE/wgzJFf5LnkvaGE38a7x6NC+0wXuNG5z5YCtS7JmaVw+auXYlXrvGPbgYl4Iq54kz0BZrqy6BRNqtrF4+GvapW11qFPOMrb4IECvALE8Buo8d8DYOJGsr3ItIaJNYUU006WzlrysWS65ToG55boiADoucSeUexwr4Gw4Jwe8owIeuM4MurjKnw27FEPs6vR4PuneanmAJuT7loZLx2FYXXdcNc/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TMluy8yC8gFTGrSQvNPbd3GQC8XTBQRTt9IjJ+vpPfc=;
 b=d0vwH9w/xRiCSAnf9Ilqf6XWLXWvD2nr5M1IR1nzV2XAb0BYsj2apUWuSsgpxijzKLHZY+MGI0eE3zijpco/vllCyPuMBIojyGw86DlFC+Qoabpm56kQy02ZqcMCYNxGeJy8GZmtMGlsfxllXB/oalqJsKVKHbJJHkqAFxZM0no=
Authentication-Results: openwall.com; dkim=none (message not signed)
 header.d=none;openwall.com; dmarc=none action=none header.from=windriver.com;
References: <ea742763-f1bb-bf13-3ecf-f61aaf1e0b43@windriver.com>
 <CAKgU3W_1sg2DLq3_H2hs6QTb0sK=7by7f8bbkhdjZia6zStoQQ@mail.gmail.com>
 <alpine.DEB.2.20.2007021325170.16951@tvnag.unkk.fr>
Message-ID: <0a64f380-fa28-2b60-5710-cd3d556949ca@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
In-Reply-To: <alpine.DEB.2.20.2007021325170.16951@tvnag.unkk.fr>
Content-Type: multipart/mixed;
 boundary="------------F04C616E2217E17FECE575D8"
Content-Language: en-US
X-ClientProxiedBy: HK2P15301CA0008.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::18) To BY5PR11MB4353.namprd11.prod.outlook.com
 (2603:10b6:a03:1b9::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-Originating-IP: [60.247.85.82]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 93d38c12-91d7-4d02-629f-08d81ef5c80a
X-MS-TrafficTypeDiagnostic: BYAPR11MB3560:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<BYAPR11MB3560704AD84AD65CB0E9DC99906A0@BYAPR11MB3560.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 045315E1EE
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	H1O5VF2oMba5UglPaZFtwKnlua2oMGcSmN1EnYAEPClKwc65lD0+AdB/Ohvnk4Pq7hEh2iQPO/FZ1nUlvXN5sQSqX2NQ8P4GaE9v2HNrMxc40DGHSngUGU8oY4sc0tqRyf+MCnoLla8maXe9ip1wmmgcGY4T8dLb87Ybdd8cw+YHTOddQVVLcu04qaXeLb9m72RPfT1RlhCtB7UQd1bO+OApP1aWgR6RzZq08V3edTWRbWeTbKP8PNNKolAlVPGRI3y8BuyA1NXa7bQmZCdQhcJpWibxbw3vvChm7mUFKLrczEptrAhV0Vfto0CalBI8iyQ+XYPG0dNBUo8M8C1xkzTAG7wjVRPA/1VWK3MkEfkBL595ZrFaLQSEHL+6VKEu3d1/pLXuIsAtru9Nwm/kxRxXOif1vpNe+D7MuYN3vp2JbaaOj8PMKZgwsm9081tBTpbmkVzIsJgmp2AMVRicaEnhqyL9iT4qhfTCuh4I0FsjVClA7goTPdDFWr/KR2d7feY3efHpsIVhf3Ctqe7NfA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB4353.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(39850400004)(346002)(376002)(396003)(366004)(136003)(166002)(86362001)(33964004)(6706004)(4326008)(186003)(21480400003)(6666004)(83380400001)(2616005)(956004)(31696002)(31686004)(478600001)(52116002)(21615005)(316002)(66476007)(66616009)(66946007)(6486002)(966005)(66556008)(26005)(110136005)(8936002)(235185007)(16576012)(2906002)(5660300002)(36756003)(16526019)(8676002)(78286006)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	1f2DjXA844DRKo2cLGungwiMTMu1q8KryRrxvaIinvvSkYVTpRiEPKNJkP1bqt1LgUDOLtYSYL8KV25+JVWzg2kojfV0FTZ0ip33UK8kI7iHXBzpLVnfJTLanQr7dDoLS1H0xBLdP0HkPUz08PQh/5axDKCQg1dpdFx0Zs6HM2zI6Fl4wZvy5WZsTKc6HbjK81vqGc8NAV7YRf1OuDjWbVDbmoYDDH9EKz91hJPXykNfFV77J2nCZ+DHynbRZW75cP71y03ebtEY6b7GHysQyxoT1ec4ffhMWWxUnYNxhphabk6S2OmJZG63bLaKMr+Z0yu/gbmlimjt2MCgWiF+O5/2bEvvuGujxdU+GGbp/2DMS2OKTVViZhAJ2gvlyDFCa6wzT5Xoqgu+p1weGxb3gvS4YAFjimSXH6ZePPd16R2BguxPLlvlCHgaOLE+eRqAKtJ1Bi6cqwuywLA0KTkQYLoCWhb8I2yBay9JrY+KsC4=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 93d38c12-91d7-4d02-629f-08d81ef5c80a
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4353.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2020 02:07:04.6628
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ujnFCo2Mlry9kxr9K9U+WeNluyQMM6rR5DKNKfWi+9YXL0IWO179jrwm//W8A9r1tq2d4Hnv/03PdgIxILt9tKoUk+v93Gl7afxxkCAPs0U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3560
Cc: xiao.zhang@windriver.com, Solar Designer <solar@openwall.com>
Date: Fri, 3 Jul 2020 10:06:55 +0800
From: Zhang Xiao <xiao.zhang@windriver.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Contributing Back
To: oss-security@lists.openwall.com, Daniel Stenberg <daniel@haxx.se>,
 Francis Perron <francisp@google.com>

--------------F04C616E2217E17FECE575D8
Content-Type: multipart/alternative;
 boundary="------------23A45407575CD9ACD8C65243"

--------------23A45407575CD9ACD8C65243
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I haven't remind MITRE before. While they have an interface to make it:

https://cve.mitre.org/about/contactus.html

See the forth topic called "*To notify us about a vulnerability
publication*". I just remind them about CVE-2020-8169 and=C2=A0 CVE-2020-81=
77
with it. Hope it works. :-)


I will check the status of them on CVE/NVD website these days.


Thanks

Xiao


=E5=9C=A8 2020/7/2 =E4=B8=8B=E5=8D=887:34, Daniel Stenberg =E5=86=99=E9=81=
=93:
> On Thu, 2 Jul 2020, Francis Perron wrote:
>
>> =C2=A0this delay may be possible due to many things, but the simplest
>> possibility that comes to mind is that Daniel (here cc'd) from H1 has
>> only gotten a reservation of CVE number, and he and MITRE have not
>> triggered the submission yet.
>
> In the curl project we (nowadays) request and get CVE IDs from
> Hackerone, and we've subsequently told them to publish these two
> recent curl related CVE IDs when we made them public to the world - I
> suspect this is just them being a little slow. We don't have any
> direct contact with MITRE.
>
> All details regarding the two recent curl flaws are here:
>
> =C2=A0https://curl.haxx.se/docs/CVE-2020-8169.html
> =C2=A0https://curl.haxx.se/docs/CVE-2020-8177.html
>

--------------23A45407575CD9ACD8C65243
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>I haven't remind MITRE before. While they have an interface to
      make it:</p>
    <p><a class=3D"moz-txt-link-freetext" href=3D"https://cve.mitre.org/abo=
ut/contactus.html">https://cve.mitre.org/about/contactus.html</a></p>
    <p>See the forth topic called &quot;<strong>To notify us about a
        vulnerability publication</strong>&quot;. I just remind them about
      CVE-2020-8169 and&nbsp; CVE-2020-8177 with it. Hope it works. :-)<br>
    </p>
    <p><br>
    </p>
    <p>I will check the status of them on CVE/NVD website these days.<br>
    </p>
    <p><br>
    </p>
    <p>Thanks</p>
    <p>Xiao</p>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">=E5=9C=A8 2020/7/2 =E4=B8=8B=E5=8D=887:3=
4, Daniel Stenberg =E5=86=99=E9=81=93:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:alpine.DEB.2.20.2007021325170.169=
51@tvnag.unkk.fr">On
      Thu, 2 Jul 2020, Francis Perron wrote:
      <br>
      <br>
      <blockquote type=3D"cite">&nbsp;this delay may be possible due to many
        things, but the simplest possibility that comes to mind is that
        Daniel (here cc'd) from H1 has only gotten a reservation of CVE
        number, and he and MITRE have not triggered the submission yet.
        <br>
      </blockquote>
      <br>
      In the curl project we (nowadays) request and get CVE IDs from
      Hackerone, and we've subsequently told them to publish these two
      recent curl related CVE IDs when we made them public to the world
      - I suspect this is just them being a little slow. We don't have
      any direct contact with MITRE.
      <br>
      <br>
      All details regarding the two recent curl flaws are here:
      <br>
      <br>
      &nbsp;<a class=3D"moz-txt-link-freetext" href=3D"https://curl.haxx.se=
/docs/CVE-2020-8169.html">https://curl.haxx.se/docs/CVE-2020-8169.html</a>
      <br>
      &nbsp;<a class=3D"moz-txt-link-freetext" href=3D"https://curl.haxx.se=
/docs/CVE-2020-8177.html">https://curl.haxx.se/docs/CVE-2020-8177.html</a>
      <br>
      <br>
    </blockquote>
  </body>
</html>

--------------23A45407575CD9ACD8C65243--

--------------F04C616E2217E17FECE575D8
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

--------------F04C616E2217E17FECE575D8--
