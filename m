X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3338" "Thursday" "7" "October" "2021" "06:01:43" "+0000" "Tim Wadhwa-Brown (twadhwab)" "twadhwab@cisco.com" nil "92" "RE: [oss-security] CVE-2021-41773: Path traversal and file disclosure vulnerability in Apache HTTP Server 2.4.49 " nil nil nil "10" nil nil (number mark "U       twadhwab@cis Oct  7   92/3338  " thread-indent "\"RE: [oss-security] CVE-2021-41773: Path traversal and file disclosure vulnerability in Apache HTTP Server 2.4.49 \"\n") nil nil nil nil nil nil nil nil nil "RE: [oss-security] CVE-2021-41773: Path traversal and file disclosure vulnerability in Apache HTTP Server 2.4.49 " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5982 invoked by uid 550); 7 Oct 2021 10:23:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11320 invoked from network); 7 Oct 2021 06:02:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=cisco.com; i=@cisco.com; l=3426; q=dns/txt; s=iport;
  t=1633586565; x=1634796165;
  h=from:to:subject:date:message-id:references:in-reply-to:
   mime-version;
  bh=RnkuQfCp1kSFVFMwI9ZoV+/aL66+lwuP7N7mtgGdsJA=;
  b=BocNn08/tFt2M1nZe75ijsuRfm1mgSmddiRBzbt9Ug3lTED5GMnTFLtt
   baHwKwOn+9PpvrXrsndlvvA52SJ//6VTAy3gDRZGZvl+HvJmq1tZ6evCh
   dFZ4VyBFg59QJqXUyq7DxYEAhYgwCxbSM03FqPmcdM1oM+1IquyH7E2Gq
   4=;
X-Files: PGP.sig : 821
IronPort-PHdr: =?us-ascii?q?A9a23=3AzKXRTRSwwqCmOlYh9JCwUO55Odpso03LVj580?=
 =?us-ascii?q?XJvo7ZPabi4uZP6MUrA7PFpylTOWNaT5/FFjr/QtKbtESwF7I2auX8POJpLS?=
 =?us-ascii?q?1ceiMoQkgBhZazNCUDyIPPwKSBvGsNEWQxh/mqnKg5SAMv4eFTWpju56jtBU?=
 =?us-ascii?q?hn6PBB+c+LyHIOahs+r1ue0rpvUZQgt5nK9bLp+IQ/wox/Ws5wdgJBpLeA6z?=
 =?us-ascii?q?R6aykY=3D?=
