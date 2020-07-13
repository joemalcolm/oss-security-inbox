X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["10972" "Monday" "13" "July" "2020" "15:37:03" "+0800" "Zhang Xiao" "xiao.zhang@windriver.com" "<3f3d2ab5-259b-ab88-c7e4-7cc0efce3e7c@windriver.com>" "242" "Re: [oss-security] Contributing Back" nil nil nil "7" "2020071307:37:03" "[oss-security] Contributing Back" (number mark "U       xiao.zhang@w Jul 13  242/10972 " thread-indent "\"Re: [oss-security] Contributing Back\"\n") "<20200711175842.GA8907@openwall.com>" ("<ea742763-f1bb-bf13-3ecf-f61aaf1e0b43@windriver.com>" "<20200711175842.GA8907@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] Contributing Back" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17903 invoked by uid 550); 13 Jul 2020 07:53:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8014 invoked from network); 13 Jul 2020 07:37:26 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M2dU2ewUnFjsUXQbHTEczoB6Qy3JxpX76uOwX9zgyG5duTK3kuOFtROpfH0v2sevnohWw6TSkWdtQiEeY0DFjPyr6IeO9w5YDGg3lrs9y2OVhyIldGc77IJlLA0f2ex1KH9BT7IkItDVtGGtIgdNcLFjKLZPZKjKOB+YRf/Nq57umWs0ySPTvTAFwrxHrbsMz0GS/j79WIQv8jXa/KidyZfAlKy3WoXc38RwFptWgfZWdewhcsX0/0HOA7CdcqqMElgbd9CmY7EKvkdFR/W1ePv6SrqfFi18kvlviW1pesz8D3QYIm5ic4A0lvvoXo+mtRTO0wjOhwZlKMfJndVcHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l9577M3EwjddLzQ4E98SDPpFarZV2J7B+n92D6Pebwg=;
 b=TyGgbOCFi3dAFQ23cAFDqYFLAk9CdAujjlOX6HkVclDDMOh13GD2v/91GlCqD1ogforf2beXW1oOyRyPBC7xOXZ6KMBSZ9MUN3hk03Z3CPpIzsH0gyCO4qWu5mHJl9NN0G4WgGt0JpATxg9Slrkmbd18MPUbD8ss8JYI3tyHafcJwryohngZC5DnNJXOtH6uNUnrp4a9pCsTqo1mYxkn6Q6p60Ri6s1tGaox1UVcDhcZXzRGFpGQMlQo1EOdp4CIeIh8X1pD9kHv47wWrZKvhBDNui1ZPuquIot3Y3Isp15zGAaKyzDcUSLDxO65fSHJk8WrVmEF5IHJE58Na9h+yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l9577M3EwjddLzQ4E98SDPpFarZV2J7B+n92D6Pebwg=;
 b=jTBFuKA3I19Wa5JygLAolEOTOuLxh2BiauahBrRRQCWI0IDmi0oQetVja1EdhOeHHn8nL8H12fL7g52Zp+H3sIP1BktgTjqH028HAu9LpUWoMQoZSj45Oksf1kCfA0NKuFuFC0DHph7Yo3+moclZ77WRTeskzXXAFoVcAIlyagw=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Cc: xiao.zhang@windriver.com
To: oss-security@lists.openwall.com, Solar Designer <solar@openwall.com>
References: <ea742763-f1bb-bf13-3ecf-f61aaf1e0b43@windriver.com>
 <20200711175842.GA8907@openwall.com>
From: Zhang Xiao <xiao.zhang@windriver.com>
Message-ID: <3f3d2ab5-259b-ab88-c7e4-7cc0efce3e7c@windriver.com>
Date: Mon, 13 Jul 2020 15:37:03 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
In-Reply-To: <20200711175842.GA8907@openwall.com>
Content-Type: multipart/mixed;
 boundary="------------D91352F5102672FF85A5A8A7"
