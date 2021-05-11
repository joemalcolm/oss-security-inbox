X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1761" "Tuesday" "11" "May" "2021" "22:22:19" "+0000" "Qualys Security Advisory" "qsa@qualys.com" nil "29" "Re: [oss-security] [CVE-2020-28018] Use-After-Free on Exim Question" nil nil nil "5" nil nil (number mark "U       qsa@qualys.c May 11   29/1761  " thread-indent "\"Re: [oss-security] [CVE-2020-28018] Use-After-Free on Exim Question\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] [CVE-2020-28018] Use-After-Free on Exim Question" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26104 invoked by uid 550); 11 May 2021 22:22:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26083 invoked from network); 11 May 2021 22:22:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=qualyscom;
 bh=zcXPjYa6Fa7RYiupAu2MO+6hxdDPre9UUTduE3VINmI=;
 b=waOZ2Rdiw9O1vY4rHOKnk/Gw9Q0qY9uRfk2MAA4y9+qOzxgG/mef1Gfosw/BydMjf3Wx
 iFsSTOguzVNcWIadbTudrBndtU0N0mlZGo1KrBLQOS+CAYPScFg8DSmL8Ju1Esl+BSG3
 wjSG8ShZ7P10C26n3+bMgvdDrLx8wtSNi/uyr9xmIbk3dTxJPYg0rGPCjgpt5j1TvzT9
 FIcHg+/OE+RXz/RolBFFnUcUMuXU7AmBCHGyRRz1Nk8UgZ0P//28f7HTjRKm8kl7ITui
 nrcyn0NtoABD7rLX2FN6C5xqEowpcQAalE0ICOA8R5egLS2nrcn5K7Tk5H0yHrW5yotS 6Q== 
Authentication-Results: ppops.net;
	spf=pass smtp.mailfrom=qsa@qualys.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GjaCpESJBox7Y/TRw2aXR93IcKhm8AYho9DPjFl3SjQ47bz7xE1eOLdakj2tyXbdTe4pbOqkMyBzkKwrkp+Oyu5Fdt459D9v50pauR+zDMfFyklzODtrK5PKrY17EnrKZv2do1pA8aH08frKGYHxme9zXRcRIG5AWqd8QfWgAw0ocSllzVceld957K6SqUswNdCkP+fi+DRiRUN7vC2/RZxZZzIVTJzBulYicXtYdR67b3Um3gOL5/LkKY/xl2HPC7e2NT8AJXre0INHaYIjB8vsvaCmyDKlDK2p5PgxKPHjF3npNeT/AdaGfBMnKCy19+MvaDUs/PvvX00sB5RysA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zcXPjYa6Fa7RYiupAu2MO+6hxdDPre9UUTduE3VINmI=;
 b=kJE8p/CSgtUOSwIWkJvwyOwwIdukVxxD9Dy7aMS9aa69BkJHsQH1kGZ8cn5FwDa1z40HgtQ4SpekrOuiJ6toTgoakbT0SrHfb4mzQwwa+ihSyC3DCDJEnDlmJYr+EgbyHhwPPsLGWxAXnp+cnhPzGOmNebw23nkceNQrewzzpMrfOkGvToi6Ys7zB24JG1xpAQwd9vFvWzvtAPTSG7zjDCV26JHrmWxmaVT7PA+HAt48sHdY41bidR9IgMD3po39L2ui8P7LV5Z04/+1hFUE1CBQNbSHiDZqOQOFdQJs+0RaAneOVPdO4cQXVRlijl2/cQmi/tIHS2n5W4cMvOAhTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector2-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zcXPjYa6Fa7RYiupAu2MO+6hxdDPre9UUTduE3VINmI=;
 b=q8qYRO3xERqPI1wWgMebwVgsRXguJHPfWxtILOGHseNP7SGL6i91/AkZa74O91HOQyy73sX0jvX0ulVDeR/HQKQuosB2pG2Ny0wZCC5METNRCJl0235VdIpMC9jkoGOjNODL6bl6bB8P3QfqhX9ZCk7dkcWOWKZa+5NOJdZBnIGxiU+lEAHJXj01JBLQismmdFWW0UgPW4Np9GmNF5s2BI8hz0tCVY+beRULWvb9F8lZlgqfj8K0mWxcqhPkxluMWzHysT/opf7d8Exlb7qKXl3gygrFRjApirUJ0hwo4JVLafC5eRt0OBPrGSl7R6j0nsVmZGTRVP+QjGQXkRE1vQ==