IronPort-Data: =?us-ascii?q?A9a23=3AR8hIZaCflby69xVW/6Hhw5YqxClBgxIJ4kV8j?=
 =?us-ascii?q?C+esDiIYAhSt0Jn0CFGDlkyCY/ZZzSjKYgiYIy1p0oG7JLRx95iTQFo/iphE?=
 =?us-ascii?q?S0W8sHJVIrHdEz5M37IcZHOQRk6sMlGMtOeJZE6QyLR+UbxO7PrxZUQOdlkE?=
 =?us-ascii?q?ZKsUresBx2dZTOIaQ990hk+leI13d8z0YDkUlmEtNqir8OEYAT6gDQsaG9L4?=
 =?us-ascii?q?ouO+Uhl1BjQVJz0nbCficimNzYyrlFNZH4kDfz3fyaQrrV8RLbgHr+blO7hp?=
 =?us-ascii?q?ws1wj90Yj+buuejGqE1aua60Tim0hK6aoD66vRwjnVaPpUTbJLwXXxqZwChx?=
 =?us-ascii?q?Lid/jniWauYEm/FNoWU8AgUvoIx/ytWZcWq85efSZSzXFD68qHIT5fs660G4?=
 =?us-ascii?q?EAeJ4YU/KN8BntDsKVAbjsMdRuEwemxxdpXSME12Z9ld5atbdhZ4y0+pd3aJ?=
 =?us-ascii?q?a5OrZTrX7rD6d9H1T0YjcFVFvGYbM0cAdZqREWcP0EUYQhOV/rSm8/t3BETa?=
 =?us-ascii?q?QZwr0mO4LE66HXJzRBg+LzsK8bOPNuSSMNKl0Kc4GnB+gzE7rsyXDCE4SCO/?=
 =?us-ascii?q?nTpjejVkGaiAMQZFaaz8bhhh1j7+4DaMzVOPXPTnBVzohPnA7qz83Apxxc?=
 =?us-ascii?q?=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3Ac6zuvKHKYMMs5MhvpLqF+5LXdLJyesId70?=
 =?us-ascii?q?hD6qkvc31om52j+fxGws516fatskdsZJhSo6H+BEDgewKeyXcR2+ks1NiZLX?=
 =?us-ascii?q?HbUQeTXeRfBM7ZskDd8k7Fh6xgPMVbAtND4bTLZDAQ56uXkWrIcerIguP3ip?=
 =?us-ascii?q?xA7t2uqEuFODsaEp2ImD0JbDpzfHcGIDVuNN4cLt6x98BHrz2vdTA8dcKgHE?=
 =?us-ascii?q?QIWODFupniiI/mSQRuPW9j1CC+yReTrJLqGRmR2RkTFxlVx605zGTDmwvloo?=
 =?us-ascii?q?2+rvCAzAPG3WO71eUTpDKh8KoFOCW/sLlNFtzesHfxWG2nYczYgNkBmpDo1L?=
 =?us-ascii?q?/tqqiXn/5vBbUv15qbRBDKnfKk4XiQ7N9p0Q6/9bdd6kGT//AQg1kBepV8bM?=
 =?us-ascii?q?tiA27kwltls9dm3K1R2WWF85JREBPbhSz4o8PFThdwiyOP0DUfeMMo/jFiuL?=
 =?us-ascii?q?ElGfNsRE0kjQpoOYZFGDi/5JEsEeFoAs2Z7PFKcUmCZ3ScumV02tSjUnk6Ax?=
 =?us-ascii?q?/DGyE5y42o+ikTmGo8w1oTxcQZkHtF/JUhS4Nc7+CBNqhzjrlBQsIfcKo4Du?=
 =?us-ascii?q?YcRsm8DHDLXHv3QSyvCEWiELtCN2PGqpbx7rlw7Oa2eIYQxJ93g5jFWEMwjx?=
 =?us-ascii?q?95R6svM7zE4HRvyGGMfIyQZ0Wb9ihu3ekwhlSnfsueDcSqciFZr+Kw5+wQG4?=
 =?us-ascii?q?nWXPy0NZJQDbvtK3DrEZsh5XyNZ7BCbWARSYkYvdw8VlKIrIbVJpbxturdGc?=
 =?us-ascii?q?yjV4bFAHI8VHq6BnMbXHz+I89H40CtVDvmjAPKW3XrE3aPja5NLA=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0AcCAAqjV5h/5JdJa1XAx4BAQsSDII?=
 =?us-ascii?q?OC4FRUQd3WjcxAoRFg0cDhTmFZIIlA5psgS4UgREDVAQHAQEBCgMBASoLDAQ?=
 =?us-ascii?q?BAYQ4RQKCSAIlNAkOAQIEAQEBEgEBBQEBAQIBBgSBEROFaAEMhkIBAQEBAwE?=
 =?us-ascii?q?RER0BATgLBAIBCBEEAQEkBwICKAoXAQUIAgQTCAYUglCCVQMvAQ6hBgGBOgK?=
 =?us-ascii?q?KH3qBMYEBgggBAQYEBIE2AYNTGIIuBwmBOoFUgS2DAIEVgnSBUoItJxyCDYF?=
 =?us-ascii?q?Ygmc+gQUBgV0CAQEYgREBEQIBCBofERWCUTeCDCKLPzMxKwEbDgEBIDhAHCE?=
 =?us-ascii?q?uKZIDRoMTjGOMHo9pCoMwhUSDC4F2jE6HcBSDaYFIkGmQeJYljEqTcYUFAgQ?=
 =?us-ascii?q?CBAUCDgEBBoFhO2lwcBWDJAkKPhkPhxyHBDeDO4UUgmaCZHQCCysCBgEKAQE?=
 =?us-ascii?q?DCZRwAQE?=
