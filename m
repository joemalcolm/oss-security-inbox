X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5360" "Monday" "2" "August" "2021" "23:59:53" "+0000" "Qualys Security Advisory" "qsa@qualys.com" nil "88" "Re: [oss-security] CVE-2020-28020: Integer overflow in Exim that can lead to RCE: Some questions to the Qualys researchers who designed the exploit" nil nil nil "8" nil nil (number mark "U       qsa@qualys.c Aug  2   88/5360  " thread-indent "\"Re: [oss-security] CVE-2020-28020: Integer overflow in Exim that can lead to RCE: Some questions to the Qualys researchers who designed the exploit\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2020-28020: Integer overflow in Exim that can lead to RCE: Some questions to the Qualys researchers who designed the exploit" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9827 invoked by uid 550); 3 Aug 2021 00:00:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9803 invoked from network); 3 Aug 2021 00:00:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=qualyscom;
 bh=2/RocKWuI701xQRszBQ1MiEckJijkdYb8DTbkWIf5cs=;
 b=PDm2R1DZSCHGvrrpe1vVfr8C6w95+56dgjwvSmIiPrn7YKC1/Y1NmQ18Jj7Epq8AzwaO
 mIgXFqdy/13syvJSKfFhfyQRj0V9io5bhny/I85q/BCEu5e/0QCoHpBMaQqjcCxahFRA
 JRr6ZxFtIwSzmCcx2W4nQYSdfwLV3WqgPFv617nM24SYsnIfPlpJVqWTzyICA6/x544P
 yyQxJ7mPbn762laELIXoDPn4zbLDCDY2bKqW8zNxsb4sQbbMEVV7xyFuG7CGgbAPJM18
 VY88634kQ/ct/CJCjyofXlHUEApH2+UYqD+W+nSjgRUQmpX0a2k5elCowjGoJen+Hj83 Ng== 
Authentication-Results: ppops.net;
	spf=pass smtp.mailfrom=qsa@qualys.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SC6wbXUJZ3ZOl3fNR+A1osLpAv/KSGea6HxNzGBTDR0LoKpbKA+UFMyTvGa69l8OaWNOqBNDUSBXgkwki69vP9I5oWVym4qlsEeDYFhoswILR3dveEzWRecCXE4Z5kv8S3lKOKAuK9t7E8dYTPSQmo9/+FiXkkmMhhOtCgYdX4gHioZwPMLbsTtBC7Bm6XsY80fpLOU6146TIIB7fFxjWbfBI/sKcoa0A+RfdCo2+uiF0rFtjZ3oPGORm7kQ70rxiaP40cA1MMKUw6PRMOSCKT/8gBYM9VX7ql9b+aDdEe6TLJlHTfWaYJT0CfCqjU0l+d024LMQVeFqXTQ+N6A8aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2/RocKWuI701xQRszBQ1MiEckJijkdYb8DTbkWIf5cs=;
 b=eVtRXf++RcEpwq8pK0JfJVP7ux+LQ+v1lC7miziJPJ16o8Alk0GGoACYam/nr0m0wlDX7KQSClOxTAA6sMQy/RVj3KrJFI+eyEGzQE4dEg4a8ZAqF341mZxrabNBpGBLlc6F0sQMhtbzXI4G8Jj8MmMZj2KOl052HCGYbhQxRt+Lc7RW6hBu9zZeVuR9rHxUOkQVWyAssTN6xmwwc3+2j+68jYkTZBlZtDI+TCpVT94b6dDfDI2RGSsbfbjf8SnpHssFlOgyIlh1bU8d9StL0i53wMEMEfmLAQTzSr3yo3m7BS6djIbc3CMt1auFx9NxS3grVF/atfpU6BKCPYFo7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector2-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2/RocKWuI701xQRszBQ1MiEckJijkdYb8DTbkWIf5cs=;
 b=z1807a8HMu8aUN86RNw9w7n1ZCT6SbLGvOwFOeq7D0v5qPJMgqPgoi9MDLxsfJ8/hQOsK5Om0BPWRawWZm8NMCMjCjJkZekymmP+G0UNoTn40zVtm75+Xp+QMtBxaHbWRgF/UpAvYnMs/iEpuCzQ6v+W98jkFrYSXwfNxLwi7Du5wKASfp6iVY32s3Xqlua5gkf67N9+kFhDtf+CAU/fw8uXpROOWE9zgmwfvT29luT/sAJjzT8Z3/viYFyB9s3eSNCFaFv06v88O9vcJEJ1a2hBENnBy4VfX7FRymdVtqB86z5A8930DRcf6Ox4jPU8HOHH/OrDDY5hT3Jnw0ZyHw==