From: Qualys Security Advisory <qsa@qualys.com>
To: null p0int3r <nullp0int3rx@gmail.com>
CC: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] [CVE-2020-28018] Use-After-Free on Exim Question
Thread-Index: AQHXRliv/YvkVSMIr0yN6gbgJd2Vg6rewqaAgAAG9ACAABFdgA==
Date: Tue, 11 May 2021 22:22:19 +0000
Message-ID: <20210511222021.GA23723@localhost.localdomain>
References: 
 <CAOni+oNB4JCe+Z=V+_bQGHBJ-HfN0AwVLC_H0qwVBsF0KKEoYQ@mail.gmail.com>
 <20210511205319.GA22017@localhost.localdomain>
 <CAOni+oOrTbyTC0szU3yvXKaygs=CB41ENj1kBG44c2d1KbGK3g@mail.gmail.com>
In-Reply-To: 
 <CAOni+oOrTbyTC0szU3yvXKaygs=CB41ENj1kBG44c2d1KbGK3g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=qualys.com;
x-originating-ip: [165.193.18.162]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9b7ca733-8acc-4dc3-7e51-08d914cb3dc6
x-ms-traffictypediagnostic: BYAPR06MB3976:
x-microsoft-antispam-prvs: 
 <BYAPR06MB397622E1DD4C39C946BACC5ED5539@BYAPR06MB3976.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 pteXIZWasc0PAERxdqxpgglBbUmelxsGi1di2tJ9EXYoCPwJeEejQzcGmAzbtQu/uGG9aXs1A/2IoL1nD2iB50fVgdL/P7zNrBhcUdba3XHyPu85UTBbKyGGND8JxWZN4d+HtrSZIpYnIbnvu66/dNeIKfuMQzkHBSrsb6/kLVIKDMbJnpgFcxSiKSTc26o9zLERfnVU5uRetM2Y9D4ksQyOF9Uyj5ZZeuhtBUh58mMHfbocC3jXRmuyOVrny6WiJmtCtuxV6TVv8203YoFIhOUROf+fIT5B7xy8A1RqqV6yyThX1hCkmfdKzI7IKN8fxhtIYaq8MCT+E5f0nauHnPHciAQFvmh4+P4bURoDmJPVSP3beUVQfY+fc7T6cmNHde+P5XGrXX1k2XFMFEwk2j1y3ZZePff0BrEc1VpKY1XwjWdLxPW395XsWDi6f3nDahRu3gkiXg9PEvXt+f3ApIn3bIFCvGWyRWfTPMSxc/csUoW7vl6tVLl1vrKNgka12QQN/XmBrSOs5uxLXvQL/uSXnmtHC0yMFYS549Tfr8xV05HoOLl++NNLyuoPjqNKCpglWDJyOj3ZG4Kqj3gDvz8FnkxqU95fH5I3tyvourTQgy+y44Xvgdqb2OTtOS+UMFthiEWFGwwDoi36NOrRYnA8GLnemtac+LoRcqwuLG8=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(39850400004)(346002)(396003)(136003)(376002)(478600001)(122000001)(71200400001)(38100700002)(76116006)(86362001)(66446008)(66946007)(6506007)(64756008)(66476007)(15650500001)(2906002)(33656002)(6916009)(5660300002)(83380400001)(8936002)(1076003)(6486002)(26005)(6512007)(66556008)(9686003)(8676002)(4326008)(316002)(186003)(131040200001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 =?utf-8?B?ck5LNE9FT0R6VGdJOFY1cWpBUFNUbDFOem0wMlJLc0RDUWU1NnlFZ0NOMXlX?=
 =?utf-8?B?dk90dC9tbzVrN3RObTNaNW85Mno4WXFHRVZLZjlqTjJVb3JXSkY2TmtGNGIz?=
 =?utf-8?B?MnJEd1FvRHBEeFlIc0FZYndFcXNwVllTQWhLVVdxUXR0RnIzMDA4bXNMYmp4?=
 =?utf-8?B?YW9jNkJnSzdzMG9CREh6eGVScTlBaC9ZcitLV0I0YXkyd3dGdXA2RXNmR2dZ?=
 =?utf-8?B?ck9GaE4vbDJ2bENaVmNUUzl2aUhqVmUzOUtEUFAyYjA1WnpGTEw3RlhkRHZS?=
 =?utf-8?B?Q3BaOFVjMldEK0xweDhVTlJTTVFxa0VLeFZRQkgwUGUrc0VQMFdGRDNFOVRB?=
 =?utf-8?B?NFRIZmp4d0lPVW55RU8rRGRKTUJMbFlJOWtUQTJ0M2l1SXFmTEpBcjNLSnkv?=
 =?utf-8?B?dHpHU1dvVC9HU3RwM1VmQ1ZhUUNFWk5ZV3E2cGRJc0Y2ZjVYWWVCdG9JZThi?=
 =?utf-8?B?czEvRWxuWnNNYmZQWTJITU5VTUZLc0RrcDNSZjJFbkZYc2sxTC9aeGRhZXNH?=
 =?utf-8?B?NmhzNlZYN2lUSXp5cG5GbXhHcUozNE50MzErTjZlSzY3am9QRk9LSFRyMmhV?=
 =?utf-8?B?MHI1dXdOVWJMa2dhcmVoK0Vmc3F6RXcrZTRJQVRRTmdVTjhsMmwxeXNGenFX?=
 =?utf-8?B?RndidU91NmhqUnBJL3g0ZnR0L3JEMkNLcmpETGJBdkF3Y3VJanBqTFJlcmdU?=
 =?utf-8?B?WEtzcTRtVlBoNjFaYXBRT1pUUDdYU0Y1bURyWFRQeGZDUFdIelorS2p3dHBE?=
 =?utf-8?B?NktpQjFrNSt1Z3NaWmQva2xkaEdZVGdjS0NNR3BudXkwMzlrV0R6Qm5uaDYv?=
 =?utf-8?B?OFR1UGFxQWtoUElCV1Jmc2VjOGczRldUYzhGZW4vMjVTNjN4a1dJTUpxazFD?=
 =?utf-8?B?V2hFMS8rUGpzYmFtMzczRXZNUUxxMXQvNUpvVkZaU2ZZVE8vMmdRTUk4eGNB?=
 =?utf-8?B?ZW5HM2ZOOWtWUS85c1JzeHh4ZkdneW8wY0lDa2xTMjFYNHJyWHd5TVcvWHRG?=
 =?utf-8?B?WE9YbVlPS3FCaVFIdU5LQ0lMN1lTZTczSi8wL0FNMWtYT1V5cXpUYzlOTktu?=
 =?utf-8?B?Y2JMVzFqcDM3ejh0WjJJTVdadEYyK00zUDc3OWpOQjlzTEN0dTBNK3p2OVlk?=
 =?utf-8?B?eEc0aU1RRUNTeGl1emEzT1JkMG9ZaVdQdysxWG80anJwQlI5YStrVUFkNkt6?=
 =?utf-8?B?WVA1V3l4SGlqUkpGQU51dHpkOUtVdXp6MWplUllSMUFReFNlMDJiUnpLNXdQ?=
 =?utf-8?B?a3dMa1pNVFZHT1dJaWhkN1dqOHZWcFJhUG91VXhjRHArd3J3amd2eVNiMHd6?=
 =?utf-8?B?QlhRN0xFNVYzTEUvRnEyeDRHUkhJNkxXQWVNcXpJVjJsMGVxUzlzd2E0MEl3?=
 =?utf-8?B?SUR2azZHdzhPOXdjQkQ3TUxkeFhVWnpYZ1B3SDRzdG1QM2orc2owMEM2eDBu?=
 =?utf-8?B?aUxWWGVtS1Uzcm9BeTJJNlhzSjZiSzF3VFo5RWxOQ0RXU1NJK09jQjNzallZ?=
 =?utf-8?B?cTRoMnUwQmg2U1B3Vzd0ZXZJb1JlS09NUWliSHNDNUREOTdvYytySTFKMFB3?=
 =?utf-8?B?UEZnQStBSVp2aG1QN2NTbWgwUWU1SEVJRWQrdS9WeENMNmt4UGNDWmZJY3F3?=
 =?utf-8?B?UGZ6K3JwZU5Pd2N6ZHZFakE3d05OOEl0NEczbGh5akdJb3JoQ0RRZlFodWhp?=
 =?utf-8?B?Mk1md2E4RjBFd1IwMkZ6eGx5QVdOV0VCTFVoNk9YVllpL2JNTnA5SFNEd0xM?=
 =?utf-8?B?enFpb1pZaUVxQlpiMjgvaklTS1ZpR3NMVnRqa093OCtaSkZpdHMxbSs5QjNL?=
 =?utf-8?B?ajIvQTQvZ2hxN0N2eSt1Zz09?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-ID: <728CE457E58238418A035213B943E952@namprd06.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b7ca733-8acc-4dc3-7e51-08d914cb3dc6
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2021 22:22:19.4302
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FEbyJupc2VNq6tt6/py72OoFgnfg07s1s4keP4rrZFpvyWz29Fro8DoWkNrBQAyFu0Rc2TOoE0pX3XvuMkN98Nwv6IFKlboh8VIM9SrMg+A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR06MB3976
X-Proofpoint-ORIG-GUID: adDUhdprpy-e5iNs-GeaNCGsvZWklCA0
X-Proofpoint-GUID: adDUhdprpy-e5iNs-GeaNCGsvZWklCA0
X-Proofpoint-SPF-Result: pass
X-Proofpoint-SPF-Record: v=spf1 include:_spf.qualys.com include:spf.protection.outlook.com
 include:spf-001ca501.pphosted.com include:stspg-customer.com
 include:_spf.salesforce.com include:emailus.freshservice.com
 include:mktomail.com ip4:3.225.140.251 ip4:168.245.25.245 ~all
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-05-11_04:2021-05-11,2021-05-11 signatures=0
X-Proofpoint-Spam-Details: rule=inbound_notspam policy=inbound score=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 impostorscore=0 spamscore=0 mlxscore=0
 phishscore=0 clxscore=1034 mlxlogscore=592 adultscore=0 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2105110151
Subject: Re: [oss-security] [CVE-2020-28018] Use-After-Free on Exim Question

SGksDQoNCk9uIFR1ZSwgTWF5IDExLCAyMDIxIGF0IDExOjE4OjEyUE0gKzAy
MDAsIG51bGwgcDBpbnQzciB3cm90ZToNCj4gSW4gdGhlIGFkdmlzb3J5IGl0
IGlzIG1lbnRpb25lZCB0aGUgdXNlIG9mIHRoZSBuYW1lPXZhbHVlIHBhaXIs
IGJ1dCByZWFkaW5nDQo+IHRoZSBjb2RlIEkgc2VlIGp1c3Qgc3RyaW5nIGJh
c2VkIGZ1bmN0aW9ucyB1c2VkIGZvciBhbGxvY2F0aW9ucy4NCg0KT25lIG9m
IHRoZSBuYW1lPXZhbHVlIHBhcmFtZXRlcnMgZm9yIE1BSUwgRlJPTSBpcyBz
cGVjaWFsLCBiZWNhdXNlIGl0DQpjYW4gYWxsb2NhdGUgYXJiaXRyYXJ5IChi
aW5hcnkpIGNoYXJhY3RlcnMgKGhpbnQ6IHdlIGFsc28gdXNlZCBpdCB0bw0K
ZXhwbG9pdCBhbm90aGVyIHZ1bG5lcmFiaWxpdHkgaW4gdGhlIGFkdmlzb3J5
KSENCg0KV2l0aCBiZXN0IHJlZ2FyZHMsDQoNCi0tDQp0aGUgUXVhbHlzIFNl
Y3VyaXR5IEFkdmlzb3J5IHRlYW0NCg0KDQpbaHR0cHM6Ly9kMWRlamFqNmRj
cXYyNC5jbG91ZGZyb250Lm5ldC9hc3NldC9pbWFnZS9lbWFpbC1iYW5uZXIt
Mzg0LTJ4LnBuZ108aHR0cHM6Ly93d3cucXVhbHlzLmNvbS9lbWFpbC1iYW5u
ZXI+DQoNCg0KDQpUaGlzIG1lc3NhZ2UgbWF5IGNvbnRhaW4gY29uZmlkZW50
aWFsIGFuZCBwcml2aWxlZ2VkIGluZm9ybWF0aW9uLiBJZiBpdCBoYXMgYmVl
biBzZW50IHRvIHlvdSBpbiBlcnJvciwgcGxlYXNlIHJlcGx5IHRvIGFkdmlz
ZSB0aGUgc2VuZGVyIG9mIHRoZSBlcnJvciBhbmQgdGhlbiBpbW1lZGlhdGVs
eSBkZWxldGUgaXQuIElmIHlvdSBhcmUgbm90IHRoZSBpbnRlbmRlZCByZWNp
cGllbnQsIGRvIG5vdCByZWFkLCBjb3B5LCBkaXNjbG9zZSBvciBvdGhlcndp
c2UgdXNlIHRoaXMgbWVzc2FnZS4gVGhlIHNlbmRlciBkaXNjbGFpbXMgYW55
IGxpYWJpbGl0eSBmb3Igc3VjaCB1bmF1dGhvcml6ZWQgdXNlLiBOT1RFIHRo
YXQgYWxsIGluY29taW5nIGVtYWlscyBzZW50IHRvIFF1YWx5cyBlbWFpbCBh
Y2NvdW50cyB3aWxsIGJlIGFyY2hpdmVkIGFuZCBtYXkgYmUgc2Nhbm5lZCBi
eSB1cyBhbmQvb3IgYnkgZXh0ZXJuYWwgc2VydmljZSBwcm92aWRlcnMgdG8g
ZGV0ZWN0IGFuZCBwcmV2ZW50IHRocmVhdHMgdG8gb3VyIHN5c3RlbXMsIGlu
dmVzdGlnYXRlIGlsbGVnYWwgb3IgaW5hcHByb3ByaWF0ZSBiZWhhdmlvciwg
YW5kL29yIGVsaW1pbmF0ZSB1bnNvbGljaXRlZCBwcm9tb3Rpb25hbCBlbWFp
bHMgKOKAnHNwYW3igJ0pLiBJZiB5b3UgaGF2ZSBhbnkgY29uY2VybnMgYWJv
dXQgdGhpcyBwcm9jZXNzLCBwbGVhc2UgY29udGFjdCB1cy4NCg==
