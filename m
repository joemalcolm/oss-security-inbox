Received: (qmail 24319 invoked by uid 550); 19 Sep 2023 17:31:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18183 invoked from network); 19 Sep 2023 14:46:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : to : subject :
 date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-03-30;
 bh=DNU01VNxIC7q/Eeh4YAs+jQ79pmzQhwhZ/1BXmVLmjk=;
 b=j6eqSA6CS4obzzziVomcu5sRh3rqfyxvuG/+nmOtE4JbBsslkPad4Y/6Br5+MUvQ3i6T
 rweKof9M5opaHSSQNA+rNOxofuVl4emC1rYMLp2yix97gAtHK46eUxz3RluIwQmr220X
 /0vBfqmFA4TS4AbSZuQnk02CT/3vwRn82JWKtQeLZr9KtibtfX8hpBPdHFOeJwt0g/Yi
 VE8CydE4JyptfjpxtLoUzX0vIh7On9zCFI1+o+xEPIZl8piSsObS7J4oHuPO1ZYUQ5wS
 RCtRhusrC5iyPD15XBhc9T3slmZVOzF6QwCy47TAe++a2Rkh3OE9NyMiGtLpYeCByg1n 5Q== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WFLrr7Pb+onUQ6G2f7rBddgDmzWT59JEMhzhstNJZhVEIxnsNX98JV9q6vrLPNtg/DohdmGY7Ze7czjaIf8tAIsk1ONPnONSSBV+NWWWd9E3qtqBrTbuoN8864UiwtLziQ3S19BNX0EYrjD7nNHZLXvEEJbQOVwXk9CVbBr33r3H1kop9ucpDcuOMFP0r16GM+K5z3WVW8gYMdMP3jstThwNnYg7qEQrn6p5MyA0Med+VeQ8p4HZJUKXUMRSLz6OmnZRWizs3B3IuF7ejNMqfzzdqEkJ4yULRHm7mn/FIW9LREoIy/KnxPxC9q0gpqfOJy2ZYxIT45JEA/CojQCymQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DNU01VNxIC7q/Eeh4YAs+jQ79pmzQhwhZ/1BXmVLmjk=;
 b=NaHcnI35OnpsZIUMUcauFL8eMmpvCcMr67r4eztCwNfqZkuedeQZoo2yjZJe7pOzHb23sqWRUGMcwDLa71OLwNp7wJ/YvC0U2FZVOyqVdwHpB1gIvv6rhle1imUobGjzC9KXWX/a/PvEOjnF3a57ErWfzWqHVj/izC6fiKdgaNcwoe4+002CbYrzU14Ov5HSOYOMecOx+V3zssQGIgs/m8yMIJS4eF2jFteLD75beJehwziVCohHatGH81ozGbJPFQ/o11g9fvqm3kYkI/BkYtqju3bjfrZMAbhzyeCmiIqi4C2jnTiJKqkutYUGrlt3LnMx+KHrc3YW9YWSN2Y97w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DNU01VNxIC7q/Eeh4YAs+jQ79pmzQhwhZ/1BXmVLmjk=;
 b=fZgGc67lsFHhQh+p1za2sWkvuf9BIFUpf160Q7Rlc/2uxZeu8Ylvun5o2wEJJQJrTDWrrSyNkquE+QuNp3TdOIdtSvd9Djr0V9jDtGA3LE7Wm5g2Uz2GUOOOxAkjnB6FEQ8urgneEuiTNXRQtJGi1iCDJSNwEZmNzQbkd/G5vgI=
From: Casper Dik <casper.dik@oracle.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
        Steve
 Thompson <susurrus.of.qualia@gmail.com>
Thread-Topic: [External] : [oss-security] Possible AMD Zen2 CVE
Thread-Index: AQHZ6oVYVtQWfRo2rkaqxBe+W0jwk7AiOOQq
Date: Tue, 19 Sep 2023 14:46:35 +0000
Message-ID: 
 <DS7PR10MB53580D81F624AC15BEBBC39AFDFAA@DS7PR10MB5358.namprd10.prod.outlook.com>