From: Qualys Security Advisory <qsa@qualys.com>
To: Jonas Dellinger <jdellinger@mail2tor.com>
CC: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] CVE-2020-28020: Integer overflow in Exim that can
 lead to RCE: Some questions to the Qualys researchers who designed the
 exploit
Thread-Index: AQHXgUNSPVwHSbV3akafPqacL4T6UKtg7j6A
Date: Mon, 2 Aug 2021 23:59:53 +0000
Message-ID: <20210802234451.GA24339@localhost.localdomain>
References: <8210b8faa036552aaa23c2b1b26b2a32.squirrel@_>
In-Reply-To: <8210b8faa036552aaa23c2b1b26b2a32.squirrel@_>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mail2tor.com; dkim=none (message not signed)
 header.d=none;mail2tor.com; dmarc=none action=none header.from=qualys.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2310f16f-1d23-42f2-c8c5-08d956119f00
x-ms-traffictypediagnostic: BY5PR06MB6740:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: 
 <BY5PR06MB6740ADC6D13B02553206DE1BD5EF9@BY5PR06MB6740.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 kB3/5f+yFqJuUHXhc4ZrKJbfXp72tRIB3S7LwcYbPgZhx/Z06RTiK7mM2SPOEyImLE8Kmb/I3Al8v21CXvBcVvfp0ksUU2786J1KRFzeLCazVuxUJbN6lyJHdAyyqfMdv7uOYM5h1TnnNRgbjSjxuTUvTeUT0JixMqDxxNG+exEixoe+UJr7SXj2q2cm2mRNz2Fk/DguaHmwWBCgCqdIEDu506hFBueRwWtBts6nwN5fpdna43nzpjEEgp5d3K9p66GZjSljis7NYLrBDnTqgZyovIB1ndZm+Rq9lrwGG3yG8tE3RbbwcmLfPOQl6bP1+XcuLmlzSpKnlLVWRf9GUgROBumq4kGpeF4NV8tN0FqgtzF7Pr5jbEd8B1y4r/42j9FcvWWw4ggPKd5Eg560SiV0OP3iN9tBRsVM6vhONCX/vntZKLtT8GeNYx2xm8/4Nrg/4qznTZXxd/WuXMOB09izpEqf5NJEmiXp5dWoj4EpoTZA0pXuXJouNcSYfBXoqK7aKR7gmQKD9qjzazI2gXgKZHHGMB46Vt8fQb5fu6pqvp3Vr0/LWasQKtmFTNf2wELQl1AdXwphGjLVPikOysREJBgifz733XLYn/ibjYjVa0RPC7yqteZo9CEq5khSViaBeTmLaTDkFNR9PorBA8HXph8BZW1rwq+PjvNVl3gfHCKFesVjg7TUzDZN6gWMZgCxb3V68lGWRaDo7l5JYYYw3d1D+rOrAyxORG8G/Lq9YAz0jb+J7+LUood3d7NJ
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(396003)(136003)(366004)(39860400002)(376002)(346002)(1076003)(8936002)(8676002)(26005)(6506007)(15650500001)(38100700002)(186003)(6916009)(122000001)(38070700005)(316002)(6486002)(83380400001)(6512007)(9686003)(33656002)(66446008)(86362001)(478600001)(66556008)(71200400001)(76116006)(2906002)(64756008)(66476007)(66946007)(5660300002)(4326008)(131040200001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?U1BKRUJMV21JOWhUTmVaL1dnOGtuenFwVUhka1N5dFI0MHVnbmNQc292Wlgv?=
 =?utf-8?B?dnY1S0ZISXd0SzRCdmN2SUNMVFA1aHErNzU2UU03RUxOYmVQL2QyRlJaWU1T?=
 =?utf-8?B?SFNLQU9TMkJYN2Q2UnBxWS92bzFXdUJUNXFUYzgvc3NZN1lodHVXK3Y5Smk5?=
 =?utf-8?B?ZWthZmJ3MGFqVG1kS0JNZTVBajBrVHJDQm9sL0QyUnBlbHFCOE1jUHkwazBM?=
 =?utf-8?B?RG12UVhUelRRK0YxZkRyMjljb2NDS1FDQzNQRkpGTXRySFZ1Q21DSzZFZjd0?=
 =?utf-8?B?V0xjM2pWS2dCeERCbFhhZWo5dTcxTXJJendWdDhLaEdMZ2RLUlF0RUk5MVBa?=
 =?utf-8?B?TWxuUWludlZxWFh2dkFxdUh0MEkzWXFtVlY0bjVhdHJOWmZzMkQxQTdoYTFE?=
 =?utf-8?B?eXIxQ1pVM3ZRRk1USFhXcmFZYXBycnovaVYvc1dSUGZ6YlVJWldYMXJFcG94?=
 =?utf-8?B?djg5MUtDcG1vMDZyY0dYbEw2SHYyR0pQcllaSklNNUk3TCtpRTNvZHZlL25J?=
 =?utf-8?B?WVZVRXpHUGdweFF6T0I5VlFJWmFSb3c3Q1JidWozTmJCRlBiTFJTMWdDOHA2?=
 =?utf-8?B?VlM2WUloUFc0b2ZSNnB0UEFHL1ViNXQ5UFBqeVRubWEvNk53RzQwNTZkSzdZ?=
 =?utf-8?B?V05hZmRGWDg1VWhFOE0waGkxZnJSZUV4N3dyejB4WkM0a29FR1loblQ1emd3?=
 =?utf-8?B?akJWRGRURkxHMStJbkt1alA1bmVjR29RRFQ5NlNPM3ZPcklRaVVXWW1LL3Fz?=
 =?utf-8?B?cVBsTm44alpWa3NZL0UzTDQ2K1IweTZjN1Y3MkZIM1ArYk9YbHJjV3graWdY?=
 =?utf-8?B?S2R5SndvY3p6REpRNklORDNQNXBIUmRrVkVUWmZuM01HMzJiODJtSnRSSDNp?=
 =?utf-8?B?bk85ZnpEQjIvbkNsOHg2ZFFwOU1lYmtiTk5IU01nYWNyYTBKUFNHSkJKa2hl?=
 =?utf-8?B?aVUvalljZGZYV2lVaGVoQlNxNGM4SkZDVmFiM3cwSnRaYmZHdUhDY213QVFG?=
 =?utf-8?B?QS9YUWhzTGhwRFNENVRUcXV1M2ZKR1pOcTJlZnNoS1dPa3JDTFYyL2RMTUYz?=
 =?utf-8?B?SkRYaGVGNHh6N2N5clRRY1A1dGJ2aGdiNFNaYThrdGJqSkhVdnVEQUtzMGRK?=
 =?utf-8?B?elA4M08vM0p5dlZxUnMyZXV3aXdvYkVZKzYzbi9PV3ZWNjZuNXExUVBYQWpp?=
 =?utf-8?B?NnZBZ0liSjgzVkRlS09IdEwvWU1OdjlNcE95V2wwZm80bUVtWFB6VGRPTFdU?=
 =?utf-8?B?SmtoRExQbEp6ZFVFZTF1WmJlaGw2ZC9ZT2JnaUl1VUdFR2ljUG00UEJjRkND?=
 =?utf-8?B?NlhodXU1UW5hWDV3UTZNcGtUMk9xSzJmdEpzNUtJM3hkRHZtYjZpUFB5RTdw?=
 =?utf-8?B?eVRWS1VwUHVlTUluNFhMOHVwZk9RNC9HbkU0NU9Nb3lCYWVLa2ZsdEpkMTRB?=
 =?utf-8?B?UEo1cHE5VngyOGlSVGhGRFFscGdyM3FKMHZxUExFOEpRWWcyeVVSRHUvNWgw?=
 =?utf-8?B?Uk8wYzVubzRiaXY3WG5UYi8yL2Q5QlZmZ3h0TW5GdlR2WmNZNUhWWFpXQXFw?=
 =?utf-8?B?WjRpa0JzaExlcFJ4RHZ5djV2QytLTEJPMlFkeGhveno2NXI3cXF6SmMzUE1w?=
 =?utf-8?B?MUVLUFVQTlpIVGF4Y0M4aExQQWhrbW5OdGZRZERQMVB0OElQdmZLY3BBVTZP?=
 =?utf-8?B?S3VSTThMcmJDRUhxR0V3ZXU5UDh1akhEdUZwd1hZQWVMaHZmNEhlMEtpbnZG?=
 =?utf-8?B?ekcxNFBYUjE4cTVRcHc2RHlIZEJZbURqUXRXWHFSTXdYMlZtL1llblI5dkg1?=
 =?utf-8?B?MHVQR0lEQXFkMWw4bXRYdz09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <DA6EE545AB06744499A1984C09ECF2C9@namprd06.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2310f16f-1d23-42f2-c8c5-08d956119f00
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2021 23:59:53.1428
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /ZoW3cykE2RULlnJIldDZHKQeAplgzW7FmQ5rO04xHMJhQ5Poeet095sZCKaIU1YwIhPGo4WtcWZvAiwJn/ygNE/2PYXsGqcUOuZDDkU0go=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR06MB6740
X-Proofpoint-ORIG-GUID: Sq2ktwXSaDCZAjFIA4tPRr2Nkna41fyK
X-Proofpoint-GUID: Sq2ktwXSaDCZAjFIA4tPRr2Nkna41fyK
X-Proofpoint-SPF-Result: pass
X-Proofpoint-SPF-Record: v=spf1 include:_spf.qualys.com include:spf.protection.outlook.com
 include:spf-001ca501.pphosted.com include:stspg-customer.com
 include:_spf.salesforce.com include:emailus.freshservice.com
 include:mktomail.com ~all
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-02_07,2021-08-02_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=inbound_notspam policy=inbound score=0 lowpriorityscore=0 adultscore=0
 mlxlogscore=999 spamscore=0 priorityscore=1501 clxscore=1034 phishscore=0
 impostorscore=0 mlxscore=0 suspectscore=0 malwarescore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2107140000
 definitions=main-2108020152
Subject: Re: [oss-security] CVE-2020-28020: Integer overflow in Exim that can
 lead to RCE: Some questions to the Qualys researchers who designed the
 exploit

SGkgSm9uYXMsDQoNClNvcnJ5IGZvciB0aGUgbGF0ZSByZXBseS4gT3VyIGFu
c3dlcnMgYXJlIGlubGluZWQgYmVsb3cuDQoNCk9uIFN1biwgSnVsIDI1LCAy
MDIxIGF0IDA5OjIxOjMzQU0gLTAwMDAsIEpvbmFzIERlbGxpbmdlciB3cm90
ZToNCj4gV2hhdCBkYXRhIHByZWNlZGVzIGhibG9jayBhbmQgaG93IGlzIGl0
IGNvbnRyb2xsZWQgYnkgdGhlIGF0dGFja2VyPw0KDQpJbW1lZGlhdGVseSBi
ZWZvcmUgaGJsb2NrLCB3ZSBzdG9yZSBtYW55IGZha2Ugc3RvcmVibG9jayBz
dHJ1Y3R1cmVzDQooInxOfEx8TnxMfE58THxOfEx8TnxMfCIgaW4gb3VyIGFk
dmlzb3J5KS4gQSBzdG9yZWJsb2NrIHN0cnVjdHVyZSBpcw0KanVzdCBhICJu
ZXh0IiBwb2ludGVyIGFuZCBhICJsZW5ndGgiIHNpemUuIE91ciBmYWtlICJu
ZXh0IiAoTikgaXMgTlVMTA0KYW5kIG91ciBmYWtlICJsZW5ndGgiIChMKSBp
cyAweDcwNTA1MDUwNzA1MDUwNTAuDQoNClRvIHN0b3JlIHRoZXNlIGZha2Ug
c3RvcmVibG9jayBzdHJ1Y3R1cmVzIGluIHRoZSBoZWFwLCB3ZSBzaW1wbHkg
dXNlIGENCm1haWwgaGVhZGVyLiBJbiBvdGhlciB3b3Jkcywgd2Ugc2VuZCBz
b21ldGhpbmcgbGlrZToNCg0KcHJpbnQgImhlbGxvd29ybGRoZWxsbzoiOyBw
cmludCAiXDBcMFwwXDBcMFwwXDBcMFBQUHBQUFBwIiB4ICg0MDk2LzE2KQ0K
DQo+IEhvdyBkbyB5b3UgcmVtb3RlbHkgbWFrZSBhbGxvY2F0aW9ucyB0aGF0
IG92ZXJ3cml0ZSB0aGUgZGVzaXJlZCBwb2ludGVycz8NCg0KVGhyb3VnaCB0
aGUgYnVmZmVyIG92ZXJmbG93IHRoYXQgaXMgYSBuYXR1cmFsIGNvbnNlcXVl
bmNlIG9mIHRoZSBpbnRlZ2VyDQpvdmVyZmxvdyBpdHNlbGY6DQoNCk91ciB0
aGlyZCAxR0IgbW1hcCBibG9jayAobWJsb2NrMykgb3ZlcmZsb3dzIHRoZSBp
bnRlZ2VyIGhlYWRlcl9zaXplLA0Kd2hpY2ggYmVjb21lcyBuZWdhdGl2ZS4g
QXMgZXhwbGFpbmVkIGluIERpZ3Jlc3Npb24gMWEvIG9mIG91ciBhZHZpc29y
eSwNCnRoaXMgcmVzdWx0cyBpbiBhICJmb3J3YXJkLW92ZXJmbG93IiAoYW4g
bW1hcC1iYXNlZCBidWZmZXIgb3ZlcmZsb3csIGluDQp0aGlzIHBhcnRpY3Vs
YXIgY2FzZSk6IGlmIHdlIHNlbmQgbW9yZSBieXRlcyBpbiB0aGlzIHRoaXJk
IGhlYWRlciAoYWZ0ZXINCnRoZSBpbnRlZ2VyIG92ZXJmbG93KSwgdGhlc2Ug
Ynl0ZXMgd2lsbCBvdmVyZmxvdyBtYmxvY2szLCBpbnRvIG1ibG9jazINCmFu
ZCBtYmxvY2sxLg0KDQo+IElzIG15IHVuZGVyc3RhbmRpbmcgY29ycmVjdCB0
aGF0IHlvdSBvdmVyd3JpdGUgdGhlIGZpcnN0IGJ5dGUgb2YgbWJsb2NrMSdz
DQo+IG5leHQgcG9pbnRlciB3aXRoIHplcm8/IEhvdyBkb2VzIHRoYXQgZW5z
dXJlIHRoYXQgaXQgcG9pbnRzIHRvIHRoZSAiZmFrZQ0KPiBzdG9yZWJsb2Nr
IiBzdHJ1Y3R1cmU/DQoNClllcywgd2Ugb3ZlcndyaXRlIHRoZSBmaXJzdCBi
eXRlIG9mIG1ibG9jazEncyAibmV4dCIgcG9pbnRlciB3aXRoIHplcm8uDQpP
biB4ODZfNjQsIHRoaXMgZmlyc3QgYnl0ZSBpcyB0aGUgcG9pbnRlcidzIGxl
YXN0IHNpZ25pZmljYW50IGJ5dGU6IHdlDQplZmZlY3RpdmVseSBkZWNyZWFz
ZSB0aGlzIHBvaW50ZXIsIGJ5IDI1NSBhdCBtb3N0LiBTaW5jZSB0aGlzIHBv
aW50ZXINCmluaXRpYWxseSBwb2ludHMgdG8gaGJsb2NrLCBhbmQgc2luY2Ug
b3VyIGZha2Ugc3RvcmVibG9jayBzdHJ1Y3R1cmVzDQppbW1lZGlhdGVseSBw
cmVjZWRlIGhibG9jaywgdGhlIGRlY3JlYXNlZCBwb2ludGVyIHBvaW50cyB0
byBhIGZha2UNCnN0b3JlYmxvY2sgc3RydWN0dXJlIHdpdGggaGlnaCBwcm9i
YWJpbGl0eS4NCg0KKElmIHdlIGFyZSB1bmx1Y2t5LCB0aGUgcG9pbnRlcidz
IGxlYXN0IHNpZ25pZmljYW50IGJ5dGUgd2FzIGluaXRpYWxseQ0KYWxyZWFk
eSB6ZXJvLCBhbmQgb3VyIHBhcnRpYWwgb3ZlcndyaXRlIGRvZXMgbm90IGFj
dHVhbGx5IGRlY3JlYXNlIHRoZQ0KcG9pbnRlcjsgaW4gdGhpcyBjYXNlLCB3
ZSBzaW1wbHkgcmV0cnkgYW5kIGFsbG9jYXRlIG1vcmUgbWVtb3J5IGF0IHRo
ZQ0KYmVnaW5uaW5nIG9mIHRoZSBoZWFwLCB0byBzaGlmdCBpdCBzbGlnaHRs
eS4pDQoNCj4gV2h5IGRvZXMgdGhlIFBPT0xfTUFJTiBhbGxvY2F0aW9uIGNv
bGxpZGUgd2l0aCB0aGUgcmF3IG1hbGxvYygpIG9uZT8NCg0KRnJvbSBtYWxs
b2MoKSdzIHBvaW50IG9mIHZpZXcsIHRoZSBlbmQgb2YgdGhlIGhlYXAgKHRo
ZSAidG9wIiBjaHVuaykgaXMNCmEgbGFyZ2UgZnJlZSBjaHVuayBvZiBtZW1v
cnkgd2hlcmUgbmV3IGNodW5rcyBjYW4gYmUgYWxsb2NhdGVkLiBGcm9tIHRo
ZQ0KRXhpbSBhbGxvY2F0b3IncyBwb2ludCBvZiB2aWV3IChhZnRlciBvdXIg
b3ZlcmZsb3cpLCB0aGUgZW5kIG9mIHRoZSBoZWFwDQppcyBhbHNvIGEgbGFy
Z2UgZnJlZSBjaHVuayBvZiBtZW1vcnkuIEluIG90aGVyIHdvcmRzLCBvbmUg
YWxsb2NhdG9yIGNhbg0KcmV0dXJuIHRoZSBzYW1lIGNodW5rIG9mIG1lbW9y
eSBhcyB0aGUgb3RoZXIgYWxsb2NhdG9yOiBvbmUgYWxsb2NhdGlvbg0KY2Fu
IG92ZXJ3cml0ZSB0aGUgb3RoZXIgb25lLg0KDQo+IEkgdW5kZXJzdGFuZCB0
aGF0IHlvdSBtYWtlIHRoZSBlbnRpcmUgaGVhcCBsb29rIGxpa2UgZnJlZSBQ
T09MX01BSU4NCj4gbWVtb3J5IHVzaW5nIHRoZSAiZmFrZSBzdG9yZWJsb2Nr
IiBzdHJ1Y3R1cmUsIGJ1dCBob3cgY29tZSB0aGF0IHRoZQ0KPiBzbWFsbCBQ
T09MX01BSU4gc3RyaW5nIGxhbmRzIGV4YWN0bHkgb24gdGhlIGxhcmdlIHJh
dyBtYWxsb2MoKSBzdHJpbmc/DQoNCm1hbGxvYygpJ3MgdG9wIGNodW5rIGNv
aW5jaWRlcyByb3VnaGx5IHdpdGggRXhpbSdzIGxhcmdlIGZyZWUgY2h1bmsg
b2YNClBPT0xfTUFJTiBtZW1vcnkgKGFmdGVyIG91ciBvdmVyZmxvdykuIElm
IHdlIGNhcmVmdWxseSBjaG9vc2UgdGhlIGxlbmd0aA0Kb2Ygb3VyIHN1YnNl
cXVlbnQgRUhMTyBhbmQgTUFJTCBGUk9NIGNvbW1hbmRzLCB0aGVuIHRoZSBs
YXJnZSBtYWxsb2MoKQ0Kc3RyaW5nIGNvaW5jaWRlcyBleGFjdGx5IHdpdGgg
dGhlIHNtYWxsIFBPT0xfTUFJTiBzdHJpbmcuDQoNCkhvcGVmdWxseSB0aGlz
IGhlbHBzISBXaXRoIGJlc3QgcmVnYXJkcywNCg0KLS0NCnRoZSBRdWFseXMg
U2VjdXJpdHkgQWR2aXNvcnkgdGVhbQ0KDQoNCltodHRwczovL2QxZGVqYWo2
ZGNxdjI0LmNsb3VkZnJvbnQubmV0L2Fzc2V0L2ltYWdlL2VtYWlsLWJhbm5l
ci0zODQtMngucG5nXTxodHRwczovL3d3dy5xdWFseXMuY29tL2VtYWlsLWJh
bm5lcj4NCg0KDQoNClRoaXMgbWVzc2FnZSBtYXkgY29udGFpbiBjb25maWRl
bnRpYWwgYW5kIHByaXZpbGVnZWQgaW5mb3JtYXRpb24uIElmIGl0IGhhcyBi
ZWVuIHNlbnQgdG8geW91IGluIGVycm9yLCBwbGVhc2UgcmVwbHkgdG8gYWR2
aXNlIHRoZSBzZW5kZXIgb2YgdGhlIGVycm9yIGFuZCB0aGVuIGltbWVkaWF0
ZWx5IGRlbGV0ZSBpdC4gSWYgeW91IGFyZSBub3QgdGhlIGludGVuZGVkIHJl
Y2lwaWVudCwgZG8gbm90IHJlYWQsIGNvcHksIGRpc2Nsb3NlIG9yIG90aGVy
d2lzZSB1c2UgdGhpcyBtZXNzYWdlLiBUaGUgc2VuZGVyIGRpc2NsYWltcyBh
bnkgbGlhYmlsaXR5IGZvciBzdWNoIHVuYXV0aG9yaXplZCB1c2UuIE5PVEUg
dGhhdCBhbGwgaW5jb21pbmcgZW1haWxzIHNlbnQgdG8gUXVhbHlzIGVtYWls
IGFjY291bnRzIHdpbGwgYmUgYXJjaGl2ZWQgYW5kIG1heSBiZSBzY2FubmVk
IGJ5IHVzIGFuZC9vciBieSBleHRlcm5hbCBzZXJ2aWNlIHByb3ZpZGVycyB0
byBkZXRlY3QgYW5kIHByZXZlbnQgdGhyZWF0cyB0byBvdXIgc3lzdGVtcywg
aW52ZXN0aWdhdGUgaWxsZWdhbCBvciBpbmFwcHJvcHJpYXRlIGJlaGF2aW9y
LCBhbmQvb3IgZWxpbWluYXRlIHVuc29saWNpdGVkIHByb21vdGlvbmFsIGVt
YWlscyAo4oCcc3BhbeKAnSkuIElmIHlvdSBoYXZlIGFueSBjb25jZXJucyBh
Ym91dCB0aGlzIHByb2Nlc3MsIHBsZWFzZSBjb250YWN0IHVzLg0K