X-IronPort-AV: E=Sophos;i="5.85,352,1624320000"; 
   d="sig'?scan'208";a="944433717"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XHsfCEdZxlXxEaGHc7IMWYbHAKFZNP5jVqbCBPNqAsRHfNvEW1SlIXSmZK1dw3ggXQYhb/LNtYdX/G+1Ybr2kzAK3X7EUFQaO9vfV8JgZHcsm1/NPu5x79xgoZ8RYmpHH3PPt32xKugzWvRXCoHBMLC9Q+djdpHbLzSUP13jzZtXIoaBQS6UoEVOt3Pb9hnwLhWVtuAwstaF+pw1hXkUizweFGJ78dYyG1ZZW0QQPB6Ff34fiVmK/E0IAOpVsylyuPa4N6if0L7ZROIJrzylbAeTjk0c21zu6GDwArNy7IU4EmWUvfm22FZsGrqsBv5cN93pTQnXokx3MQQchMo/gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O3Avb0SWZlba3sgYGGJbgkJGQJmFpPuBEDC5lJ2jj5c=;
 b=k7Vcmo9WqQ0FQEoAhiL9ZVwalae/lbWd1tbjQZCGs2qL8793+uQlPNj2BCo0BOEPC3hJlXt37p8rlSsFWctDMThitlfsWLrU1mFceC9okh9o0Ogx7h0mNJk59yM3SxXylou+5S+hNq2+VDIo3AfE7eGgG7FpwQVleCdu0WwOSuVjh0FYhRScsNVZCHa+gFXEK1HYYEkgkjmTJ6SZoPbxDav0cweM3KULOxw5ENLE8U3y7iWPn1eJvZme5dsW1an4LsFH1YptnYz2buFpqzBa3f76onjB1PBCgf/Dv5qYoYJcGswmxgp0wpIgwBZ006NnLoDj0l5RXpv7OZeeTyEr4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com;
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O3Avb0SWZlba3sgYGGJbgkJGQJmFpPuBEDC5lJ2jj5c=;
 b=zwsZUgnDCfbwTM5GAf9Bs8HmqfCopcah0Q+3OM2msmW6lDhNhG2vo7FLTYvKND3g4mgyOAlfSA2sCV+40yL9cnGmWfjzS96oY9xUQwteKg1wDbqTymDTwizatsbAi8FO4oY8x4Ld/OPAn25FxrzjM+JgpTZLpnelvJ0FTtRn0HM=
From: "Tim Wadhwa-Brown (twadhwab)" <twadhwab@cisco.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] CVE-2021-41773: Path traversal and file
 disclosure vulnerability in Apache HTTP Server 2.4.49 
Thread-Index: AQHXueAkaKABRV9I/kudYcVhUXHYFavHCQAw
Date: Thu, 7 Oct 2021 06:01:43 +0000
Message-ID: <BL1PR11MB541646CE3C8151DEAD755133DAB19@BL1PR11MB5416.namprd11.prod.outlook.com>
References: <11be742f-d8d0-2a6b-2ea0-dabbdeafebad@apache.org>
In-Reply-To: <11be742f-d8d0-2a6b-2ea0-dabbdeafebad@apache.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-pgp-mapi-encoding-version: 2.5.0
x-pgp-encoding-version: 2.0.2
x-pgp-encoding-format: MIME
authentication-results: lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=none action=none
 header.from=cisco.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e2488ded-b33a-4703-361b-08d98957f096