References: 
 <CAA0MYJUHngYsTR0miEO31PpMp+TyCgj6ebt9F4b2289SFwy5TQ@mail.gmail.com>
In-Reply-To: 
 <CAA0MYJUHngYsTR0miEO31PpMp+TyCgj6ebt9F4b2289SFwy5TQ@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS7PR10MB5358:EE_|PH0PR10MB4616:EE_
x-ms-office365-filtering-correlation-id: d1b6b18c-8231-4524-a02f-08dbb91f394b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 dMN/IH94wLpqi/x0xiWNifjV75siNa++1tVcr65LgO8UI9mCiVJ4WoJIztLXspYemw9stewYQq5yTs2DIq0GTPQwNH3hk1I5UUVTjbn5bHzL0a9HizB6ri2TqQiOiySeOsbUFy/hBBtD6fXWpDoxJiJuSpILqx/+81HZdEbjGmZCdspHO1Ey1/hL6iFyVMJCGXLQ1Pc56cmgpGD9qSxOpZvlcpgT6syNzzXWofCur1C0HwE/w3N/sEHJzm0kVEXHmTTI/D2xJznP3LsBRoX4JtdtsegrrIFXOMa+6Zdyr7p/18RwQPo29yfJOWCN2shsfE3vMry3OURLoj8HJwqGBu3Fo1p7JcUyV04zFbjUWOK7qk/ux0iAFC5xSCdF91W38fa9vvzZUe0CCOfH0mkIu/G2tkRkY6Xm13fJ3ft6fvakoW5ivXyNCsGZXSU19zjd5g6bm7pv42wKqW/c1tg2dSA8TEABGaE9FX8mOtXEDipnOwKksU3KlGCuwHpfyKEwn9oWUVJW6tIcpNHMLGFdLEu9ZFFeYwdpoW35sYEup4/IUrAte4IAboXSgzSle+cwuZv3cNhaDzaVwjSl+D2OdDpYU6QyFQaIzbxJrc7XNGQS3ohpbeLeC4Kxp/a1aeV3
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5358.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(39860400002)(396003)(376002)(366004)(346002)(186009)(1800799009)(451199024)(55016003)(478600001)(26005)(71200400001)(83380400001)(38100700002)(38070700005)(122000001)(33656002)(86362001)(6506007)(7696005)(9686003)(5660300002)(41300700001)(316002)(8936002)(8676002)(66946007)(76116006)(91956017)(66446008)(64756008)(66476007)(66556008)(110136005)(2906002)(4744005)(52536014)(44832011);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?/H9Ipd8cieLvBFA+M2vesKW9jvSgMJSV9/4+CR915UxOUX6Si3zkvr84fc2O?=
 =?us-ascii?Q?g4fDfZgacrlFFUvuuipyEFZSMNbcws4pxO377zfBxJZMgNo+cpqtAJi1/SQA?=
 =?us-ascii?Q?rnjWHqMif5oqJb/S4T037eDxGicYL6Qt99RQye7pcX9AFkAANGqnkjOCQ5Yc?=
 =?us-ascii?Q?jjTSL4AhERnqHt6o+ooRLowUJjC05af2JTNAWssZi6sMdOX9X/JoLIr6lgHp?=
 =?us-ascii?Q?+ragswgh6Q1nqt8hM5pS3hAjQG/nLJA/N3t+09x9j6LPiNGAIHzVRNJlqkj5?=
 =?us-ascii?Q?TZpjQ7UyB0BCUO5GOdYCh4Ab9Vmykpo3hXJvbaWzaIY/W42rbUdN0qeES6D8?=
 =?us-ascii?Q?UIaoe92v5OQP8l/AbJDKDgCsul4v2AXuFtQkPll1ExWRLO9TUVv5fmtmmtyT?=
 =?us-ascii?Q?1HxX1juCfy4NSac9FE7QneOUEwyg33eIpWhAVp8mN1C3+F/wmm/kyAgyB30c?=
 =?us-ascii?Q?LOjetSmITpSjraCk+tDXpoD6Dhcu9+dMSrfJqptjxJnyT8rq9KGpYoBtUBsk?=
 =?us-ascii?Q?Imr5AZtC6bqtv4/gPSSPt4AMC3tfgPUP67diqWrYcB+C9BF3oTpLPtGeqfgr?=
 =?us-ascii?Q?SZWA6LqB+r9eUZADn7c8QAvLGxWpeyhiC2gbagScMFPt70OnmLi38ALMMhWT?=
 =?us-ascii?Q?UkcEkRF/9FI919XBxjkaTzU7E4UgFBn8tUbIS2N0wv3WT5ZmK33AMG+Ml3hK?=
 =?us-ascii?Q?Br8qjm9Sk+EsX7+1aE3yUKZ+xEAd0/hLfmOZnXvUaDqAYJbbuejC4NICjWah?=
 =?us-ascii?Q?JrmoJKHbY33mkhxFxz6c/aiwJwdTCRAG3KjU7HEJIzmiQA9Y9NDkJhePNqku?=
 =?us-ascii?Q?mGzh+o/UwijNvG44mC+DBHSPyd9a/do2AOOvp4L6TZYww3kVuBdIoZwp/cQx?=
 =?us-ascii?Q?bGJm4ZSXj8GiHcplerR2D+sKEqXjOshKca1FDHvbD/BnivkBXIK7XyZjthaJ?=
 =?us-ascii?Q?O1P6iEk+ZAKUA1S9WHGQZ6HgGv36G9ogrUeWLW2Pb8KY0yboE/AHA94x3JMo?=
 =?us-ascii?Q?R2GE3yn6/72575ruf7G8En8/ci0k6LFVDVLZYuu4cv4lJGR3ntN1vNfARIo7?=
 =?us-ascii?Q?Ukm1U7sAJNlChk7glH6WnXzf+POpcC1bq2eCXTX0q1lNdiDQ1TQABWqiO0oV?=
 =?us-ascii?Q?w2Oq0gH/JGYOVP+0lTvFfE06OH+zicMyJ32Q1OOxLcqYqUC9J7g+G4DacGP9?=
 =?us-ascii?Q?kmhngMVa5BhVcf1ZvHcJPED/IRjlytJXkdGU5b78IZwJYxNdu/ovNg/rXaHw?=
 =?us-ascii?Q?Lv3gnJAIdWo/zzYPvrSVX+X97TUw9curNYg89YNd0J/dVTFV9GE/yUja5qjL?=
 =?us-ascii?Q?HEYnZd6BgC3fJTRPNJJDvFHnr5J2AGkFj7w5d//BFAqjD4XshIVqhZFcB/jh?=
 =?us-ascii?Q?CYzIlkGnkkVqgKwtXW0PYW+IGxDMWlhjm/zI9NBcM8kCb6ZflOBwPP7K7H74?=
 =?us-ascii?Q?DJD1tH5LBBj/dJvAOwbKR3mwjVQUBihLVx3SQTV68Cw5ZD3w31NxpKaD2ANi?=
 =?us-ascii?Q?79CrSKj9ChfgJ82QF9cNZTmfQxmrx7v6zBgOICHPgvc9VAbeA9DqKiahlIaz?=
 =?us-ascii?Q?UKg/K1kCLoUMO+R996iB1kYr2O++l71jmkkZFN/I?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	fxuH9/In7lNbZD4Sguu3F5L42IjI+MHYlb4STT/YtcbnFCCiTYOSdkAlSIJCVvJO3YJpF2k8sP1516LJvKafDhBqyfr5Q39WuWIUWnFdKlR/lOaamUh9VwzUuqR7pLEaYP2ORt+g8dG9awcjeDdCkCPOkJT4PeK/JE2SDzO/iTS+UMA8/Y7W3xYHgl1jkhqZWhGlVH4BQe9+mH5DvZY+yNokbeIZJN141ezdCJsaDyNvrCb7d34S3kbQf5W54ZxO7Ei2FvJmMSTMh8ul/Mn5AFLFH7QU2l8f42HzmgUj4bbmRgtzGt3/rsvgD745vvnt15eqbeoaYw07QD8I7gYnNTDQ+02SDDd6qHo6+8gbLwBU4kCD2SIi74EGuMgtXVHMN9auC85yOFdCOxmuGcS1tVtegvpe/wyec/oPI/kJ7PB3QH3qKCjYWSMuIIIyzsupoTggBIpgiCmgyfnXVVpC0E6Ewd+TIjWAWz2+uR5nNdKNw39ngax0RyqV0jreeIoxfrMtJgjug7WFcPcXQTYUpQEH+YR8n1j2kgtN4kS2GeVh8hDdEFSEE4YCfvbP7utHeT4j6S86YapoJgUQ9JbzYW+Zwq2uyep+/BXh2jMagpv7Cw2kETjdMcA1okr3E1c5Yq3lu/QHpf1kEuLVackjm9VL2oPW8cSAykAHUBKd359/SnZCb6gLKlPXYUg12drH/jvmwORsYz3yoVAAHG/U6aDaJb+qsSm1j2dygwd0lwnQBtYnc4QNk8DefuJLCLiXwL581vTAi6UnGkaeH9TpYmWArmRt9nafokkIRZaaR84=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5358.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d1b6b18c-8231-4524-a02f-08dbb91f394b
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2023 14:46:35.9082
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XjrXbj+JwlcJg4WHqys+j4NKzK0jjyw5yZbbg+idWw+h+04iIie0xBVg+2EqcTFWdK+eGO8kqHrhORhYSRBSqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4616
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-19_06,2023-09-19_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 adultscore=0 bulkscore=0
 suspectscore=0 phishscore=0 malwarescore=0 mlxscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2308100000
 definitions=main-2309190127
