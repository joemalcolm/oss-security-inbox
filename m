Received: (qmail 11908 invoked by uid 550); 22 Apr 2022 18:16:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3863 invoked from network); 22 Apr 2022 17:49:51 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HqjMKMk+WBntIR5XFs+VPdzwetMQOyBMkCIE4O36CegHnN0+2e/7+8KKeuWNALHvImhkcjpvDKtavz+E//9hJX0yd2nVwUBjBX8uTqMnCInfBRs8t9oAKF/1hQzTbpWpZlTDySJT9SHAXXmaD1Q1D4KrSC8Nz/x2AFlcDKXNpYVVXBr68zaB/+mMDDJmC3MPMSgiM7ti165co3oYIsOz6H/D3ciE5WLhN3MGAx80jcFCjWiuaKLB0kvsoKoZexhdpGwHGyswy0qqMVc3QQ2j/0rmiq6XfOoimQ4KasFiEo+L1/l0sE/Owni8r31moi61iuF8gPXWdkFn/c29IxziIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YA1fgFneHMisWA/9AIKlOWkEEeSfs00b88pmWD2W9IY=;
 b=HZrpVgIvik9FzFWRAihcxM6c719xsLri3msNLMGnS64TfomrcpFOguC3AcdGoXRcmBa48LATEpGnV3gf2WaFOCktOJhKBBTq7j3Oi/VkTSamCtLmhNVJjZGTRu4JMGoPIzscZMEx65KvxQFuoEnK1keb57LrEO05ouOGfijdpinUI6lYeMBu5QNE3H0S/rgc9t8GiW3hfuEvDk+dmDd2q29VMnHHFKKSMJcOSHfpR7R0SM5YJIFlTQRx+jX8gik84XCt5eQJ1p1IJxoAGMzZGCEuk19OeHoAyBwhbBgG1dG/8fJXIRTeOZ/16ZBRcsleW+B91707Dxfr1q4L+pPsmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sdbor.edu; dmarc=pass action=none header.from=sdbor.edu;
 dkim=pass header.d=sdbor.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdbor.onmicrosoft.com;
 s=selector1-sdbor-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YA1fgFneHMisWA/9AIKlOWkEEeSfs00b88pmWD2W9IY=;
 b=iznA/XeZOVCHHw2GJKmkvDAVxnDDejMhQkPowd/XupCCOwT1zIpyDpyMjFDGI09jo2btHaAGwLuUWtGaU9TdnkP9wkz7hil2/mQ6pcsBmuATjGuTBcv9XwvQYdGLNRDvG2RcgnZ7+vv+XoIvGEigSDfHwdpk8G29l6j1ZfxOBGM=
From: "Myers, Christopher" <Christopher.Myers@sdbor.edu>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE-2022-29464 :: WSO2 Unrestricted arbitrary file upload, and
 remote code to execution vulnerability.
Thread-Index: AQHYVnFV1044gdHhoU6137E7pHbLlA==
Date: Fri, 22 Apr 2022 17:49:37 +0000
Message-ID: 
 <DM5PR14MB146504CDA1924C1B6B2479AEE1F79@DM5PR14MB1465.namprd14.prod.outlook.com>
References: 
 <CABdrxGD6zODRKXUuVGgpA-2P-hN_17WerU4f+NZh3ShMPzqfmQ@mail.gmail.com>
 <CABdrxGCAksdYgwgf4H1-7V6W9yBM=J=_YLoHDCikD5NT-D1OiA@mail.gmail.com>
