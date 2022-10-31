Received: (qmail 3531 invoked by uid 550); 31 Oct 2022 12:09:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5583 invoked from network); 31 Oct 2022 10:52:30 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QMNSmhUNjqdJbnQhL4rkzr1QsOjPeLJL4RFS8e+E+kEHGmSePKcMt+m/G7rCu5e9kPTkAE413eIhAv0PDNiw/yjpoyZBM8GWSbzIGaimJBft3lKEM+MCPMGHZBVqKPAlyGcBdpS3JVaBG9H38UVkLfq/+NN3FYWeK9EI+mJWDmcfgJroAlbiw3iZnZq1SzCStpVLpVqNr9HCkXA5bvslLSKL2mnVb7Z/W6+VUmMPpnC3b4TILpBYbCgEdRen7ILcjlaFXpPgB51rx55dSGvdkryz573ti5gtVbLiXiirBBfvS2+6QpzTgV4p+xNXc/HKvKJKj47rzeewhFrp/g5TOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BeS3X+ByRJ9+fwYG7GiRfiQ6DHIPLVjdJpCDjJH1gHI=;
 b=Y2qMsiKjnq9qirt4APkfs2pitzi3uco4hDWG8CKnRBQYNNURWGJq/SjgOet6pg7R3U5cZ87ol9C2Y7T3Ptinz2K5D/v64RzluBBJfoT84EK/2Qg+Py8rvIfh3DNeKO//AUP8Bq/CMqgy7wgep03QwIPM99WkAB//6W29ktrXsRM0a7XPxuQxonDCnW5LV9EqsvNbNI3Giz+m6fxl6nsq5KdOziPP3jv9BXYPCSp9wzvq/L3aXzTboEnmOQF1vip+VlsYxfUipFHjzHREPt7/jttVbeDJsZjK73syu5+ocvyd6+aYP4inUNjxzrn0C7zcBFTJB/zKMHIN/ik7dWjWiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=tuxera.com; dmarc=pass action=none header.from=tuxera.com;
 dkim=pass header.d=tuxera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tuxera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BeS3X+ByRJ9+fwYG7GiRfiQ6DHIPLVjdJpCDjJH1gHI=;
 b=iYVWK/OLWEd7Uo6V5fTBt5yjlJgXd5wRzIBtXLtFzjaum4edTuFbgxqC3glm4SRC51SCmUIVAC9UI7K7jzRsYm6zRFH4fYfD4HDvSguXSRflnsjSJwsR538WKyKPhkKixrEv370NmVqUOlMIccYHzdTSdDlCbBtupIAxmSwr9UZ1hLgUgPAfM7lqWrKtMRziOWu0rT7MWrBrYDQmdfaHAIpwEkbbMmS1vhoX5eX6O+wGewZhcFBvbLze2jXRhtHCa0XZWQljw8evbHP9Y8najuK4Q3AB4S6pttaXEuN0Avfv8ZlnNjbudsFGU+XCYdNcCh++CO7eHi4mWqAz4sgooQ==
From: Rakesh Pandit <rakesh@tuxera.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
CC: Erik Larsson <erik@tuxera.com>, Jean-Pierre Andre
	<jean-pierre.andre@wanadoo.fr>, Szabolcs Szakacsits <szaka@tuxera.com>
Thread-Topic: OPEN SOURCE NTFS-3G SECURITY ADVISORY NTFS3G-SA-2022-0003
Thread-Index: AdjtFIAfsKUBLiKZTvCdPsxd75UrKg==
Date: Mon, 31 Oct 2022 10:52:16 +0000
Message-ID: 
 <DBAPR06MB682490628A918F9C24295036BC379@DBAPR06MB6824.eurprd06.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=tuxera.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DBAPR06MB6824:EE_|AM0PR0602MB3618:EE_