X-Proofpoint-ORIG-GUID: 29IdjDBT_o8Fq9qgu5YMc6atimiFsN8u
X-Proofpoint-GUID: 29IdjDBT_o8Fq9qgu5YMc6atimiFsN8u
Subject: [oss-security] RE: [External] : [oss-security] Possible AMD Zen2 CVE

I think you've run into an issue with gcc.

It does not always honor the order and it I have seen issues
where I was not able to get gcc to properly order the code unless
I was using some trick.  That particular trick, a smidgen of volatile
casts did not work.

The code in question:

#if defined BROKEN
      temp =3D ++obj.value;
#else
      ++obj.value;
#endif
      t1lock_release(&obj.lock);

In the "good" binary the "incw" of the obj.lock is after the "incq" of obj.=
value;
but in the "bad" binary you see the instructions correctly, incw before inc=
q.

I had the problem with an Intel system running Solaris (hence  different
assembly output):

good:
     wr_thread+0xe7:         48 ff 05 8a 09 10  incq   +0x10098a(%rip)   <o=
bj+0x8>
                            00=20
    wr_thread+0xee:         66 ff 05 7b 09 10  incw   +0x10097b(%rip)   <ob=
j>
                            00=20

bad:
    wr_thread+0xee:         66 ff 05 8b 09 10  incw   +0x10098b(%rip)   <ob=
j>
                            00=20
    wr_thread+0xf5:         48 ff c0           incq   %rax
    wr_thread+0xf8:         48 89 05 89 09 10  movq   %rax,+0x100989(%rip) =
     <obj+0x8>
                            00=20
    wr_thread+0xff:         48 89 05 9a 09 10  movq   %rax,+0x10099a(%rip)=
=20
=20=20=20=20=20
Casper=
