Received: (qmail 28503 invoked by uid 550); 8 Nov 2023 16:55:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9291 invoked from network); 8 Nov 2023 15:51:40 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FW8EMd3U27vIeezy6SIz/HMd1JXII7gNKtvLcVuUdte9e7M4LUYIipEetKKwnLv3xwbEAtl2w5T4Ru4/WtZeVeoi79GiNvIV0D+Rc3xsZ8v//JmHElHrXCMsGO83SbPd/AyD5/LMtQciOnqvlFXiJiM7lOH3RFd8qF+MScv1K6xqykfyyOi1yhePvJNyl3inxI+msq0Dsh85yiZ2M3ViLYQjeCOJ225Y2LtBHI2ZDrN1piE9P7PJDUbqu+LbpOcQD0JkO/QzJXdFwHvrCBO5Pp5ScFvKkew7fZ5mEno3LmlyK3txTK9WfWdHFfv80lBR6HmUMLXCZ1tamUR3vwEQiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ibpsmpuPS0SY7n64KtiHJYaTQYDKriRqTZfjrUoD8cA=;
 b=MLMILk9TMmOevxcQJMdhTuFjvk8JbX12O+YZiW4rvbIPaD2I40se6Y9XkELza0U9Ls84qPzgnJMhqrno4hm6b3rmBHiyEcGdGNrbbfRbRX9GG3oNIarI7jLPd2+uRrr/TtjzxSUpcNXdfGjaMjF4SzeqqrvxpXmvF/8C/r0Y1ebaWNBZgPLkU+uwjH21kOc+KL4KMvLQMbz6V1kaBpyIvBV1GTGkT669Zli8p/sqwehkQh/1Wtf2LF7IzYdswIkNsLtU94AMBBjm+No/dJlRCDSLJKWOHIKw0o9a9dFJURTm7VIH3YHc0gOmy1dO5Od1dYO2LLJ9DkBeve/45ST1RA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=census-labs.com; dmarc=pass action=none
 header.from=census-labs.com; dkim=pass header.d=census-labs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=census-labs.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ibpsmpuPS0SY7n64KtiHJYaTQYDKriRqTZfjrUoD8cA=;
 b=iB0JMOlsxgMF05fnKpKWnnpSMb7Dw1tLHhydsikZGdXTZQfg2j7ytrgJ/Do2VJ4wqB9NogtVBQKqUQWJux+2KEER3nGap0FdtFqYo4yJGf2ggR7Hx58GFFBRUctFoO/z9XTsQkINzFjM7z4hMvTgqLTN4hBluWjRm+sn1QedhINXxMjoO9UE0YBxFNA5QVnFWHAAoEdBxnZSDcvTCLoRGKqxCLnp56kdO9uHzTiWTZUtboUqdScksbN8FV7yLulSEKgz6/yMGuJCDiL4Nf5rJPA51WAwSk6KJe0pPBa/JrgF+fTPNmGnXc9TzLKITkOHMKU6Wwz90q4LhQsHzkIyww==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=census-labs.com;
