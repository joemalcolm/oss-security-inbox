Received: (qmail 30655 invoked by uid 550); 2 Aug 2024 14:55:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5693 invoked from network); 2 Aug 2024 14:47:00 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NevjO9i6ZyVtQQ2cpSgtDLyyQiwRA9l6NTO9jqCUKWa9TK4G4eZ1eUDDJK3JGC6sYIKegJqoSeeINs7vlCae7dqL9W333U0l6KNGBu3332rSigAWF46ltcvkdF70TLcPIWC+oabzlONWFkrs55nCI20ENmcSQ8foSbtVS/908UntjF1VqPmle4pQtKOaNYGTlgeC/LiHSNMs6bpRgtQAQhJaiq9qJVa4alSU5vRHACRpV5GREQgtivu8Ilt0kkoVvPjaIJutid7x0JQFK/RiKif5znQtOYArCmPIdsV53kJc2S4rgcqa1pQ3bpdsEu48fP3C51tYZZ+eHCDN6sDRNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y2DsYDAGFah8Zioxp+DCTetZ9TrW0x2g/wV0vTDB6VY=;
 b=qVbppa6jWO3GrWfdTn2UpMWmIobjbcqtc/osDNIbwxsIJkhsX8BSqQiVFzh4kiTzR4SMM5mieTiCo6A4LTwv6n3Phy8MNwyFpNunA+oFkojrOOItn2/9J6TYOEpakNLXYI0ppPzuu1c/5sKwa1hOrmaSEv7UhabUqCP0YcCQ8MDjL4aw7JTeSII2nOcBSO2Me4ZggwwgSCAZAPnvSQTsswgMZ2kY40yTERjuBiVvq4MbAK7bRBL4y6r5ERXgmvLwjoRyWZgwVa4ghQ7xOZChrD0xdwTKVzgO4GYFvqQPwvACly/gh9hR7iyChkhkOs1P31y4Q4pMmnSfZhbuYYe+0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=iradimed.com; dmarc=pass action=none header.from=iradimed.com;
 dkim=pass header.d=iradimed.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iradimed.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y2DsYDAGFah8Zioxp+DCTetZ9TrW0x2g/wV0vTDB6VY=;
 b=I9QQfoanCM+hOyDjtcIvQGilZxf900CS+vJ2MbyMj6nh+WMQ3a4eB92Ix4ge1EHHMTXmcfQeswA8vUW0OIN4tVL3BvopY8XbX6sWcuXKbUAIaahYuw2zJe088RFa/d+CIZULpZ3yP5a8Lfl0xdMuOqj/Bt9ykc4On30LWgs7DXc=
From: Dane Bouchie <dbouchie@iradimed.com>
To: Solar Designer <solar@openwall.com>, Andri Yngvason <andri@yngvason.is>
CC: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
	Travis Wise <travis@wavesquared.com>, "security@raspberrypi.com"
	<security@raspberrypi.com>, Simon Long <simon@raspberrypi.com>, Moritz
 M??hlenhoff <jmm@inutil.org>, Salvatore Bonaccorso <carnil@debian.org>
