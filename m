X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5071" "Tuesday" "28" "July" "2020" "10:46:22" "+0800" "Zhang Xiao" "xiao.zhang@windriver.com" nil "108" nil "^Cc:" nil nil "7" nil nil (number mark "        xiao.zhang@w Jul 28  108/5071  " thread-indent "\"Re: [oss-security] Contributing Back\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Contributing Back" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19526 invoked by uid 550); 28 Jul 2020 07:50:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5935 invoked from network); 28 Jul 2020 02:47:00 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W7dju/KKMLDglm7iiDXZQBEFdpc20JkGCGUBC4GX6ziv4miFXJ8hFW3/LK/ryeT8mP79KbVdCyFixkdZ34BzLOMoxlGqIEJSrn/LFH0RA5732gJilRODAwn4nSKc3WjDB8wvy/JU4ntg/a1dtGjWWl3cr/frka9pJ86QBEJhHMVx/FfgvC6ryARVM16xZ6fDyGtDUTuCk827/klmC74eBHh9TpN2B+JI/rqN17ZQOk0jNbzvEAPV2IzfKq9Kr4igFoGq59vD8fgBhtF+BGL/X1F8CZGeYIhPwWl1u8RSWzZpNJ21DfD6pWYrCpvCF6XOzh3LHSapipMs/sEA1tpv1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cZiXUfzUVXXsZDibxrTa3s42jn7/wJfbWQ9/ATXlWnU=;
 b=Aez8Gib4+DDPc7mHhkG8jLpGhK9HBAkT5MaOtpkaMMZ3+ukFmJ3VgRgEW3zt+v3S8rR1P6LGo9tLOIVTOEdwo4xy3ZGWCeJhKhsYPiVXvUje2i+XJ+gwhDgLd9I73HKI7QScaXzzjGPS6QTBc8YLO5iQigwoYUley98fuJ14qlyCPdUj/Ne5EOwh37R7l76ak9NxxO3JOqxizEsC6Dw5afdkPHbiXSsjhx2hCQF5O3vas4ZynXB/DHkT3T695wcw+pC6piSl7MEES/6kTM0m62Nbs+/yhi5Ssrn22dQ+18GwS2hbSNOv56K+0gtEd+ReqKWTh9NzMCzCTwLDu7j2aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cZiXUfzUVXXsZDibxrTa3s42jn7/wJfbWQ9/ATXlWnU=;
 b=YSiEx43PGPyDaxINbXF2HjbBGvIJoHR3GyfBTJQwlosdDG4ryeCEnLBvQQ6jcQz3OP9bx0J7b6rWtO77moypx2lvc1NiK4DKMC64LEDNqi+rAqlhjQ/BoFA3aPxzRZzZROSf+imhI1TmFTNtGdEud4vHBF8ipJRhXZo2/Ej0q+A=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
References: <ea742763-f1bb-bf13-3ecf-f61aaf1e0b43@windriver.com>
 <20200711175842.GA8907@openwall.com>
 <3f3d2ab5-259b-ab88-c7e4-7cc0efce3e7c@windriver.com>
 <20200720184054.GA11135@openwall.com>
 <CAC5HUDxonM84K=q2+gsVhOuYBuM_dESB5VZqb5kDAQ2zYy=U_g@mail.gmail.com>
 <20200723115645.GA20752@openwall.com>
Message-ID: <c7838a1a-1894-4679-06fb-23006f526bdc@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
In-Reply-To: <20200723115645.GA20752@openwall.com>
Content-Type: multipart/mixed;
 boundary="------------9770C1BB31696E337296C27F"