Message-ID: <f95ff094-ddc0-46b7-8fb3-2bcbd06efacc@census-labs.com>
Date: Wed, 8 Nov 2023 17:51:24 +0200
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: oss-security@lists.openwall.com
From: Harry Maraziaris <cmaraziaris@census-labs.com>
Autocrypt: addr=cmaraziaris@census-labs.com; keydata=
 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
 YmVG8M4I/WY6
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------tEwTPuabF1UfmMd8U0oMu6ik"
X-ClientProxiedBy: VI1PR04CA0135.eurprd04.prod.outlook.com
 (2603:10a6:803:f0::33) To VI1PR03MB2943.eurprd03.prod.outlook.com
 (2603:10a6:802:2f::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1PR03MB2943:EE_|AM7PR03MB6279:EE_
X-MS-Office365-Filtering-Correlation-Id: 32bf31f5-e008-445e-c5a4-08dbe07290fa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	Q/uuOVdFuKexnIgtczN+CJvmOqDQUXQQ22gbZhoYL2rZL2fjE1QxzMa3SVMzXjObvk+tL06HQAMtBUIrK+5xOcn3RRxZLzNETZNsuZSMOVFOIyxBQqmX2gS6nrsxBo0hUi2ZRuL7uzqFPjiwgc1oxS1werOo+P8DiMyoRmo8wteNBHHa+4t3AM4SghGT/ydBvWVyEl6fqUpGJboPktTMl/NajBJ8UV5cATRLXaMxKjUEvD5y1HTTpsBI9LG34Xv8Tijj6w8f7rCBfpJoq6wJcgtmORU43vu9GDUOSVhxZfKN6H5H5YRbW57vZTsRCn3djzTcxZTVRbzBTd56YLyjqrEXutOTNco58YbMA+RsLLBJv+bvDDmatAVv7pcxyKqnz8wrZAQ3htIny01vOH5I4Qk2/4SH9AY1NowfEQTBgwKYtyjmfNGWmYJlSJC6wji+Ir7dRSNdunNlPurkgb6/UpDGb2tdX+lEXEO4q/aTn8AU1FsQxinAV0XQdSonuAhec3zUSGM21xvLflt6E3dP6qOVMV5Cd/JNkRymld2hLuPWik1Z1uv+kQ+E3QfPQ/Xh+facT9qZSPqsTX60F9zwJjvrHCVgm/ievVubWL9XR8PJVLWduVi5wi0O/iym0MIzXeasi6FhzY3wAohYD3UY5Q==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR03MB2943.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(39830400003)(136003)(366004)(376002)(346002)(230922051799003)(451199024)(64100799003)(186009)(1800799009)(38100700002)(33964004)(36756003)(6666004)(6506007)(5660300002)(966005)(6486002)(8676002)(8936002)(41300700001)(2906002)(2616005)(31686004)(21480400003)(83380400001)(478600001)(66946007)(66556008)(26005)(6916009)(66574015)(66476007)(86362001)(6512007)(235185007)(31696002)(316002)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Z2hvMEJMMVVicEJtV1FFNDJYWmRuSkk2c25NQm5vNUl5S1VCNmRBK2NNcCtZ?=
 =?utf-8?B?QXBHU2F1YzI3SGI5NHFoaDZrZGt1aUFZQkJlWHlKa0pNNWlZUCtRc0hhRi9B?=
 =?utf-8?B?S25TSmJmdlNvb3Yzc0tOdTI4K0xMcjlKN3hxSjQ0YTdhY2srSDV3dFo4SmFP?=
 =?utf-8?B?Q2JDNm9COGhpVWNoWGdWZ3JXQkFNZHcvZFg4Z3FVT0VoaXFteVNQY0NqZDRM?=
 =?utf-8?B?N3o5SFhtKzdaN3kzdzNoeFpFSVh0VUJjMVV2UDlNTi9hZWVGK25pSDZyTEQy?=
 =?utf-8?B?UnVjeWtGdlU4OGM0WXJDNU1kS1NCZEhXODJuVzFVMy81VEZtc3FHZHN0ZVFQ?=
 =?utf-8?B?WWVxd0JRTU9NODRGU0o3bW1pNC8wWUUzY1NoUHh1R2psVkMvTytjWVFveHV4?=
 =?utf-8?B?RzE2UHYrV3JoVXB4MkVjTEpYVlBUQ3Z3QXF1b2s3NFVZNVZOOFFiWkdNRlc1?=
 =?utf-8?B?aGU5UmJqMWdtdjB1RytYNWQzdGNJT1NvMFB4TTV6anZRTFJwTURCbmIraStE?=
 =?utf-8?B?RnRnaDg0RHNKQTExVE1obTl1a2wzUUsyU3VWT1hLMFZxYXhzQzR0cDlucmlZ?=
 =?utf-8?B?dmYyeW9DTXNwWG1KN3JBSFBOdVZqTGVtdVo3cTBwMDE5aGlZVWIvclhUdG1s?=
 =?utf-8?B?c0s1MUx6MElqbnhiamtTa00rZ3FkZlFEenp2VjMxbWsrNldLSXV4dXVIT0U4?=
 =?utf-8?B?Qm1ZS1lwVzZmNzhXeW1TUnJhcld3OU5Md1RBaWJKUGtSampnV3pNK01RR1Iv?=
 =?utf-8?B?dEx4K05aa2Q4aG1WU2FkNWZ1ZFU2ZFBUMlgzSU9LUTMvR0szc21qUytVcStm?=
 =?utf-8?B?OGgzRXRxckRqMGhnY0lDUnJwbWgxZHp4T1dBcG1TQVVOY2E5Y2tuSUpZc2hm?=
 =?utf-8?B?eU9yTEJ0TVVucHR0Sld5MGY4a2EvQUJjMU1xbEt4b25mUmhPUmc5cXIzZlQ1?=
 =?utf-8?B?anNnREZCRVA4Vy9GdTZFUWdkM1EzbHJJUWw0WVRVc3JHRlE1Y2Q4K2xYTjJM?=
 =?utf-8?B?NlA0bWMvTjlSckF1TW4rdWZXSFg5WHdxQmppWWxEZkpibld2cXlWbFFKWUIz?=
 =?utf-8?B?N3p0WFBPY2JsUUR3WTZXK2wxTE1QYkxjU0s5OVJZa1JuZ0dIeUUybGNRS2tO?=
 =?utf-8?B?OXZvYnd5b2tSNk1MTkI4T056R3lTeXR6N2RUY25sYVNQdkxBRjJJNDVXaFNj?=
 =?utf-8?B?RFd1aE1hZlB3S2I3T1BrT3hrUXNuNTV2bTNRS2FGTVpVTUV4bjFKeU5nRXRD?=
 =?utf-8?B?UURPQ0tGdy9HVlNCZEoxSnF0eXJHbnpsK05lMnFVTWtoSDJ1V29zUFl1eHhw?=
 =?utf-8?B?bDliSmN2K3VFTTV5N0NiU2FEbUVaSVZiV0RveGZMaitNNlZFc1NqZTJ1MklQ?=
 =?utf-8?B?MCsxMlViQ2V2RE9xZC8zcldmNlh0dDRITy9iMmgrZWp6cUN3UlpkcnZJL0g0?=
 =?utf-8?B?ODFrYnUrTDRadUtObFZBeXhxM21GdFNwVWpxWUJxQ2E4cU1lTUxYem5UbnQ3?=
 =?utf-8?B?Z1pvL3I5eE9xTkJBUkpSWllrZ3V1ZFJBQTlXK3QvdnFjQWVtS0h1RnJLQzIr?=
 =?utf-8?B?dnVMSHoycE1vUTF5dnVkZURrYUU2bW92d1pkQUl0NUdOcDNMS2NaeVgrSGRX?=
 =?utf-8?B?RFlHTkpTYXVYdmoyWTQzYithbHZ6ZzQ2ckF0MHlLeWZGd1ZFdWk3YzczZXhT?=
 =?utf-8?B?L2VzVEw3TzMxcEwrVVR3UUVyMHNSQ2pHZXJBME5WLzdIL1ZuOHdzOXlSb2Nj?=
 =?utf-8?B?djI0WXg0SzdFL1ljYk9wbk1CWWFmQVpaalltM08xVlJHWGtzY3k5dlpLQzNZ?=
 =?utf-8?B?TDFRcmxrRzdtSFBQekFCZXR3NFFraGlXUHhMUDNlbjJmMFNmcGR1ZkRzTGdN?=
 =?utf-8?B?YTZVeU9KekljL0Mzc0JMZVFrRGoySll1KzJ5dWVuc2Jkekh1SDBKRTVxNDVy?=
 =?utf-8?B?T1NuZy83MVJ2cHFTVldkanlxRWpobkhENExYb05MNE00eVlPbkFNMXQxTFhp?=
 =?utf-8?B?clBTQXEzUFdFc2dnMk02ajA5SkdrdTFQTEN3d3dDMUVkRFNJU3J6NHl5WGdL?=
 =?utf-8?B?VFpGSkZET1pQQzBCd2JWUS9wWnZUV203cE12SjVSOUNDUGhRWGhQaGp4S0xN?=
 =?utf-8?B?SnF0V2dQZnd1OEpkTFlhMnNLcTNWMVNHQVRYMU5Cb3dFbWJ6ODIrWEplaFU1?=
 =?utf-8?B?dkE9PQ==?=
X-OriginatorOrg: census-labs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32bf31f5-e008-445e-c5a4-08dbe07290fa
X-MS-Exchange-CrossTenant-AuthSource: VI1PR03MB2943.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2023 15:51:26.8530
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: bd994afb-62e3-43df-964e-28422906a618
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uP1Hylyfq4Qj6/59L+8FcNwLOh6xcKQEA/hPl2DrniLmw6r7Ah3+ahgUuEQeuXnHNJjXoVNQxhckrjpHE2nkfJ93Vyzd93jn/Y5kYkrWAe8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR03MB6279
Subject: [oss-security] CVE-2023-46857 - Weak SVG asset filtering mechanism in Squidex leads
 to XSS

--------------tEwTPuabF1UfmMd8U0oMu6ik
Content-Type: multipart/mixed; boundary="------------EZT7Mth0EHnSGrj88gWi4c1n";
 protected-headers="v1"
From: Harry Maraziaris <cmaraziaris@census-labs.com>
To: oss-security@lists.openwall.com
Message-ID: <f95ff094-ddc0-46b7-8fb3-2bcbd06efacc@census-labs.com>
Subject: CVE-2023-46857 - Weak SVG asset filtering mechanism in Squidex leads
 to XSS

--------------EZT7Mth0EHnSGrj88gWi4c1n
Content-Type: multipart/mixed; boundary="------------uCiyYWXMJ6JLHy2yNfJBY7Jy"

--------------uCiyYWXMJ6JLHy2yNfJBY7Jy
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGVsbG8gYWxsLA0KDQpTcXVpZGV4LCBhICJoZWFkbGVzcyIgb3BlbiBzb3Vy
Y2UgQ01TIGZyYW1ld29yayB3YXMgZm91bmQgdG8gaGF2ZSBhIA0Kc3RvcmVk
IFhTUyB2dWxuZXJhYmlsaXR5IGluIHRoZSAiVXBsb2FkIEFzc2V0cyIgZnVu
Y3Rpb25hbGl0eSBkdWUgdG8gDQppbnN1ZmZpY2llbnQgU1ZHIGVsZW1lbnQg
ZmlsdGVyaW5nLiBUaGUgdnVsbmVyYWJpbGl0eSBhZmZlY3RzIGFsbCANCnZl
cnNpb25zIG9mIHRoZSBmcmFtZXdvcmsgcHJpb3IgdG8gNy45LjAuDQoNCkNW
RS0yMDIzLTQ2ODU3IHdhcyBhc3NpZ25lZCB0byB0aGlzIHZ1bG5lcmFiaWxp
dHkgYnkgTUlUUkUuDQoNClRoZSB2dWxuZXJhYmlsaXR5IGFmZmVjdHMgYXV0
aGVudGljYXRlZCB1c2VycyBvZiB0aGUgU3F1aWRleCBDTVMgV2ViIA0KYXBw
bGljYXRpb24gYW5kIGFsbG93cyBmb3IgbWFsaWNpb3VzIEphdmFTY3JpcHQg
dG8gYmUgZXhlY3V0ZWQgd2l0aGluIA0KdmljdGltIHVzZXIgYnJvd3NlcnMu
IE1vcmVvdmVyLCB0aGUgdnVsbmVyYWJpbGl0eSBlbmFibGVzIGFuIGF0dGFj
a2VyIHRvIA0KY29sbGVjdCB0aGUgQ01TIGF1dGhlbnRpY2F0aW9uIHRva2Vu
IGZyb20gYnJvd3NlciBsb2NhbCBzdG9yYWdlIGFuZCBpdCANCmlzIHRoZXJl
Zm9yZSBwb3NzaWJsZSBmb3IgdGhlIGF0dGFja2VyIHRvIGdhaW4gdW5hdXRo
b3JpemVkIGFjY2VzcyB0byBhIA0KdmljdGltIHVzZXIncyBzZXNzaW9uLg0K
DQpNb3JlIGluZm9ybWF0aW9uIGFib3V0IHRoaXMgaXNzdWUgaXMgYXZhaWxh
YmxlIGhlcmU6DQpodHRwczovL2NlbnN1cy1sYWJzLmNvbS9uZXdzLzIwMjMv
MTEvMDgvd2Vhay1zdmctYXNzZXQtZmlsdGVyaW5nLW1lY2hhbmlzbS1pbi1z
cXVpZGV4LWNtcy8NCg0KQmVzdCByZWdhcmRzLA0KDQpDaGFyYWxhbXBvcyBN
YXJhemlhcmlzDQoNCi0tIA0KQ2hhcmFsYW1wb3MgTWFyYXppYXJpcw0KSVQg
U2VjdXJpdHkgRW5naW5lZXINCkNFTlNVUyBTLkEuIC0gaHR0cHM6Ly9jZW5z
dXMtbGFicy5jb20NCg0K

--------------uCiyYWXMJ6JLHy2yNfJBY7Jy
Content-Type: application/pgp-keys; name="OpenPGP_0xD2A107C04EE32300.asc"
Content-Disposition: attachment; filename="OpenPGP_0xD2A107C04EE32300.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----=0A=
=0A=
xsFNBGMy0DkBEADEocSOkI9HEBwx6JqtOk9HxuRaYnY+l7t66FT0gAeW249piuAV=0A=
bUDe2oTj3QZuFQZMWfFjw7zTjAPvKbePhPhRRPVLOJ4Sre25uGlV5aRymVTsXezq=0A=
1HNoQJxYufvjfPXEwhiXr6AkkwBYotWS5gE+qqwwbasbNkiPNh8Piff0Q5gI2ae2=0A=
YwSXb/eh7fEW30wb7QZw/He5mZAx9Qe10YvQ9qly8t6X9YFGY5Kqo4lweIQsjG1l=0A=
qeEg3LqnnnYi7LOR6rpbywcejW9e87YNPsahdfGedeJr2S1sRc3xgLW2xmI6xXxC=0A=
SDTnDykXwNDJM2XkbEEUbHmNZLyenuyqwvUCcS5q901S02WVT1W/G48GefCemKe3=0A=
cBmu04LM4r8au3a4SbxddaeOVkZHNvQVywYX8pPCmkLcBARNGOSzL1S0bxvd+PJq=0A=
0MNM/8sq4W05MoCq7Nw0ZmIyDK9JKVGbJg7QiC8BR92FCkm315I9pHjBmZ8ZO9ne=0A=
OrNlTMaxxW48BKTgK12UMRYrezP4JV5F+zHvtrKJO/Me9Yyuf2z+yuUfU8TeDLvN=0A=
pZ5qH2wka8jwOdfyN5c8WmUgyvL1ILzngLGeP5KGnibmklb5jsiXpsvzPgNuj0Ib=0A=
+Knj3G/O/oqVPs09mrjrczPYx+Hy/NES2rl8Kwz8xcHnzvR/ZzgnMF+gdwARAQAB=0A=
zTRDaGFyYWxhbXBvcyBNQXJhemlhcmlzIDxjbWFyYXppYXJpc0BjZW5zdXMtbGFi=0A=
cy5jb20+wsGNBBMBCAA3FiEEaPj8J7K1sPw/6vSL0qEHwE7jIwAFAmMy0DoFCQWj=0A=
moACGwMECwkIBwUVCAkKCwUWAgMBAAAKCRDSoQfATuMjAObvEACxaup6Y03Qnewt=0A=
/YjUTc70ZAeysLYUAVDewNTrkCSqdX5fhRI/otbPQJrNec9gxtfYhu0zWk41Wzb5=0A=
0xr96G8mt4kRVQi+SZ5H8+orB35oZTHEaOWzTdAXAZx8+SFFIBMhT8x7dFEPEXJI=0A=
yaBsQpaAv/InpSk6tNniYnRN74O5WPbLCVL3HqweihNXWmzEnWDrXP2V72hy2Ae4=0A=
HydLk//VRRQaBrAI6mZlQmUgssPoK4UWIrw4jqwr2u4E1ewfwXLcccQpmWn+X+ii=0A=
chp1Id2lxUgecbdZsg23JMaDVx4iLDuEUvrtWd4IWDyFlbvrNpg08A5IJVtY08FF=0A=
PmxkD4508QfE0wWWnR4VZMq2Ma1p6E2I01icL1HxdFQJEYwqCVq3g3mRmDTLZs4P=0A=
0RW2StLmrKZ4Xjytyaa+H6eDB3TfUZBmTq63m8L3GZ7r6v8Lv7l8XCIUuXV5+vD9=0A=
F8swkjCqg7LWRLOA/lltFjrym2hFfT0IAFouxVxG6MWxLw13yq33EopwsadEldQN=0A=
LNxiiP4qvIQ7I329N4kTHAF+FnJm6wK7CP/UVzxy3bzc1LUlqdsDmuzaQPl60Xra=0A=
EEMkpUS0ZSHnuNZk87MN6ai0yc27XNMf8cXPSwzhcLGfPSyQaDBWX3INwERi2lx6=0A=
AIWhBqfe0Jt69EOLMCSyI8YkAYaW4c7BTQRjMtA6ARAAvMECgPYNeSQa69W2zst7=0A=
13hLr0rOFRQFoiL7Ca+9gAbMibhK7gLBBuTE21kD5leWYfMuFCdprDanB0AGt+zV=0A=
UzLwBnQ2zOQ9YxdRh22xUQxlspM96IWn28dIp3CKvYioI0UXrQWp/i9LrPTqBXoY=0A=
12xliPRmnZ15Xwv0Uar0mP1zgUjBfgfRaPAHP3+3pYvOePIJEVCUrSQpWM9QCX7K=0A=
MTGPLg1lxOXX/NtV3M1spubpQ6nDwwRzyHlMjLLm696QzCv1VAvkZgU7T9hnw8QV=0A=
JE/lDOYByRwh45NQEiamuuEWqgz8JFHZ4uFN2O1r6FRQYeefajt78r2r6P1JZ8Dq=0A=
BUK8oh3/OaPhpKA0bbrdmbkt8eaP7Qgbmgsxo9CeEV0GRfL3NxyLrQJIHkTvQm/8=0A=
3qMNa/uVu/gVHAKbkFy152e/NNBP6n5LZdBQcnM+A3bZPcq+FIYUpEfPyvwTuywB=0A=
6VVd/fejIHZ2avImeHwcH+A/rj0R61QYlwh4HQBdoCECov9unaAnp5IH9QeKn3NF=0A=
xo3qyVmBvrh/4/3Xv5DeUWEludEv+5NpIfcG0OL14WGCylo5AHBG+obr6P9qStgD=0A=
xFkRGjkRWxdwXiAY1psdu39FGT8NreQMw8/J251wXPHkLTh9Hsu3/MSt8Duy5yMp=0A=
zg8+ZQrvodQIKQYMvCv99ykAEQEAAcLBfAQYAQgAJhYhBGj4/CeytbD8P+r0i9Kh=0A=
B8BO4yMABQJjMtA7BQkFo5qAAhsMAAoJENKhB8BO4yMAuH4P/iNxbSvxOdr8Ckid=0A=
fIEQ23kNRoE/24uXnbcGxQy7Hk3DvYxtdyvam+vVIZdnx8vZHlK6DDEbr/8l7xv+=0A=
9XdHqO6LXJvuHXJVe2hgPJglv/4FiGQQHcD2ET7ijVKFTpSpKVpO5Epxk3fMlIM3=0A=
57+QKxsxCmOwpxg6Z1JVN5SmTVZjHuDm9MV5NCJu0CAc0U5Zia7RwQPDRo+31clG=0A=
hLqFig9nGbzTjBm14eve/FhRd7VHDeP5k4xUAVySFLthILUKX1lvX6wPcP7te4l4=0A=
dvxBI+WMuQE9IXoCIkoKp+C/Z++pse9lZjU8sLtlFKegaYY0DBDepS/KG4PlFRFQ=0A=
usXZ9DVFAHFDRWFDB86R47gI1WAWXgmJZOjZh/Yduc1O9kb6bR9hKTqGLliCXQ1o=0A=
vhBlPOmD8rHHsxe/xaNOzCT+Np7KiQt++5gpfmHJdI6fVEQHGgi7ti76l7pBUtxv=0A=
fxKOVwMsWI8CWLOzQfyjqveP1g7Ke4kTyRHR4fc4GbuwQZaRxE8l5x1jO4aTcriS=0A=
V30f+UEGJcn+i+db8BkWfMWHuboNrfL+GGDVoskDuJRWW9YRPHnjZYc2u9WNDkF9=0A=
x4NuKpOebGLmeEJbKxztBxPkKKpH8uqZ7xck4F/J1sKBvGMXy3aDdsd4bI+xGCyX=0A=
3S33kcSjQaycZWkcYmVG8M4I/WY6=0A=
=3D0yo+=0A=
-----END PGP PUBLIC KEY BLOCK-----=0A=

--------------uCiyYWXMJ6JLHy2yNfJBY7Jy--

--------------EZT7Mth0EHnSGrj88gWi4c1n--

--------------tEwTPuabF1UfmMd8U0oMu6ik
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEaPj8J7K1sPw/6vSL0qEHwE7jIwAFAmVLrnwFAwAAAAAACgkQ0qEHwE7jIwCL
Rw/9HRHnIcEGFFF0SYTInb+Fi9yyctw958wN02bG+EaCwwH+ZIho4LoETradCMggtxYnZaeyD4xj
655VlPcmfBmOE07h04tNxBPGNOBN93bklNPb+dbFY+f+c7zQNJyvhjuJLKG3b4T4kn+iC0q8LI7j
jwB326x1HT63qIRtmbNsGyF3yrwf0md04A3N4Nc7emDiu0fQik/xVFy4AhKOF50ZVdMRgmkz1vyq
2Tikht3mn13Wx0blN7ZxAaWfcA2uGQsuKdT0QYNcucvTCH1qqRB/mQyiqx2RLGM96GlibqaCtuSU
mfOeR91oQDKHxnuT/ABk5uEF2zukpifEQzb4fRRO47ManlrX4fhCgSmpGWe3aZlViekWknScEQqM
Rj8MpV41e9Iy/Sx+EpqJmnOMmudMuQ2DRzSQRITvxzdR89doww49x2SYitQ1Qsa6F8FZzIr4GxMv
r4DSfk7QYC3g3q7Zo/uQHK/Hb8CawddQBdaRfl7dmYUCGovEESnNZSTbGM1Gf9acKS6vAmXfKI4k
pqUmctDtSXwuuNjSRKp5ABnKeMojpYUp23PBfm0c7t0PohJQD/KLZyjFEb28XfEFsyTirvZr4dYc
osyHB+4gPqnj7BSnd2WKIgtLFz3WrZvLf9BDUIklXm4p4YAf0WbJw9WFt4S4EYsHPWrFbuZcPylc
BTI=
=7/MX
-----END PGP SIGNATURE-----

--------------tEwTPuabF1UfmMd8U0oMu6ik--