In-Reply-To: 
 <CABdrxGCAksdYgwgf4H1-7V6W9yBM=J=_YLoHDCikD5NT-D1OiA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 7d9e381d-8a60-5235-22d4-6129b0bc0800
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=sdbor.edu;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ff6c8e8d-6da3-4dea-ac25-08da248877d9
x-ms-traffictypediagnostic: PH0PR14MB4517:EE_
x-microsoft-antispam-prvs: 
 <PH0PR14MB4517FE80E41460EDE90CB4ECE1F79@PH0PR14MB4517.namprd14.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 IMCOSrapoh6Z1G6dWvomyZMiYiFd61AlYkysJpk1Eo8/5ft4WAsA22k4odOKXxV5WPCXuy87mnVKwBUAp0o/OOpkwqvRDKtKhLx0MuGQpK7S0brEHIxs7Vr4I4QoUAqi/31BBdlAb2lMeo6U8mfZqFgsWLhz+bWAF0jfAbGz0RnbMDVvAAdKiSN+29PxaiUNPCSObLgwp+xqMrmW9WOw2Ap5ouaKrjw2dy+pa/YT/Y1rGsflYI+Ggh3FOKBaU60koi6tn0TZBcFd7CBK60GNno0B0rda8UhPnJfFN79U3oQAfKzCDgLxCC7HaBhk78U86vM7qOK+uaHOPGHpDITduD0dC5Gz5IszJUi/0gvq7hAJdzOIPRxiKgDxgZQd9H1qsUy90i+j18jQoH+ZELaq4/bT0VzcblZUvf34KR0sg6m6GGb9ueTG0JTPSh5OL8HcUJ9kIDlDckh6bymzePK+8q+/bBRdXYCYNd60pRMF8RMQqfi7PLfhjoil+klGkKOt8ux8ezeuJFSTtktW6e0Y4manR3zN7U7DILLSMF+XKSwI+7Ff6v5GGpdXn9oCoqcTYkaEiYxcFmXb6UEAnjaQBWDOL5wMxoM9ADUzBI1zo4o5WSDkrvW+A01tolaboITmlEFczwuhVBUYvhV9i1Z+PqZVB19ZNb7Ls7PEkEyt+eacNqYdl8JBo3Jy4xRt95U7ntPcoDTxK8wOXlZKBKs4NHe0i+UrGjrsEnwxEulZS6fEEinHLXNSif9XhtwhDR2oy8WXfX8+JbYXdmShOUiy8LRCZ9b1+OqGlRKCHi90uCk=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR14MB1465.namprd14.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(39840400004)(366004)(346002)(396003)(376002)(136003)(26005)(8936002)(4744005)(83380400001)(66556008)(66446008)(66476007)(66946007)(166002)(86362001)(76116006)(19627405001)(8676002)(64756008)(508600001)(52536014)(71200400001)(33656002)(122000001)(186003)(38070700005)(7696005)(38100700002)(5660300002)(9686003)(6506007)(966005)(2906002)(55016003)(786003)(6916009)(316002)(75432002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?bF39+oqXcDOQaaWxg7lN426cheipWk0u9db9DtV+brcOeVFQVT5KflYPor?=
 =?iso-8859-1?Q?+Ii3JeKYSsMm2cYhNIonqzY0U44lNp0RnO2/uuWqPMkMche4FZpToGRfxk?=
 =?iso-8859-1?Q?sU+YQwvUmmyvLCYVfoLdlwZDkYjXdkdT7VA13Bl/SL+2Q3E37idst5RIK0?=
 =?iso-8859-1?Q?bO8/H8dzaAjgPG1BXaQaAzfBXXHhxXsl7eaxSksNBcdUoivPPkmVZP9/tP?=
 =?iso-8859-1?Q?Qd51IHFKSk7NqVQhMa2nBXMkTY94knLQCy/70NyWvPtK0JDD4iD8ztoW8t?=
 =?iso-8859-1?Q?IQECqoszG1AW6fk1TN6PP3z8R31z3wYSv7nidlrI6A1anGPJpPzs5clPEv?=
 =?iso-8859-1?Q?APRug/Qb0EnY75o9hcLDg4Y9OF9cJ1I3fVe9a/gP7yel8tpy5pTwOtdiFV?=
 =?iso-8859-1?Q?Ladr95DxzUBP2Q1K8qHJTr1dzZ4grzb8aDQ8rNvhYNDk5xO+hpByPdiICY?=
 =?iso-8859-1?Q?tXkCPNexkmH1XcGTP4U2FaFyhlpxFBAzJDVrohn1uwY9O8z9SK9Aoznl+G?=
 =?iso-8859-1?Q?oM9nLD3yi0O+86SWErytENK/6qIdenCiiv3KUjtrlToikV4rQ4h79UXdRq?=
 =?iso-8859-1?Q?CawOrusoRY5P5xnnTCX9zLQYJ0G/LTbsZZIgowgFCTEUzf6B5GMN8WfEr7?=
 =?iso-8859-1?Q?Wl8+Q88Mg2VmhU6lR5yclJFgvb8RXSktxL4jUl6gE6TAiLrsc+LMvH1hdM?=
 =?iso-8859-1?Q?PkoUKMG3qVjwUEWOkWMz4efGCLOQ3GBWMZWJTkk5HX2LX05mVAFP1VXfSr?=
 =?iso-8859-1?Q?E+oTv/RMc9PsIShXzwaMWtCGm++81ImqQR7hVgW/hHK2kgpkiRmyehx0xP?=
 =?iso-8859-1?Q?NB2u3RBDGefJNu/3NKfMJ4p5FJcvW4ynfFwE22AZKxOjeBYpJzYnKyKJ5b?=
 =?iso-8859-1?Q?fABpDEwTptzV6kFTSA9RJafPJYqQrU4boC8mvVFZGK7Ecw8p+kFmrH5HHA?=
 =?iso-8859-1?Q?kZ0h8cusYIEYcR54S7Wces3wENm0zdXVyuWDLu0GePPSRbO/RKwSQ9mUj7?=
 =?iso-8859-1?Q?WrmxBcUdRId3VsXZhxUXBZvYw+D3izF0K+9MFZTOMZ+9GLr/0f6s7bsnfI?=
 =?iso-8859-1?Q?SRofynnNi3qB+4Vivq85TWHdLdcvW5iWkrIh7m+2LX8iwlcSGG9/gLuJD0?=
 =?iso-8859-1?Q?xQHmjaVzS5uylMSRvVNrdAw0YtXzy9HNmcu6NeNHQOZNKSburL606y1fIk?=
 =?iso-8859-1?Q?gcjN4m3+JYawtJMKzyXdxJI//CDol8EhD/A87hIHITfFAB3npmQIKK1kKV?=
 =?iso-8859-1?Q?uUWK22vxjkzffa8VVZzOIYgiio6sjfWmiC+9ujSj5PDfYWGm2zaersncpK?=
 =?iso-8859-1?Q?KtXIAXHdBlOcH60udeOv3akbVNC7lSvfx+rOs1SJDCDTq0f1dexp2oh39A?=
 =?iso-8859-1?Q?UqwkNYWy8k2ig1Pg5mkUbTTOEboOLzvhSpOirgJMbn/bW0htZNMffm/zv0?=
 =?iso-8859-1?Q?+KT7lqfmyzug8x+ykqehCOYPaefzPwtZDnyil4A84jKqqTw/xpAGuY+NFV?=
 =?iso-8859-1?Q?7oZqAW/XD4dNEdtEVy29BGKBlgU0QpzBF+qViAh7uSedFW8Cv+kFTvRjUV?=
 =?iso-8859-1?Q?oX+1qMqP/JTYyxPfqYJp18JoTyqNBqKAatFG6FbcWbtGceRG0QXdfTPWoy?=
 =?iso-8859-1?Q?Mza/PtktAFPIPZHvUS15Vs8Tgv/eyEcVVGjyAzFp8B/lNZh27Vbpmyzhi8?=
 =?iso-8859-1?Q?JnOIiyudJstcHIB56hmsEu7Mfx1lh9Qz5BmITgQurLuD2TBG4qTd616DSi?=
 =?iso-8859-1?Q?9wI5Z7dwpLssBl0K/HF9x9X/OETMj9EuVDJk90KG03XwdXWUAAA4okjarq?=
 =?iso-8859-1?Q?dOiy+fsoYYVYV6jotsBsgjyUGYpi+LY=3D?=
Content-Type: multipart/alternative;
	boundary="_000_DM5PR14MB146504CDA1924C1B6B2479AEE1F79DM5PR14MB1465namp_"
MIME-Version: 1.0
X-OriginatorOrg: sdbor.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR14MB1465.namprd14.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff6c8e8d-6da3-4dea-ac25-08da248877d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2022 17:49:37.0940
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d4ce7879-9b8d-4aab-9dc5-9271c8455e07
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mnDxYPNK6zwB3pmTJFLv/D0I8bGcfHgsORzoFl9uXXmOaLqAsz2xZK8qoCB2uxTFdIiVILoLvxbXJOPhrBt7uzqeWRAEAOXITl5e0AEuPb0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR14MB4517
Subject: [oss-security] CVE-2022-29464 :: WSO2 Unrestricted arbitrary file upload, and remote
 code to execution vulnerability.

--_000_DM5PR14MB146504CDA1924C1B6B2479AEE1F79DM5PR14MB1465namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I have not seen this come across the oss-sec/CISA/DHS emails at this point,=
 but anyone using WSO2 or a derivative needs to check this out right away.

https://docs.wso2.com/display/Security/Security+Advisory+WSO2-2021-1738

https://nvd.nist.gov/vuln/detail/CVE-2022-29464

Good writeup and PoC code here: https://github.com/hakivvi/CVE-2022-29464

--_000_DM5PR14MB146504CDA1924C1B6B2479AEE1F79DM5PR14MB1465namp_--