Content-Language: en-US
X-ClientProxiedBy: YTXPR0101CA0032.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b00::45) To SN6PR11MB3023.namprd11.prod.outlook.com
 (2603:10b6:805:d3::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-Originating-IP: [60.247.85.82]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 092cc280-ee99-4326-5a6b-08d832a07827
X-MS-TrafficTypeDiagnostic: SN6PR11MB3535:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<SN6PR11MB3535E0630F2179350B7835CA90730@SN6PR11MB3535.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	GqgvrcQUxpfrKzwmF8ZP0oNMifLEhy8tT7dutVuUAB5SHM3n3a0XY/mMRap99U6Wwg50np/Bf4qcr5+cmLzO5VaLkcHyFN0e5hh++wqCv2Sd55ukXHI6URz/nQ9FVfQgYI8CWoqMfNo3IJritp7Oa1xQhu2/Q8u5UPSMeVdY/tijJ7lcbxOKl+PqkKwIpV4Lev80mun/bOdX6duxDbF5BuHSi1FDqoUdD72Vkqrr+nWgOPvGnNis84EoVColZrhB38kapicgErV/ToYjpbAi82Ihm+gJM2XbZSDwnx+3eNLK7G5NPpT9ZF5J8YlFb9giGKTBibijZM2OqDKqKVUyJMrdYoJbge2pFVGx0KrkSeP4XrqLSeihxW6e5h7ZZ1SL4sRYTta/Nt6S3jb5f0qUetJKmqBsRByJUfL2T4+0CGzFqCp32dvhDOiSuDFxK/AeVl3qNpU97do5+OzrJL//5wN8JPcOYpMFPOJi4weTZ+4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR11MB3023.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(136003)(346002)(366004)(376002)(39850400004)(396003)(956004)(316002)(4326008)(31686004)(26005)(66946007)(16526019)(8936002)(36756003)(66616009)(186003)(66476007)(31696002)(66556008)(86362001)(107886003)(2616005)(16576012)(6486002)(8676002)(6916009)(33964004)(6706004)(2906002)(21480400003)(83380400001)(52116002)(6666004)(235185007)(966005)(5660300002)(478600001)(78286006)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	uVRiLjjKXunXNFMSwZ6goGAyzXww6jk90csgEXjTIyNyjWT+9tNlirvUrUFF9Jzpxdd1a7rEFDXMcUiG+9YkqHiMGig8W0CcIjsTt5zuDy24nYDIgmYE1q732WqPdvCTSxEnS6Jgqg+ubcmlvxzbC9tXMoYRpqjFnUWfejUZrsf93U7LxRP6AVDn8ZQh13oSE2/wHZoFbs9cy9TInXRqvIDnHQqxXRykPEy26nb4Ku5A8rufyZElN0umMQN2qgwXdRCoPklbtdDUMhyqzdXuQP9lUcojs0IUGeN2ediyWzLDiaD5owyqNjPTCEby6J2qGg4a3FfTt2Mh/kzIbH0LpQVzcfgCasMZDJ5IG25DaWBmgYIYbt+5SEmX2ODYLmKumDavT8gr9R4QV1vPRMBnaiT7BWeNEjDMIfZGaKRUfudG5jkiccCyOuJyiLZr1V+bPvBtzYLEjEvXDd6T03RDkV21UNqpTSTCnI2DfnAKzAk=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 092cc280-ee99-4326-5a6b-08d832a07827
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3023.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2020 02:46:46.6433
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uw15hPdSsi/hB/j6BGSiJFe7g8yC+A2/BltPycWgEZxrJO9kagm6Vk0Y49bNExUAlJ7wsgMQPD2/0a63llFEGwBM7voLNikygt4o2X+H7KI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3535
Cc: xiao.zhang@windriver.com
Date: Tue, 28 Jul 2020 10:46:22 +0800
From: Zhang Xiao <xiao.zhang@windriver.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Contributing Back
To: oss-security@lists.openwall.com, Solar Designer <solar@openwall.com>

--------------9770C1BB31696E337296C27F
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


=E5=9C=A8 2020/7/23 =E4=B8=8B=E5=8D=887:56, Solar Designer =E5=86=99=E9=81=
=93:
> On Thu, Jul 23, 2020 at 01:51:17PM +0530, Mohammad Tausif Siddiqui wrote:
>> I think the ball is on the CNA: Hackerone side to get it published to
>> MITRE, so that they can show it up on their page.
>>
>> CNAs are provided with weekly reports by the root CNA: MITRE, which lists
>> Reserved But Public "RBP" CVEs owned by that CNA, irrespective of whether
>> the CVE was assigned on distros list or elsewhere. That closes the remin=
der
>> loop.
>>
>> There's no pull request for CVE-2020-8177 at
>> https://github.com/CVEProject/cvelist/pulls
>> We cannot determine if they used the alternative, web form:
>> https://cveform.mitre.org/
>>
>> You may want to reach Hackerone from the CNA contacts
>> <https://cve.mitre.org/cve/request_id.html#cna_participants>, for this
>> exception of delay.
> Most of the above is once again too specific to the given CVE ID,
> whereas we need a general understanding of whether the task Xiao
> proposes and volunteers for is worthwhile or not.  I'd appreciate a
> direct answer to that.
>
> Do I interpret this paragraph correctly as implying the answer is no? -
>
>> CNAs are provided with weekly reports by the root CNA: MITRE, which lists
>> Reserved But Public "RBP" CVEs owned by that CNA, irrespective of whether
>> the CVE was assigned on distros list or elsewhere. That closes the remin=
der
>> loop.
> In other words, CNAs receive their reminders from MITRE weekly, so
> there's no need for anyone else reminding them, correct?  However, can
> it happen that MITRE wouldn't recognize a CVE ID as "Reserved But
> Public", continuing to treat it as merely reserved, in which case there
> would be no reminder to correct that?  Could Xiao help with this?

Till now both CVE-2020-8177 and CVE-2020-8169 are still "reserved". I
believe it is valuable to remind them and I am glad to do it, but I just
realize I don't know how to make it.

I tried two methods but none of them works. Anyone can give me any
advises to make it?


Thanks

Xiao


> Alexander

--------------9770C1BB31696E337296C27F
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

--------------9770C1BB31696E337296C27F--