x-ms-office365-filtering-correlation-id: db7151fd-972e-4fb0-3885-08dabb2df9d4
x-ld-processed: e7fd1de3-6111-47e9-bf5d-4c1ca2ed0b84,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 0MRhJXWARx31gjQaREDjTiLD298eBmV1hFfhYw9HcMHnsZSd+vWLS+MwayaiWdAo4AQmqFzMdiQqj7g2NffpqjN+YLGuzuxN0Bk15H553/YPI3KyUdcBQ2JKhwbqo0Grl8aLFnTE51crp2UNeg3y61GudQE9S/+tYWfaOvrMwPpLA5PMyK7o7o/kTpoz4pWVlEiSsOYaUhbUdnQ+THkORD4bN4nW7PPCI0d1VoEwYQI19alK4DpUgxFA85t93Omz2JVvFSBe8mKBagjHx79Gh4AH0JS8Koeo33/0maa02HcVMe3p4EfCwfxyTQN3VJETjdckstzms+D35c4bu5bEyW0MbCipTgVxs6/5jPUecuxjmXLg6AnsmFHI0WrhOAKQyjxDDpw0wRiDxn5+xkg2Emzyc5TYPoOYa1ZgZgVdMpIaX6wbKuSVbdEH3rV0/FhUf6Qg+lp2LerBma9CS7vqS69T78L0lc75BzL3gBTGHRtwB1Z7d8pu/hVpqVWJA9i4tw7jze+8Zc5Ej2WspWDj1Jmsc0B0SzCPGf2SpZtQqZnL6NGZadJTYzSRdj8n67rt8hZcgpFbsSVmJTDxRGNozBKCOptEREDbbN2S6+hgO4t9IBRSTxE3H2oMNW1r2n/uTHO1qw9IfnQZl2cyQJcDneaOPit4VQclwsjI/5HO4W85WWMZ2lSbqsFFTMEs3fES5Nh5jDswh7Lcx0zTBA475E23zmu4XW5cdm7AMh/HcnsQrFp5IzGF6FcBnjvHQVJCfvDyhLCvSk+B75PLFhqM95cNZ8ol9JoZImR9FC41vILxxGkz+jUCYFbQA+LGON9SP2QuTDT83jHIG6ye3XMUWCKFPk/nqduk+tAao/+HDEA=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBAPR06MB6824.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(376002)(346002)(39840400004)(136003)(396003)(366004)(451199015)(86362001)(38070700005)(122000001)(38100700002)(33656002)(55016003)(2906002)(71200400001)(966005)(15650500001)(107886003)(478600001)(4326008)(76116006)(316002)(8676002)(66556008)(66946007)(66446008)(64756008)(5660300002)(54906003)(6506007)(8936002)(6916009)(7696005)(41300700001)(52536014)(66476007)(186003)(9686003)(26005)(83380400001)(32563001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?R0tRQkMxZlNUdDh0eVo0dS84SDY1VnJNbldXUy9vaXVjQk9EUGlMdEhGYm5x?=
 =?utf-8?B?ejk1ZjJsdDJIcGZuSnhJaFRQcGMxZGI2a1hRMnpqM2k1UVM0RUk2VWdnb2sy?=
 =?utf-8?B?VGMrby9Mb2RvZVFOVzNZdGduL1ZGVWlJZ2ZJL1JQdFdMR1RCaDJaT3E1OWZm?=
 =?utf-8?B?ejJXeUdEVzdibnd1U2dCcDdGeVRKMnVPVkdabHRrVFY0UFJwMEQzeVFyb0VU?=
 =?utf-8?B?YW85R3NsRE5lazJaZ3ZDZWhzSkV2SWdhZkZrWnVoT3hwcU5UdG1ob2p5TFp1?=
 =?utf-8?B?d004aWphRUZ3Q1hQd3lYaGxWc2pNeEJxeXpWS2laSDJmcWtmTHpTVGhMbHd3?=
 =?utf-8?B?RENZRU9ERThkaDNUYVFrNU9JdDhzM3h3NVZTYzlER3FFUU9qSGlWWHhXMUZZ?=
 =?utf-8?B?M2dGUHF1T2N1R1ZSVWFzaXFLMTFXSkRYVGg0UnZQZ05oQ1AxZjBvRGQ0WnEx?=
 =?utf-8?B?eEIybm01WUZTZVFKVEptbFhXSm9ZZklBdjR0TG9UTkZqbmVIdkhBaFZBOWpm?=
 =?utf-8?B?VnkrWTZCZ3hERnh5TTRkbWd3SUdFcGw5U3lmWjNqRzI5bTFSWWduVG1nYmln?=
 =?utf-8?B?WnRZanpmQm42bU82a1NwTXJ1eWhJS3ZWUGJDcllQZ2NCZUpkbDVRNWExYlB5?=
 =?utf-8?B?eHJBSUdwTmxCN2pHcDl4NVJERElsbkJKcXJEL05FV3VhSXBWMGJ4ZkJWbjcv?=
 =?utf-8?B?T3FVbDBuWUtMT2FxYkxjRzlRblFIY2NCM0hoYlBhQ0QxR1hBQWdxTTBYaFJy?=
 =?utf-8?B?eXFVS2p5UDNKZTFlYzV4MHhkTUI5UXFtaCtJMCtFaWVyOCtOaVlINTlGQ3F3?=
 =?utf-8?B?N09XQ05tdzdscnRVeHkxQlczUFZubmJ5UGh5RkxKd2sxM3RyYkVpSkhwcmo1?=
 =?utf-8?B?YlphR0dLa0RsY2Q0R1VncEVWVUhEckxtZTR0Y25Md2VIWkNjaVFSS0g5Z0ZQ?=
 =?utf-8?B?dWhGWkxHYm1HQ3dRTGkyd3FKM1FESFZkeWt4eGVUcmIxWTJTVEJWQ21YTnVp?=
 =?utf-8?B?YktLMmlHdTZ5cUFIaVNkalpDNHZRTDd6MHQyS2ZaVS9VdG5jTTY5TU9mcnJk?=
 =?utf-8?B?M3dWYXFqeGVuRVI0U2pTNWhLYTNQSVNLMjc4bzVSQ1FQdGR6NkFxRjVVR0Fl?=
 =?utf-8?B?RXM1c3JFRmRWaTUxSXFaeThJOHdCc2VkQ3BRSSs2Y1R0U1QvRm9WZXhhRWo5?=
 =?utf-8?B?ZHRGY1p6Z3ZuUnNNL2t5bm9BMXI5ZWM0cVFyNHordC9WL1lVd1hmUkNmejFH?=
 =?utf-8?B?RU04NnFaV1R5THNnWko0bVA5RzlLVmZ6cVVPZGR1UDBHeDVCVk1uZm1rS1p3?=
 =?utf-8?B?UytDREU0UWpRc29sMWlMN1dlbGE4Wm9VQnN1T1Nub2tRZlozdUJpUnRObWE0?=
 =?utf-8?B?eHFvMWZuYWJRZEU0cTFNaUN3UWh5eUpVYU1wMWJHbWtyaG02UjdpMnYybnRj?=
 =?utf-8?B?dEJ3enBydlBrMjV6ZjdFWERRMjB0dVAvd3lEejM1citQWnhBRy9iYmFRRjF1?=
 =?utf-8?B?SFVyRDhwQkJ2dTlvT0duUDVKOUhiMGhwbXovUGFaeE5FdFZSMVhsM3FSRVRM?=
 =?utf-8?B?U3pITmVyU1Q2a0lWYzRvSHQybjhBdUdUSlF6SmdBL0dLTjJwa0grRmNaVnRG?=
 =?utf-8?B?ci9ZVGNPRURwNUtHRFU4ZXBwaUZUVWV1SDEwek12dkFxeXd5QzNvK2J1cGQx?=
 =?utf-8?B?c0QzZUhXOUI1V2RIWEZCbWRWZDJZa2hrNUZ4Qk9uUVpRVmJlL1JOemoyalVU?=
 =?utf-8?B?MGRzVUltTWpYWFgvZE94Tm0rQURFZTRDYTJXNWxFRWkrZzZHdWNQeERqV2RV?=
 =?utf-8?B?UkFXVzlkMkx3OG10aVdzaHFQekVnWVY3cVk5T2R6aHlMUTRZSmtaOVFmcGww?=
 =?utf-8?B?K0drU0lWaVRSdGo0MEVQalBBTndmb29DN2xUSlFpdjdEenZqNnRHc0ZYS3dW?=
 =?utf-8?B?bzJKSi81SHJ4ZUpsb2FyaG9Wd3hVRU8wYkx1dUNiekxQdENaWHExaXVSd2V2?=
 =?utf-8?B?WG11ZjBYd2xzeEd5cjVkMnQzMVZSSHQydzk3OXk3OFNIcWkwSXpac1FvNHpv?=
 =?utf-8?B?b21Kb3VQRFIyODdiWUVjUFVNWGQ5dWhGQjdyeXRWRnRGYU9jWFhhay8xaGgw?=
 =?utf-8?Q?CcwVSyEwdOpaHVZpTdu+s8xkZ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: tuxera.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DBAPR06MB6824.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db7151fd-972e-4fb0-3885-08dabb2df9d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2022 10:52:16.5079
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e7fd1de3-6111-47e9-bf5d-4c1ca2ed0b84
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nC4k8dkgAgmlmuL0dmbPYFqwAzByG9+7vXzO2/XyXj2gmFJRW0ADejTBGtLtVxKRfojxNbzBFt5knJy5KeUP/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0602MB3618
Subject: [oss-security] OPEN SOURCE NTFS-3G SECURITY ADVISORY NTFS3G-SA-2022-0003

QSBzZWN1cml0eSB2dWxuZXJhYmlsaXR5IHdhcyBpZGVudGlmaWVkIGluIHRo
ZSBvcGVuIHNvdXJjZSBOVEZTLTNHIGFuZA0KTlRGU1BST0dTIHNvZnR3YXJl
LiBUaGUgdnVsbmVyYWJpbGl0eSB3YXMgY29uZmlybWVkIGFuZCByZXNvbHZl
ZC4gVG8NCm91ciBrbm93bGVkZ2UsIHRoaXMgdnVsbmVyYWJpbGl0eSBoYXMg
bm90IGJlZW4gZXhwbG9pdGVkLg0KDQpUaGlzIHZ1bG5lcmFiaWxpdHkgbWF5
IGFsbG93IGFuIGF0dGFja2VyIHVzaW5nIGEgbWFsaWNpb3VzbHkgY3JhZnRl
ZA0KTlRGUy1mb3JtYXR0ZWQgaW1hZ2UgZmlsZSBvciBleHRlcm5hbCBzdG9y
YWdlIHRvIHBvdGVudGlhbGx5IGV4ZWN1dGUNCmFyYml0cmFyeSBwcml2aWxl
Z2VkIGNvZGUsIGlmIHRoZSBhdHRhY2tlciBoYXMgZWl0aGVyIGxvY2FsIGFj
Y2VzcyBhbmQNCnRoZSBudGZzLTNnIGJpbmFyeSBpcyBzZXR1aWQgcm9vdCwg
b3IgaWYgdGhlIGF0dGFja2VyIGhhcyBwaHlzaWNhbA0KYWNjZXNzIHRvIGFu
IGV4dGVybmFsIHBvcnQgdG8gYSBjb21wdXRlciB3aGljaCBpcyBjb25maWd1
cmVkIHRvIHJ1bg0KdGhlIG50ZnMtM2cgYmluYXJ5IG9yIG9uZSBvZiB0aGUg
bnRmc3Byb2dzIHRvb2xzIHdoZW4gdGhlIGV4dGVybmFsDQpzdG9yYWdlIGlz
IHBsdWdnZWQgaW50byB0aGUgY29tcHV0ZXIuIFRoaXMgdnVsbmVyYWJpbGl0
eSByZXN1bHRzIGZyb20NCmluY29ycmVjdCB2YWxpZGF0aW9uIG9mIHNvbWUg
b2YgdGhlIE5URlMgbWV0YWRhdGEgdGhhdCBjb3VsZA0KcG90ZW50aWFsbHkg
Y2F1c2UgYnVmZmVyIG92ZXJmbG93LCB3aGljaCBjb3VsZCBiZSBleHBsb2l0
ZWQgYnkgYW4NCmF0dGFja2VyLiBDb21tb24gd2F5cyBmb3IgYXR0YWNrZXJz
IHRvIGdhaW4gcGh5c2ljYWwgYWNjZXNzIHRvIGENCm1hY2hpbmUgaXMgdGhy
b3VnaCBzb2NpYWwgZW5naW5lZXJpbmcgb3IgYW4gZXZpbCBtYWlkIGF0dGFj
ayBvbiBhbg0KdW5hdHRlbmRlZCBjb21wdXRlci4NCg0KV2UgcmVjb21tZW5k
IGluc3RhbGxpbmcgYW5kIGFwcGx5aW5nIHRoZSB1cGRhdGUgd2l0aCB0aGUg
c2VjdXJpdHkNCmZpeGVzLCBhbmQgYWR2aXNlIHRvIGZvbGxvdyBzZWN1cml0
eSBndWlkYW5jZSBhbmQgZnJhbWV3b3JrcyBzdWNoIGFzDQpOSVNUIGZvciBh
c3Nlc3NpbmcgYW5kIGltcHJvdmluZyBhbiBvcmdhbml6YXRpb27igJlzIGFi
aWxpdGllcyB0bw0KcHJldmVudCwgZGV0ZWN0LCBhbmQgcmVzcG9uZCB0byBz
ZWN1cml0eSB0aHJlYXRzIGFuZCBjeWJlciBhdHRhY2tzLg0KDQpBRkZFQ1RF
RCBQUk9EVUNUUzogQWxsIHByZXZpb3VzIHZlcnNpb25zIG9mIG9wZW4gc291
cmNlIE5URlMtM0cNCmFuZCBOVEZTUFJPR1MuDQoNClRoaXMgcmVsZWFzZSBj
b2RlIGlzIGF2YWlsYWJsZSBvbiA6DQpodHRwczovL2dpdGh1Yi5jb20vdHV4
ZXJhL250ZnMtM2cvcmVsZWFzZXMvdGFnLzIwMjIuMTAuMw0KYW5kIHRoZSBu
ZXcgcmVsZWFzZSB0YXJiYWxsIGNhbiBiZSBkb3dubG9hZGVkIGZyb20gOg0K
aHR0cHM6Ly90dXhlcmEuY29tL29wZW5zb3VyY2UvbnRmcy0zZ19udGZzcHJv
Z3MtMjAyMi4xMC4zLnRneg0KDQpXZSB3b3VsZCBsaWtlIHRvIHRoYW5rIFl1
Y2hlbiBaZW5nIGFuZCBFZHVhcmRvIFZlbGEgZm9yIGhhdmluZw0KcmVwb3J0
ZWQgb24gdGhlIGZsYXcgdGhleSBkaXNjb3ZlcmVkLg0KDQpXT1JLQVJPVU5E
OiBOb25lDQoNClNPTFVUSU9OOiAyMDIyLjEwLjMNCg0KUFJPSkVDVCBVUkw6
IGh0dHBzOi8vZ2l0aHViLmNvbS90dXhlcmEvbnRmcy0zZw0KDQpBRFZJU09S
WSBJRDogTlRGUzNHLVNBLTIwMjItMDAwMw0KDQpJU1NVRSBEQVRFOiAzMS4x
MC4yMDIyDQoNClNFVkVSSVRZOiBNb2RlcmF0ZQ0KDQpDVkVzOiBDVkUtMjAy
Mi00MDI4NA0KDQpDVlNTIFNDT1JFOiA1LjAtNi43DQoNCg==