x-ms-traffictypediagnostic: MN2PR11MB4742:
x-microsoft-antispam-prvs: <MN2PR11MB4742A648EA141D5CA7AF0038DAB19@MN2PR11MB4742.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NOn+36yT7ViWS0B5SwgcQRQLgdI7761ynRJiFBY+u37Drw4EtVuJi4hcdpElajkkD9q136S8oYaTy+d78GS1XMl4AthRa/78rn6x++sPrZjyXqB/DR4YNkKGikZyD22x90QRTufpiumZRaSf8PYLMuHH+fZWsDzRQ4X7frVpKLeyTCKIY4AlH7WCDYjxnmMkT53xEPDJUVbKNkvVqS7Nq2pgmsXZohG3tMIZLl/yOF5XJprpVlsSpMPURyzpn0+Ryg2Q5QC3kaphF8EwNUfHj1rAJiUpC7kyN4gIhiGuV1o9zBjkNY2uHMplEK48GLmJO1t4tVBt0AjPkRq4lhv44EbWG6o8v9/oxWwf4dNzZJA/T68g+NfMJBChpw9QkUgA2K+M/Ra9h5QX3z4phYU3LAYVpjR75eB79ecg1gViz/JCRNQspgxGvzHnudidNEI1R5+ri953o5O8WtzWDN78TmESf5dr+m+FcHKpQAZ4YLQXhx0VgSIaNnVL0ZwmVRc9Jk324gBv1/1CB4uUMVSqIFklXtGK/Qr+lVYvV4ZECHx8HAGrFu6zTQuY3uMoQT7VweRrE44rb0L7Nsir19xe6LMz7GhAguwUQRpkwWgAClLBsQhd+590T30AKwnNJZpTs1i400UBJAPgGE4tZlV8yvW/hq4OhNd6IbLltOabFcpIIwtE7BAD2Azq6SxQKECO9AbS7akjOkLoWTLw6BXiyV2UCQWr0QnnObU9vbKeXggcj7K54RBxBpjjapFLj+sDEAn09lLECjIltSFwFjNcr7b36mVnL6NumkNXj6zNyy6WKGqfFP/UeRjv5iPfvwOFu8bJXFSa8UADgZO4EtwxTA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL1PR11MB5416.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(71200400001)(86362001)(38070700005)(508600001)(966005)(52536014)(6916009)(15650500001)(7696005)(64756008)(66446008)(66476007)(33656002)(76116006)(66946007)(66556008)(5660300002)(186003)(8676002)(4743002)(8936002)(26005)(53546011)(55016002)(38100700002)(99936003)(9686003)(2906002)(40140700001)(122000001)(83380400001)(6506007)(316002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MEFEelVLdytRWktWN2hKd2M0cG93NVN5eWZRL1k5bVpQTWxVai9JWVZoUFpO?=
 =?utf-8?B?K2FjR3F2anhab2pxR1dzOWhHcGh1Y0EyNk81dGJFYUoyNk1OcXN3OUpsZUg3?=
 =?utf-8?B?MlRqMWJlT2xQUzZQRFpPdVdseDI1bEtOUHVwdWYzd25QcXRtV2xvbDlWWjNQ?=
 =?utf-8?B?ajFhb1hkekdkYzhzTlNsbjEvdUZOeDBFNC8yVTJETlNRRHp2MUVsNExyNUJW?=
 =?utf-8?B?cllCZUdvN3NIOUdGWmxrYWVMZVljV1ZRUkdMenhIc1pLeWt2QnNmaGtjTnF5?=
 =?utf-8?B?VDl4VWpyWVNoRk9NZ3hqQUVjQ3FaRkFOcGlTMUdIR1p6SkpqVW1QaW11YS9W?=
 =?utf-8?B?bHdrRXpPY2FQRXRFRHlWdE9KMUJFWGxvTytJVzlWQWZqNmtPbDREWjJBNzlm?=
 =?utf-8?B?ZzNUUnJoaHNoZTdMMHo2ZU42dVg1TnR1RHF0aHZFaVNKSytmOUo2SHBZQVdM?=
 =?utf-8?B?ZGdlYm1HaDRWQ3h4UHhmRWw3VXNCOVIrQkRuQkdCR2ZTWnBZOElqbjY1VEdB?=
 =?utf-8?B?RTdJU3NtMW9xZHpIdndxbE5OQmExSkZsSTZVM3FLaVR1VFAxczdtdnBlaWdr?=
 =?utf-8?B?Y3VjNW1uRTFnU1hFeTNCZ2hCUDhXUjRPaXlmNlMrNkhtaXBDaHVDK0JDSzBX?=
 =?utf-8?B?K1hXNnNVM3dEeWFTcUQ1SVpIVFNialc4dEtxVkhYWjdCM1p5Nkp3QTRNS0Yx?=
 =?utf-8?B?a2pudXdkdENtQm1XS1NDSFdjZGpSdC9HU2JWM0pDekJVZEJQQ2VUU1lFT3R1?=
 =?utf-8?B?UnNUSjlZS3VDcllYclpsa2lNaUQ4SzZndW1CR2srZ25lbXZSVmJiQ1VQOXN2?=
 =?utf-8?B?RU1yUnBzQ01mT1BWbHd5TENxQUlKL1d2c0tTNVB1bTB0N2xFTmFUTXMyRGhC?=
 =?utf-8?B?cEhrTkdTLzc0am9mSm5ESFMwVnUwejJ4akluMHRkY2JERmgyWkdQWHFicWNn?=
 =?utf-8?B?RXNhVE85WWkzSGNjd3U1d0FoR2pQdGc2UGt5cVdUZFZ4Wk1YSVBnY2VFS0M2?=
 =?utf-8?B?N2NabDB6TVRaaVYrL3JVNTV0WmJHNWp2RW94WTgyQm81SjVrMlFDTDBUZmtU?=
 =?utf-8?B?TW5ZVVk5QkdjY0hsVzhXTHozQWxjYlU3TUxIaURTVkd5b3VhNFVBY3NaWXoy?=
 =?utf-8?B?NzJXWUlzQU10YTg4VlptZDVlbjNDeFZKYi94d0FPV3dvUnV4bDVuK3pRK2NX?=
 =?utf-8?B?ZGZwOStXU2h5dmRyNDNiRnJJaFB5OHlBMDFTWmtWUmgzOHBzWVlaMlRreHlp?=
 =?utf-8?B?Wi9JMzBFNUxJTUw1M3dKZjRSL3V4RXNQM01GWVhwRzR4WFNySkQwekJYdGFo?=
 =?utf-8?B?L2Y3RkFoNG5XSlR5RkFPQVpYdUk0aWtkWmNaTjVqVWNZME9xOTllbUZZNDhp?=
 =?utf-8?B?bHUrRkpMV1BzanhiUnphTHY2eEFJcVNDVUpkWGF0dXNIKzJ0TnYxVnhzQmIr?=
 =?utf-8?B?dUlsNnpqR2JkdjhHSC9CeUNvKzdGeDlqUjBBME1uUnFaL1cybkVQZ2NNWmFI?=
 =?utf-8?B?REFKSDdWRUZjNDhZMVR4V2RZeGlWdEN2ak1rV1dseWdsTTV0VlpXQWFGRk02?=
 =?utf-8?B?cG5EWTB1aVdmVU9lMlh5WTFkNWpvbWlMNWpFYVJONTlKcWJvdjZaY29lbkVH?=
 =?utf-8?B?RStDU2djRlE0YW9kNllvWHlVekxHbWIxamsyOVNVRmgzRm05R0N3RFFDdFRj?=
 =?utf-8?B?ZTY0M2piUVc1V3lFc2g1Y3QvVWdKWll0UXQ3czF4UzNOY1E1YXNrdnNFVU5h?=
 =?utf-8?Q?a7tDH9aC1IG1B0HR6o=3D?=
x-ms-exchange-transport-forked: True
Content-Type: multipart/signed;
	boundary="PGP_Universal_4AC93249_AE20DDF9_80C44A5A_E32CD8B8";
	protocol="application/pgp-signature";
	micalg="pgp-sha512"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5416.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2488ded-b33a-4703-361b-08d98957f096
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2021 06:01:43.9798
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MKXuiByi7cCNVltJBwaNQaBHZ8xbpvJztbYZlYOQ8GK0nArRoGkX6M2txcJr8vsT6PkZ1RZ8eZ5qxYAupfeJQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4742
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.37.102.19, xbe-rcd-004.cisco.com
X-Outbound-Node: rcdn-core-10.cisco.com
Subject: RE: [oss-security] CVE-2021-41773: Path traversal and file disclosure
 vulnerability in Apache HTTP Server 2.4.49 

--PGP_Universal_4AC93249_AE20DDF9_80C44A5A_E32CD8B8
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: QUOTED-PRINTABLE

Hi oss-security folks,

Closing the loop on this one. Will Dormann, Hacker Fantastic and I successf=
ully managed to turn this into RCE on both Windows and Linux. With mod_cgi =
(and maybe other similar extensions) enabled, Will showed he could get calc=
 to pop on Windows and HF and I subsequently figured out how to trigger the=
 bug on Linux to reach /bin/sh and POST a shell payload. Whilst the configu=
ration may not be default it's probably worth doubling down on any efforts =
to get the patch rolled out if you're affected. There's a whole series of T=
witter that I shan't bore you with but https://twitter.com/hackerfantastic/=
status/1445523890759819264?s=3D20 should be a good starting point if you wa=
nt to read back.

Tim

PS Apologies for any email mangling, first time posting here in quite some =
time and sadly corporate mail client is no longer KMail =E2=98=B9. Not sure=
 if it will become a regular habit again.

Tim Wadhwa-Brown
Security Research Lead, CX Technology & Transformation Group
twadhwab@cisco.com
Tel: +44 208 824 0239
Mail Stop UXB10/3
82 Oxford Road,
Uxbridge,
UB8 1UX,
United Kingdom
cisco.com | labs.portcullis.co.uk

-----Original Message-----
From: Stefan Eissing <icing@apache.org>=20
Sent: 05 October 2021 10:03
To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2021-41773: Path traversal and file disclosure =
vulnerability in Apache HTTP Server 2.4.49=20

Severity: important

Description:

A flaw was found in a change made to path normalization in Apache HTTP Serv=
er 2.4.49. An attacker could use a path traversal attack to map URLs to fil=
es outside the expected document root.=20=20

If files outside of the document root are not protected by "require all den=
ied" these requests can succeed. Additionally this flaw could leak the sour=
ce of interpreted files like CGI scripts.

This issue is known to be exploited in the wild.

This issue only affects Apache 2.4.49 and not earlier versions.=20=20

Credit:

This issue was reported by Ash Daulton along with the cPanel Security Team

References:

https://httpd.apache.org/security/vulnerabilities_24.html


--PGP_Universal_4AC93249_AE20DDF9_80C44A5A_E32CD8B8
Content-Type: application/pgp-signature;
	name="PGP.sig"
Content-Transfer-Encoding: 7BIT
Content-Disposition: attachment; filename="PGP.sig"

-----BEGIN PGP SIGNATURE-----
Version: 10.4.1 (Build 759)

iQIVAwUBYV6NRDZcRZUhT8VCAQpIVBAAn2GvVn146UQEPZUi8Y92eSixBcO+3iMh
8NiPDjs7XBHlqjsaH61835K3Cu0XkHodfxSu1ormZBLwURKho8JqU9omZcSXy899
RamJjsRY98O+cNBiDBj/Puia1Ay1uLdK/QvTsB6901tYXIIrqIPoqbzEGd+gWz5J
tM9Y7z2sZylYQOewktSCRrFzRytD6T7QQYLC1JcJXqPjWHEzNV1FLD5/xAZYKj0B
8kGZONwGhP2yJDJkaACL5c+pJouHZY5xu0u8y3Mjq9ARHmiEXajinrbqCGXfxCpc
TC8dw7Y/5dDBcM+gmB+aA9ZUh4WuEuHkBu7Yn2YA5ECmRgYBaJp2ukmdlK1O9wEs
68XzHE33lAQi/niefvNAgiT65KJ/9O5ZfWxoNHBNHyqfLa4Q7XD53m/z413zYRwF
3ecPH7NdHdMMeAB1ZE/Wtxrqd17TKgPHug9gFlBSRebm602L7TFqW4ii8k+XCwS5
DriEcm8FCchebxU0x4rvMshw8L51FHdxNEZivaisFygR7nonURR7KJqtP7S+Z7gH
0PgON/khhL1Q2Q9isCisiW6/5X0s704rQsmlSxkaM0grgWxP2PgHIKOBuTsdABHh
+JKXXTPIiZgXKqIqDIuYVzpGaFrjzr37w7WGyKZ9iDecE2PH+XVykArkZb2URE6n
BOstfR8cd+Y=
=ARfW
-----END PGP SIGNATURE-----

--PGP_Universal_4AC93249_AE20DDF9_80C44A5A_E32CD8B8--