Content-Language: en-US
X-ClientProxiedBy: HK2PR06CA0022.apcprd06.prod.outlook.com
 (2603:1096:202:2e::34) To BY5PR11MB4353.namprd11.prod.outlook.com
 (2603:10b6:a03:1b9::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-Originating-IP: [60.247.85.82]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: df529850-21a3-4454-06a6-08d826ff8e17
X-MS-TrafficTypeDiagnostic: BY5PR11MB4484:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<BY5PR11MB44849E1C3BC66778AD113B2690600@BY5PR11MB4484.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	9x27UkJep2WbpJsgo4G9njdVZwW9WlfAzoX8ak4dDPqSd1Qb55V2QRhHTjaVz4/+i6RijP06YMUunxl81sALotGZJAICBaRBx0cbLG9zhauL/cRth9rWy8SBcs/UfNqAO9d6F8HZzSDbDsu6GenRMz3egPMnH00UvjLXYP2Hc1lGxQzpRm35KdkUV+JjyYeBBNzQAtb3pkbfF3jRvV34yMqmt6RC2mq1SallY4rIEn9PEAiScUgxXprz96nTRFzeVal/FTOyGes9dmz3p/CMRokU7p1syPOzdKeq/FxsjJG8fWaggbqI7XIXfRpqkln2/uE3M6IGqHOJpacWcvx3pA80Ztxg/Gmliwh7mQSU8hl7r97xLKkqQlUpDrjygEiX5+uvqqcEfennz2uCa7/0vAB4WrQksC+OyEpsC0TSgQ19Bzx1RItSyZ8yTqBB9O+VHXXx5CW1MUuRN8Cn8960no/NDJlaF3wkzdpE+r32c1EFafRC/uiiWrW9rpbsIylxhq2IxS6Du+PLQXCaS+EjTA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB4353.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(366004)(16526019)(166002)(2616005)(186003)(956004)(83380400001)(83080400001)(15650500001)(66556008)(66476007)(86362001)(66616009)(21480400003)(66946007)(6486002)(8676002)(36756003)(107886003)(26005)(16576012)(6666004)(498600001)(52116002)(2906002)(6706004)(966005)(31696002)(5660300002)(6916009)(235185007)(31686004)(4326008)(8936002)(33964004)(78286006)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	oR0rovdnHKaM68HeSRJW4+8/fvj4mcaz9L5qkwpV9iEaFNplWZ5NRJEwM4jJ2g3qiR1nI0V2kbObN4li8bd33U3l1OXzEc59DvR6UMZchz5iF7LEU9oTreZNkJKNAPQOPUjlZxwxI7BRETcoFt5F1xXZJIXu1EfawrSUiRQ+W9Kxv5/sL2QB67GEAeQfa8SZLfi0jWq/+ksbXHi/NbyuBEKB9jjBHvSvEKZ8NYFL8fSRAM6mGtFBWHrUOO5IKHbzPDOgEZp23FcaFi3dwoXb5+qjYnXX64Tvrsb43UQzKTdRkjKmsHI94uB/XnzxAZiqlzOXFn1B+qbDCJdEQvTnsN5rJJ7wkOjsA4DDSTP8pTEV2AdGrnet7ODhX89vgY6TC0C2aMC3ZFSlxSNUbpEJBIhXOUsCjTOW5sicfHT1A86Fda8PKU63p5WIbSSLf+E02nEHZGMu+ORpPj5CsDHpfoSMVVdBicpQmW/6flbdzwM=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df529850-21a3-4454-06a6-08d826ff8e17
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4353.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2020 07:37:11.8163
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LPkW4udACCERTnH1VaraKMeEWFissKLB6Kd4NXCqnpFsfLyUk4mPhZ3E725uHHDvSYeEWjzsuFLqjkThPaoheSHVVCsi2ZdkR4cMCYoExFc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4484
Subject: Re: [oss-security] Contributing Back

--------------D91352F5102672FF85A5A8A7
Content-Type: multipart/alternative;
 boundary="------------2F9F3E966625F1BECDDAE7EF"

--------------2F9F3E966625F1BECDDAE7EF
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Alexander,

=E5=9C=A8 2020/7/12 =E4=B8=8A=E5=8D=881:58, Solar Designer =E5=86=99=E9=81=
=93:
> Hi Xiao,
>
> On Thu, Jul 02, 2020 at 05:33:20PM +0800, Zhang Xiao wrote:
>> I am an engineer of WindRiver. Thanks for Alexander's remind about the d=
istribution and we would like to "backup" the first item of the administrat=
ive list:
>> https://oss-security.openwall.org/wiki/mailing-lists/distros#contributin=
g-back
>>
>> 1. Promptly review new issue reports for meeting the list's requirements=
 and confirm receipt of the report and, when necessary, inform the reporter=
 of any issues with their report (e.g., obviously not actionable by the dis=
tros) and request and/or propose any required yet missing information (most=
 notably, a tentative public disclosure date/time) /- primary: Oracle, back=
up: vacant /
>> Please let me know how we get started helping out.
> I've just added Wind River as backup for this role.  Please watch for
> issues on which Oracle (and others) haven't provided an initial response
> to the reporter or where such response is incomplete (per the above),
> and provide your own response (CC'ing the list) whenever that happens.
Thank you, we will make it.
>> And, I have another point want to discuss. As we know, sometimes, the CV=
E and NVD website don't upgrade their web page timely. For example:
>>
>> the security maillist had an encrypted mail called "curl: overwrite loca=
l file with -J" in 20200617. It was a "pre-notification about a security ad=
visory about to ship next week in sync with our next curl release", for CVE=
-2020-8177. On curl's git tree, that very bug did been fixed and released i=
n 20200621:
>> https://github.com/curl/curl/commit/8236aba5854
>>
>> But, till now, both cve.mitre.org and nvd.nist.gov still mark this CVE a=
s "RESERVED":
>> https://nvd.nist.gov/vuln/detail/CVE-2020-8177
>> https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2020-8177
>>
>> So I wonder if that is also an contribution to remind them, if so, any a=
dvises to make it? And If it ca be defined as an contribution, we can take =
it. :-)
> We've received some responses in this thread regarding the specific
> example above, but I'd like more general responses please.  Is there a
> general task Wind River can reasonably help with for getting CVE details
> published for issues that pass the distros and/or oss-security lists,
> and how exactly could they help with that?

Actually, we are glad to make it for some customers are also pay
attention on these official web pages. We suppose it will be easy to
make it through the "notify a vulnerability publication
<https://cveform.mitre.org/>". But after I submitted the request I just
get a reply as "This CVE ID has been reserved by the CNA Hackerone and
we are currently waiting on them to submit the details." Seems only "the
CNA Hackerone" can make it. I have no idea on how to notify the "the CNA
Hackerone " to push it. :-(=C2=A0 Anyway, if possible we are glad to make i=
t.


Thanks

Xiao


> Thanks,
>
> Alexander

--------------2F9F3E966625F1BECDDAE7EF
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>Hi Alexander,</p>
    <div class=3D"moz-cite-prefix">=E5=9C=A8 2020/7/12 =E4=B8=8A=E5=8D=881:=
58, Solar Designer =E5=86=99=E9=81=93:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:20200711175842.GA8907@openwall.co=
m">
      <pre class=3D"moz-quote-pre" wrap=3D"">Hi Xiao,

On Thu, Jul 02, 2020 at 05:33:20PM &#43;0800, Zhang Xiao wrote:
</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">I am an engineer of WindRive=
r. Thanks for Alexander's remind about the distribution and we would like t=
o &quot;backup&quot; the first item of the administrative list:
<a class=3D"moz-txt-link-freetext" href=3D"https://oss-security.openwall.or=
g/wiki/mailing-lists/distros#contributing-back">https://oss-security.openwa=
ll.org/wiki/mailing-lists/distros#contributing-back</a>

1. Promptly review new issue reports for meeting the list's requirements an=
d confirm receipt of the report and, when necessary, inform the reporter of=
 any issues with their report (e.g., obviously not actionable by the distro=
s) and request and/or propose any required yet missing information (most no=
tably, a tentative public disclosure date/time) /- primary: Oracle, backup:=
 vacant /
Please let me know how we get started helping out.
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
I've just added Wind River as backup for this role.  Please watch for
issues on which Oracle (and others) haven't provided an initial response
to the reporter or where such response is incomplete (per the above),
and provide your own response (CC'ing the list) whenever that happens.
</pre>
    </blockquote>
    Thank you, we will make it.<br>
    <blockquote type=3D"cite" cite=3D"mid:20200711175842.GA8907@openwall.co=
m">
      <pre class=3D"moz-quote-pre" wrap=3D"">
</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">And, I have another point wa=
nt to discuss. As we know, sometimes, the CVE and NVD website don't upgrade=
 their web page timely. For example:

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
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
We've received some responses in this thread regarding the specific
example above, but I'd like more general responses please.  Is there a
general task Wind River can reasonably help with for getting CVE details
published for issues that pass the distros and/or oss-security lists,
and how exactly could they help with that?
</pre>
    </blockquote>
    <p>Actually, we are glad to make it for some customers are also pay
      attention on these official web pages. We suppose it will be easy
      to make it through the &quot;<a moz-do-not-send=3D"true" href=3D"http=
s://cveform.mitre.org/">notify a vulnerability
        publication</a>&quot;. But after I submitted the request I just get=
 a
      reply as &quot;This CVE ID has been reserved by the CNA Hackerone and
      we are currently waiting on them to submit the details.&quot; Seems
      only &quot;the CNA Hackerone&quot; can make it. I have no idea on how=
 to
      notify the &quot;the CNA Hackerone &quot; to push it. :-(&nbsp; Anywa=
y, if
      possible we are glad to make it.<br>
    </p>
    <p><br>
    </p>
    <p>Thanks</p>
    <p>Xiao<br>
    </p>
    <p><br>
    </p>
    <blockquote type=3D"cite" cite=3D"mid:20200711175842.GA8907@openwall.co=
m">
      <pre class=3D"moz-quote-pre" wrap=3D"">
Thanks,

Alexander
</pre>
    </blockquote>
  </body>
</html>

--------------2F9F3E966625F1BECDDAE7EF--

--------------D91352F5102672FF85A5A8A7
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

--------------D91352F5102672FF85A5A8A7--