Thread-Topic: [oss-security] Neat VNC Security Vulnerability
Thread-Index: AQHa5OrNZORDT17HtkalfNDjNwMKdQ==
Date: Fri, 2 Aug 2024 14:46:48 +0000
Message-ID: <6ef58613-e37a-4ad4-b5a2-e99f664b1404@email.android.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=iradimed.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR22MB2978:EE_|LV3PR22MB5032:EE_
x-ms-office365-filtering-correlation-id: eb2f1e17-b48c-4a1f-f9da-08dcb301efe2
x-ld-processed: 90a08e1e-3e24-4e25-8b8f-30fa0779f522,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info:
 =?utf-8?B?cWhCZUtPTk8wS055YTgwT1N5anI4NWpHNzZ1VEhXbWNkMExyU2x4VVQ5d0Vm?=
 =?utf-8?B?MkRWS2h4OGhFTmw0UldOdVpHR1hnY0VWTklEWHZDYU1yUnNwQ09sdjYvQ01E?=
 =?utf-8?B?MDYreG9VWmZ4QkVhb1VTemNHeEQyOUlJUDJMQkE0QzJSMEwybGJrZExid201?=
 =?utf-8?B?TlJZdTRDaWcyUmMxTTlFOERYUVp6eUdiZHpMQWlhL21DTjVmdHRNQUdzVDRz?=
 =?utf-8?B?VTNST245NEdtR3FvM0lReWZ0MmNVRVFsYTVGVGFSdUFmeVZaem9jbHNRclVO?=
 =?utf-8?B?UUQ5R2x1MmM4OTdFKzNDUVhFSGEzdTBNTmtoSDBaN0VJVE1vc0hPcmZORnI4?=
 =?utf-8?B?djVzK2ZMU3RNK1lua2hDYXhwbEpWLzEwOHNuNVRBSzdXWDRrd2pwV2VHTkZX?=
 =?utf-8?B?RXVWZ29uc0ZORWpYRWZmREJ4Qld0a0JiOUtLQktaMHRmN21kZ2ZUdVFUSEtm?=
 =?utf-8?B?MkRUWGFUWmxXVkVlbTE2NFMyaFd4eXBkTzBqOXgwc3c0MzNJZHZ0VW8vcVc0?=
 =?utf-8?B?dlptM2M1YksvakEyYmFOaFdBaGc1L1BqTUFnNWY0c0w5TytiQ1Y4U3FyWG9q?=
 =?utf-8?B?bUFsd0FzOHE1UGc5SFYrZGdINkFoWDg2U3pSNGhQbDBjUS9UZFlFV3J6NDBn?=
 =?utf-8?B?ekRHbzlUbU9mYW9QazFqVytjeTVsV0Z3TXpCVklkWGk2KzNaaUdNM1d5TCsw?=
 =?utf-8?B?Y1FLTUlNbmZjZm5UL2dKYW5NMFNmMUI0NGFmRUd6NzRXRVBDeE9JS0l2N3dH?=
 =?utf-8?B?Tk1wbTAva3MvMmxxaXpsZWFtYkx1YXJMM0ZkY2dzODBXTzZNbE4vdiswTURN?=
 =?utf-8?B?NHk2Wm5rdU5yY3VaOG82VENwb2FBSE16QkJtOFlwQWY1MmlqMUpqWklQSDJN?=
 =?utf-8?B?bWlmaWpQKzcrYmo1RXpNL3Jzb2pDYStNeW9QaUNUWE00Rm8rdFBveldQcU94?=
 =?utf-8?B?TTdFL0U2UmR6VVFlc3N0cmFiOHhlbW9acCtMUmt2aVMrOXlSTXpONlV6RGJ0?=
 =?utf-8?B?ZXYwWWZhemdUMHFXVzNuOUFCUStFdW5YYklEZjVjTHI1bGlLNnBUMlBocjZF?=
 =?utf-8?B?YjlYemMvVUZlMnM4ak1DZ2xKTG1kMDVUS1F0UmtqRE5RMCtsMVZabFFxazdr?=
 =?utf-8?B?THduR0ZxWjF6M29Sc1dsNDNFamVIbU5YL0JPUDh0aHAzVWo2OVhNZWhRVmtE?=
 =?utf-8?B?bXNKdVBZUUdXVGFGcmZSUkd2eWttNEtQWmtRZGVhYW9jN3IxWnRuRHk1dEp6?=
 =?utf-8?B?QllENFJHVnlSOUdRazVNVHNyS1BQeS9EYWFZWkFnMzcrOE4yVHFnR2NvYkdw?=
 =?utf-8?B?Sm8xVER4Tk82MUgzNklESlNxVUNmcStyVXQ5VGJmQ05PaUFuQmxDVDBQT0Zh?=
 =?utf-8?B?bnBKMVRab2J2bVRTbjYzTitoS2k3dXY1VDZRbFRJRVI5Q0ZEb2l0SlFLOGRU?=
 =?utf-8?B?NmVaTVlwSFp0dTZMdHN5VTlNNE1mZWk0L1dxTHZQelhIcWNpRjVha2xBSGla?=
 =?utf-8?B?eDE5VXE3TnhkN3R6SVdXVStheVkxR3BFdkV6TFNOVFY3b09vRXBaWGJSYkRE?=
 =?utf-8?B?bVFBRVkvb2VSWW9reXJFdFpHaC8vQ0p0QmZVajJ6dkFpVnliT053MmJyeUV5?=
 =?utf-8?B?U3MrRlZkM0wxT1M4bVg5QnBGNjR3a2ZhV3J4dGlzQ1c5TWg2NS9PL2s3YVRD?=
 =?utf-8?B?dFk1K01tbDYzZk9VM3JmWDJkOTZ3T1NSQ3pzZ2xpaXE0QkVnemN4Q0trTW9i?=
 =?utf-8?B?c1IyNWRHUFluem9DOHFvNisrM3RxempjU1NNekRBT2RYQmpQRUtnZjYvTXZm?=
 =?utf-8?Q?6CkqmySrsKZjAV9sUNAQpwo3yd3xBdIIFkw6s=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR22MB2978.namprd22.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?YUVDaWRVU3FIejVtVHJDY3AwdkpFUWtuVmg2elZhd3BabFVFaXJGNWJzbU80?=
 =?utf-8?B?YVpPRkJFTzNMSWlpT05wbTRvSGhSak5TSEhKUkIyUDJMYjAxSnp0eitmYnEy?=
 =?utf-8?B?eGtQNmM1dm9XUjk0N3ovZW5vQXFYbms3RjUrY3N6Ukl1TWRtS1dsWEZtWU9M?=
 =?utf-8?B?a3lienA0UXEyemNnMjVDWmdnSktSQXdMd21JTHZLTzdPWTRKSWw2WWlsVUZm?=
 =?utf-8?B?ejd0U0hka2haaGo0b0FyamJvbzJqQWQzdjJoT0ZXd1RaeDRHbEZqNDAzWlFl?=
 =?utf-8?B?L3BNLzhyOGFabGN5emxxZUVLaFcxVEdlU3pEYUFSelNPNXRKOTVZbUY1NzZF?=
 =?utf-8?B?dkdwckNTa0VuWWZocXV0dnB3aE4vWEJCYlpCMjJuL1JXcVhKdVFpRlgxeUZJ?=
 =?utf-8?B?Zkh3MXgyWENoUCtmQ0pEUGozUk9NQnN5TjlnOHJ3S0t2b2xaSkJZemlEYVY1?=
 =?utf-8?B?R01FN2JHRHdRZGpGQjREY1hPWElSdW9td216Q09iVDRibjBUNC9kcjFrZ29p?=
 =?utf-8?B?ZW1vOXFZV25YMStHcWVtdy95QmVibnM0Q2dJWDVYYWZWV1lyOTRZQ2tuVHha?=
 =?utf-8?B?ZDZBVWQxdm84UStWNXdWUVRoMkZHWnBkT1ZJMjViNUtUSnlhb01xZHh2RXZz?=
 =?utf-8?B?c1dZeXAzQjJDcGdBQ3lOMDFFV3Nlc05pYVkzVWp1NDljeFFWYzlFSFgrbnFt?=
 =?utf-8?B?TzFZSFJhSVVJZmgrUVcrWFBRcGNSSm5xUzAxL1YyaE5CbUxNWXRTRU5SSUpX?=
 =?utf-8?B?NDIwVmYrYUtzaGxoZFBSSEgxbGxZN0RWd2plYWkxRTNMUDBsaVc5bnRmbGZB?=
 =?utf-8?B?UFUvdmxVZ3BLQU9mNHltZm5VOGV6OCszMmFFY0NubDdhc01XeitCbmZVQWVq?=
 =?utf-8?B?dFZJMllLQ0UzdFp6VnVuMUEvUXkvZzlPT1hjS0cyZG1KY21Wa21FUW4rckJh?=
 =?utf-8?B?dWY4RC9oN1dJaWdDNjJWQjRRMjA3T1lLZ3BvZ1RqTlRvTjk2cmIyV3RDTFJ5?=
 =?utf-8?B?TDJYb3JoRVMxckxhSUdsbFN4WGdIRzNWQ2lFU3QwdFRmMXJFb045NUc5REpV?=
 =?utf-8?B?Y1NhV0t2R2l2UzNIRWIwUWVmeXpwQ1docDlhZkdoeHd5TDhEbEVRTkJabW9h?=
 =?utf-8?B?ei90MkxIUnFUZ29ya09WcWlVSXdHTERNY0x3OVdibk5vejVoTGZJeWx4Nm1i?=
 =?utf-8?B?UVpOd2lqNWs3UXVqSXRaRm1PVC9ObnZtTm03dXBOTDlzazgreTdyaDAranJZ?=
 =?utf-8?B?cGRNODdPbHZWVE9sWFVUQU9ZdDRSN2dob0R0UGppS0V2VnByc3VKK21GTVZs?=
 =?utf-8?B?dU14M1ZXRTJBbEtNS1BJTGpqRmI1cmVKcHN1NXdTb1dSczNKbFBTRGtwTC82?=
 =?utf-8?B?K2xBdnFTY1dvdlBHTUIzd29yd3k2bjY3UjFMTWFLcWN3ZVAvQTdzSmZjNHhV?=
 =?utf-8?B?c2NyV0xsQTczRmtsbDNTVHJvbnMyWFRyZzZzSCt4a3JORnZBd1gxaENCZVRD?=
 =?utf-8?B?TUZ2VFZKdUphS3RIUjBLeEEzZS9qNWc4TEczK3NTS0pWYWJXbjhsR3AxSlV2?=
 =?utf-8?B?VDRWRWNwVkU3TmMwU1JzQVFBYUJzWGpiWmJhWS94bmRta1VVU3NESm1QcUxr?=
 =?utf-8?B?OHI3Zm1lWHA0Q0NadVZCR29SRFJFRjUwY3BBT1Y3bGNpQVd3SXVRODFzRmJs?=
 =?utf-8?B?ZE95amo3VGw5UmdlKzdTdmpWQUZvcTY2a2pNQ1ZmK1BOcVowd3NKYmw4WjZ3?=
 =?utf-8?B?M1lBSTV2eE50cjdEMzBlZjhicm40UzNRZjZXN2twVzJaaGJ0ZVdvaTZiUDNa?=
 =?utf-8?B?RUlzRjc2aTNTa3ZHMDlRay9OQnBXaGZKVjRYVnFMaVZwM0VFVmw4M0RYQ3Z5?=
 =?utf-8?B?THpCL1htNi9uNU14emN5cTZ0VXFBOWQ2alpFN1dYK1I1dUE2SHdPWVVkV1Vx?=
 =?utf-8?B?RnpvWWF2TXZjOHRUeksyMmxLNFd1RlFHMWREMXVUcm9XY0UxeVZFMWpYNXV6?=
 =?utf-8?B?Nm1IcHhJUmxTOGpPd0pKeUpaalBYYm5rTWVDckNIU0xsT0ZkSU1PY0llTmtz?=
 =?utf-8?B?eWozSDBwSVFBY3NsSEFuNG5BUVFVa082Mlc4WGQwWWpjWWludXVEbitVVklG?=
 =?utf-8?B?RTJVR2U1QmlhWE5Xa01haTFWbUNvVm1scklFNFdMU0dXVi9pNWxCKzBUMU1N?=
 =?utf-8?B?VFE9PQ==?=
Content-Type: multipart/alternative;
	boundary="_000_6ef58613e37a4ad4b5a2e99f664b1404emailandroidcom_"
MIME-Version: 1.0
X-OriginatorOrg: iradimed.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR22MB2978.namprd22.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb2f1e17-b48c-4a1f-f9da-08dcb301efe2
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2024 14:46:48.0563
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 90a08e1e-3e24-4e25-8b8f-30fa0779f522
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AMf+lBjTjFcgzjgqCVawW8jywE+159IkpVK/V9RP5mkrcPMY+XA6JkFpXuJ7VkRRTGP0lQ3875RNDDIEqqFDww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR22MB5032
Subject: RE: [oss-security] Neat VNC Security Vulnerability

--_000_6ef58613e37a4ad4b5a2e99f664b1404emailandroidcom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhpcyBpc3N1ZSBpcyBiYXNpY2FsbHkgQ1ZFLTIwMDYtMjM2OQ0KDQpPbiBBdWcgMiwgMjAyNCAx
MDo0MSBBTSwgRGFuZSBCb3VjaGllIDxkYm91Y2hpZUBpcmFkaW1lZC5jb20+IHdyb3RlOg0KVGhl
IGNsaWVudCBjaG9vc2VzIHRoZSBzZWN1cml0eSB0eXBlLCBzbyB0aGV5IGNhbiBwYXNzIGluICJO
b25lIiB0byB0aGUgc3dpdGNoIHN0YXRlbWVudC4gaXNfYWxsb3dlZF9zZWN1cml0eV90eXBlKCkg
bm93IHByZXZlbnRzIHRoYXQuDQoNCkRhbmUgQm91Y2hpZSB8IFNvZnR3YXJlIEVuZ2luZWVyDQpk
Ym91Y2hpZUBpcmFkaW1lZC5jb20gfCBQIDQwNy42NzcuODAyMiwgMTcwDQoxMDI1IFdpbGxhIFNw
cmluZ3MgRHJpdmUsIFdpbnRlciBTcHJpbmdzLCBGTCAgMzI3MDgNCklyYWRpbWVkLmNvbQ0KDQoN
Ci0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBTb2xhciBEZXNpZ25lciA8c29sYXJA
b3BlbndhbGwuY29tPg0KU2VudDogRnJpZGF5LCBBdWd1c3QgMiwgMjAyNCAxMDozOSBBTQ0KVG86
IEFuZHJpIFluZ3Zhc29uIDxhbmRyaUB5bmd2YXNvbi5pcz4NCkNjOiBvc3Mtc2VjdXJpdHlAbGlz
dHMub3BlbndhbGwuY29tOyBEYW5lIEJvdWNoaWUgPGRib3VjaGllQGlyYWRpbWVkLmNvbT47IFRy
YXZpcyBXaXNlIDx0cmF2aXNAd2F2ZXNxdWFyZWQuY29tPjsgc2VjdXJpdHlAcmFzcGJlcnJ5cGku
Y29tOyBTaW1vbiBMb25nIDxzaW1vbkByYXNwYmVycnlwaS5jb20+OyBNb3JpdHogTT8/aGxlbmhv
ZmYgPGptbUBpbnV0aWwub3JnPjsgU2FsdmF0b3JlIEJvbmFjY29yc28gPGNhcm5pbEBkZWJpYW4u
b3JnPg0KU3ViamVjdDogUmU6IFtvc3Mtc2VjdXJpdHldIE5lYXQgVk5DIFNlY3VyaXR5IFZ1bG5l
cmFiaWxpdHkNCg0KW1lvdSBkb24ndCBvZnRlbiBnZXQgZW1haWwgZnJvbSBzb2xhckBvcGVud2Fs
bC5jb20uIExlYXJuIHdoeSB0aGlzIGlzIGltcG9ydGFudCBhdCBodHRwczovL2FrYS5tcy9MZWFy
bkFib3V0U2VuZGVySWRlbnRpZmljYXRpb24gXQ0KDQpIaSBBbmRyaSwNCg0KT24gVGh1LCBBdWcg
MDEsIDIwMjQgYXQgMTE6MDU6MjdQTSArMDAwMCwgQW5kcmkgWW5ndmFzb24gd3JvdGU6DQo+IEl0
IGhhcyBjb21lIHRvIG15IGF0dGVudGlvbiB0aGF0IHRoZXJlIGlzIGEgc2VjdXJpdHkgdnVsbmVy
YWJpbGl0eSBpbiBOZWF0IFZOQy4NCj4NCj4gSSd2ZSByZWxlYXNlZCBhIG5ldyB2ZXJzaW9uIHRo
YXQgZml4ZXMgdGhlIHZ1bG5lcmFiaWxpdHk6DQo+IGh0dHBzOi8vZ2l0aHViLmNvbS9hbnkxL25l
YXR2bmMvcmVsZWFzZXMvdGFnL3YwLjguMQ0KDQpUaGFuayB5b3UgdmVyeSBtdWNoIGZvciBicmlu
Z2luZyB0aGlzIHRvIG9zcy1zZWN1cml0eSENCg0KT24gb3NzLXNlY3VyaXR5LCB3ZSBuZWVkIGEg
ZGVzY3JpcHRpb24gb2YgdGhlIHZ1bG5lcmFiaWxpdHksIG5vdCBqdXN0IGEgbm90ZSB0aGF0IHNv
bWUgdnVsbmVyYWJpbGl0eSBleGlzdGVkLg0KDQpUaGUgcmVsZWFzZSBub3RlcyBtZW50aW9uOg0K
DQoiVGhlIHZ1bG5lcmFiaWxpdHkgd2FzIHJlcG9ydGVkIGJ5IERhbmUgQm91Y2hpZSBhbmQgVHJh
dmlzIFdpc2UuIg0KDQpEYW5lIGFuZC9vciBUcmF2aXMsIG1heWJlIHlvdSBjYW4gcHJvdmlkZSB0
aGUgbWlzc2luZyBkZXRhaWwgaGVyZT8NCg0KVGhlIGZpeCBjb21taXQgYXBwZWFycyB0byBiZToN
Cg0KQWRkIHNhbml0eSBjaGVjayBmb3IgY2hvc2VuIHNlY3VyaXR5IHR5cGUNCmh0dHBzOi8vZ2l0
aHViLmNvbS9hbnkxL25lYXR2bmMvY29tbWl0L2NjNzE2NTBhNjlhYmMyNTczYTBkOTZkMDgyNDA5
ZDI0Njg4MDJkNDcNCg0KU2tpbW1pbmcgaXQsIEkgc2VlIGl0IGluY3JlYXNlcyB0aGUgc2l6ZSBv
ZiBidWYgaW4gb25fdmVyc2lvbl9tZXNzYWdlKCkgZnJvbSAzIHRvIDMyIHNlY3VyaXR5IHR5cGVz
LiAgVGhhdCBmdW5jdGlvbiBpcyBhbHNvIHNwbGl0IGluIHR3byBhbmQgb3RoZXJ3aXNlIHJlZmFj
dG9yZWQuICBBIG51bWJlciBvZiAic2VjdXJpdHktPnR5cGVzW3NlY3VyaXR5LT5uKytdIg0KbGlu
ZXMgZ290IHJlcGxhY2VkIHdpdGggQUREX1NFQ1VSSVRZX1RZUEUoKSwgd2hpY2ggaGFzIGFuIGFz
c2VydCgpIGFnYWluc3QgdGhlIG5ldyBtYXhpbXVtLiAgVGhlcmUgd2VyZSA0IG9mIHRob3NlIGxp
bmVzLCBzbyBJIGNhbiBzZWUgaG93IGEgYnVmZmVyIGZvciAzIGNvdWxkIGJlIHRvbyBzbWFsbC4g
IFNvIHRoZXJlIHdhcyBhIGJ1Zy4gIEhvd2V2ZXIsIG5vbmUgb2YgdGhpcyBsb29rcyBsaWtlIGF0
dGFja2VyLWNvbnRyb2xsZWQgaW5wdXQsIG9yIGlzIGl0PyAgTm93LCBldmVuIHdpdGhvdXQgYXR0
YWNrZXItY29udHJvbGxlZCBpbnB1dCBhbiBvdXQtb2YtYm91bmRzIHdyaXRlIGlzIHVuZGVmaW5l
ZCBiZWhhdmlvciwgc28gdGhlb3JldGljYWxseSBjb3VsZCByZXN1bHQgaW4gYW4gZXhwbG9pdGFi
bGUgdnVsbmVyYWJpbGl0eSB2aWEgc29tZSBvdGhlciBjb3JyZWN0bHkgcHJvY2Vzc2VkIGlucHV0
LCBidXQgd2FzIHRoZXJlIGFueSBhbmFseXNpcyB3aGV0aGVyIGl0IGNvbW1vbmx5IG9yIHJlYWxp
c3RpY2FsbHkgZG9lcyBpbiB0aGlzIGNhc2U/DQoNCkkgc2VlIHRoZSBjb21taXQgYWxzbyBhZGRz
IGFuIGlzX2FsbG93ZWRfc2VjdXJpdHlfdHlwZSgpIGNoZWNrIHRvIHRoZSBiZWdpbm5pbmcgb2Yg
b25fc2VjdXJpdHlfbWVzc2FnZSgpLiAgSG93ZXZlciwgdGhlIHJlc3Qgb2YgdGhhdCBmdW5jdGlv
biBvbmx5IGhhcyBhIHN3aXRjaCBzdGF0ZW1lbnQgY292ZXJpbmcgYSBmZXcga25vd24gc2VjdXJp
dHkgdHlwZXMgYW5kOg0KDQogICAgICAgIGRlZmF1bHQ6DQogICAgICAgICAgICAgICAgc2VjdXJp
dHlfaGFuZHNoYWtlX2ZhaWxlZChjbGllbnQsIE5VTEwsDQogICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICJVbnN1cHBvcnRlZCBzZWN1cml0eSB0eXBlIik7DQoNClRoZSBhY3Rpb24gb24g
ZmFpbGluZyB0aGUgYWRkZWQgcHJlLWNoZWNrIGlzIGFsbW9zdCB0aGUgc2FtZS4gIFNvIEkgZG9u
J3QgaW1tZWRpYXRlbHkgc2VlIGhvdyBub3QgcHJlLWNoZWNraW5nIGNvdWxkIGhhdmUgYmVlbiBw
cm9ibGVtYXRpYy4NCg0KTWF5YmUgSSdtIG1pc3Npbmcgc29tZSBiaWdnZXIgaXNzdWUgYWxzbyBm
aXhlZCBieSB0aG9zZSBjaGFuZ2VzPw0KDQpEb24ndCBnZXQgbWUgd3JvbmcsIGZpeGluZyBhIGJ1
ZyBhbmQgZGVmZW5zaXZlIHByb2dyYW1taW5nIGlzIGdyZWF0LCBidXQgd2UgYWxzbyBuZWVkIHRo
ZSBzZWN1cml0eSBpbXBhY3QgZG9jdW1lbnRlZC4NCg0KQWxleGFuZGVyDQoNCg==

--_000_6ef58613e37a4ad4b5a2e99f664b1404emailandroidcom_--
