Received: (qmail 26476 invoked by uid 550); 27 Mar 2026 14:51:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26399 invoked from network); 27 Mar 2026 14:51:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=cc
	:content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	qualyscom; bh=qI1WMloJKqUBpKqzH1YM/U8wQ2NTZeDiQdxqBzFbI+U=; b=ne
	hzEaggF8kS9FsOlzqlzkNZeoL53ozLI+1sdk5qfDAFzz5HMf0QdVTGI8gylf0Y/o
	Mt4wWCJYMUEgO/6GN61F8owdSVBkeP+41lgcnH52gqAcsG6mAcfS2bamHvyWElzN
	QxEhYjvJ/J1HQWB1uA1gl83k9eTQ+nEoezeB4uU+7Ifn+HFiCTfeaJi/0OxGEFyM
	cJzZVxWPksvKcoUUDDBfVztIFTyciPspNp2RQOry2n7faVodBv1xLSQdQ7xT49Ay
	3JhHi0/WYKq5HrLBqdltgQH10RbyChH19vuh1oJ3XNulK9DUQ8Xe2MLL5q+frAyD
	eGFF3HmJBdbrHlvXTdvQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PKcDR2vAsaOhZvcziSp3iUUUsxUmN/T/iLyZBKzifQWwgotd0n+94zr91DhHB6CsAM/0b0FzNpHT0CDOOYUChYlpZdsj4+q40jynw8xWFGCQTsrRy2qJOds1ay69Su6Ma+GDJR977MUZt7l4w/HjiXk8x2IhHBGFMUT9//ThzaIEt55QHudYJdPvc0VYY5WKrTun0xfKWK7NkWkRULCOjj3ICbHJ0IYIOvao4Ls/1sZU68CQWGakjPCrxVVGYYWJis7FN0fnSrphf9WrVLKfo/DubA4JPMREHXTB7hDPoKyU3b7QJP8WFZVEC1fsz4v61L3tN9NAdBartHVwLCYxtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qI1WMloJKqUBpKqzH1YM/U8wQ2NTZeDiQdxqBzFbI+U=;
 b=upye9mPqkJKUI56i7B6yT8lrlQT7mPLr4bwQU88RlLYSEll4T6lyZr7IokMxrLRiUYyMEUUY/BkalP+KA/VV+P3E8eWwN9JmzzuCmTg7SpJrBYM4y4t40049EquY2ezGvJkWSRnIzsX7JrOpzyMXeunK+TWx1C6gYWxMsRqyTDH0LwpIUOIVC9mozSrAtRNx1Z2/9yuLozHYHJCWeFIgA6Wj1vm/qE+jhDrDRqGJq3W0Ge3U65NJu1bNXNEsdf4BizTSouxEwODJmtLpckWkMupc642HxQmTkuhJxHTikUK5XKUn8fNQxKZ22eXsxqjqidNUzAdH93knxYqtMAVqCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qI1WMloJKqUBpKqzH1YM/U8wQ2NTZeDiQdxqBzFbI+U=;
 b=IlAKi9EoHSYLiIdaGmREOa1bDc0zIphJswdeQ6kTBekmhrEQIs1rMuwoEp+ZUfsMtNswCOKUjkV20lw2fftDuoI3UmqatDohrFzYpQApaYcRl0hKuqVBQoD9z/UXnrmoxIYxqZ3SEjakGkVw+IXJlEIjg+NpVdHAwibevhiyxbQfF4B400ZfXVtdjj6n4xycCTXF7CfU2DV5VvEZ5EDu/xC2sRhCs1t4C+BgYGpnK6tViAGVuCalVMGYFcRnjpDSG3xzMp5jigAHtFtfF9HWRhQ1HwZ3pPvY12C5zpmmOgyyf++ICkunOqhDeyUxmhMTTRvHJtvh54C9b2TCOeHu6Q==
From: Qualys Security Advisory <qsa@qualys.com>
To: Greg KH <gregkh@linuxfoundation.org>,
        John Johansen
	<john.johansen@canonical.com>
CC: "cve@kernel.org" <cve@kernel.org>,
        "oss-security@lists.openwall.com"
	<oss-security@lists.openwall.com>
Thread-Topic: Multiple vulnerabilities in AppArmor
Thread-Index: AQHcsmaIKu96NKiXikGSCaV0fqpbFbWrawGAgBXO+YCAAMWnAIAAjaUA
Date: Fri, 27 Mar 2026 14:50:42 +0000
Message-ID: <20260327145022.GA30102@localhost.localdomain>
References: <20260312212345.GA2728@localhost.localdomain>
 <20260312213345.GA3105@localhost.localdomain>
 <20260326183559.GA22540@localhost.localdomain>
 <2026032744-resale-jeep-2d72@gregkh>
In-Reply-To: <2026032744-resale-jeep-2d72@gregkh>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV5PR06MB11218:EE_|CO6PR06MB7220:EE_
x-ms-office365-filtering-correlation-id: 1bc64e04-9768-4c9d-52f8-08de8c10386d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|376014|1800799024|366016|38070700021|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info:
 aHhUcGAuKDusWEmXJLfuR+EmP1yt4dEJzmnNBvboTivqnFUbS42tOEI/HLhXQTN8CEzpM4RcevkH98aJtBGV1Q+oZb+AUqj9V3fG5i6KwObdDNTIrRFu7aFYvieDwNghtkh/C4p1UmgVHG8uVx53EpyKIs8F4mDnMSeLJT1hXFb73XRVNuWXFU3CCjoH3lhR0f9D7CdG6x/D08HLMW3euC7VFm1ForHmrzI2oPGD6w1e4BPPve323DHSO0VQUMgYHrS+sCHhItCH79PZzHmi6nL7ic7AKQfe45esiiZ3HsRmFn84jNJq1+DLfZrK8W0fd7fx+2JfYMF5TuB9s210MrO0Kq8RsElOIPnHG4xCeEnu1ajzyma3TEi9UKYm8LYsVaRoZg7cQqLk8ImAnzqTKIcBBIQcaUIYRrdbFISUA9b3pp6g6cLwOIc/WNsHxQI2e3nDv0ZktyvFK0ugKGzKklTD4VqWhZYYaqZQ/VcDxc+m11fkz46f04T5I2dla2clt9H4f+x/xeCgnq7/yH4ra/jWuNHVsChWgAvRx0AQVMmeG9Mddrd7kTJdT3DH18/42ZAA+5urvPVlYGtosuF+f09AlNI/acTR0NisjNrcjT3g39uMep0seEqADjr7PlfGC8T8iZcYRG8JaunPklA1k2hiV7Uy1VIWacIbnkUhWG6BOm2QjXBIyFsgnyPjFnqK7Redp9F6mO0YOv7IcOJTY8XaFatmdJLJnPOXfJvSNl6PFf1ay9vMMyOIsImGOYFPnX7KOqrJWJdBpviz9LYbkwt1Y0kvhMhvjy8posCvi14=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV5PR06MB11218.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(56012099003)(18002099003)(22082099003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?Nd/XLsQ1pEx0GqaiVBLTtu1iCFMPxbD5GZpLKYjTLofpakhGwEwRZdxblpEI?=
 =?us-ascii?Q?OpkqhLAAkcXDmW8Miai9h53C9PsFnWpbMohoscXyotpLCXbgP/cakqi0aJPi?=
 =?us-ascii?Q?tydUFMmzGWDSSQriM0CR6Jzgn1/PUcUv5tPwbqZvAflgY7yJupQgZ/kjr2a0?=
 =?us-ascii?Q?UQTbh1o5pU4+aJlIX+2HtmYYYtBKeNSEw3cj44AUoCr8B1VhH43vHc0bw9XM?=
 =?us-ascii?Q?sak93YOrqz6xMkCuIEzE2HrKlHo8xn993uiB1srks8lDNy9ATVsT7jXLzFLM?=
 =?us-ascii?Q?RkUN37/YVebmj5Dh9kKpGZEN6JgNa7BaJ5mKgQxq+OLFvW8FhOTA7NnyUlSk?=
 =?us-ascii?Q?K0yjztxANaIkI3NP3xlHZrbWe40En9ucHDPdLdP/yABU1KrlHcDEx4EzvbA5?=
 =?us-ascii?Q?1TJp9jbU4z6r1b2Ce1bUTaI6MX3+JRADx50bLU9GEqNtoNv+mPlJ3khKdrqq?=
 =?us-ascii?Q?MO2NDuXAcBz7ru/TgiFs4s6rs37MM+8lQF0JPtOjvJjp8EPkIvfWoTELzxiP?=
 =?us-ascii?Q?zPjXWBXeOnQNspE6hL1iZ610JQ3RnXFM265ezIy6eKI885ibsg5dif4aWQ26?=
 =?us-ascii?Q?VAanzU3XjWVFgBkMdsGdBSm6+WvhxWJvIcfpyCVhcJ8Jtwr5LYa3Q2Ml0rI4?=
 =?us-ascii?Q?NFLu99x6MyAraci27BLtWIjPEqgiq8iICyiEh4lUs2wawh+TKEKueHbGl1eP?=
 =?us-ascii?Q?CxQUwEVLDOX6t77H7FZqZlQpdJm7BElYMG58Tvf8YpWFuc3YQeQlhouragd2?=
 =?us-ascii?Q?7idfUZ8urxy8qD8dyMZoIIEUry+C9iVtq8/4DEhDBDSuq384wGO65DlzYtLl?=
 =?us-ascii?Q?xqLyxNaJgVTawQdvjPlluLL/ywzqYOSE1lpAw+Ee5WMlBJVwxixzLxPrUgY0?=
 =?us-ascii?Q?oFI2wnGdtZ7o7eM3StjF1QiNJrWheU/QYR/aLPFzrB7cMsQLwZGb+Ysvc3+O?=
 =?us-ascii?Q?ef32TvuKpfHbdpQX74rQUaxtDfgfCEYFb1T0QwPLMkfgAXvb9jtBKgSdMBA0?=
 =?us-ascii?Q?TAnEKqhVdaEeG51aLF7vCUts5KczhpyCTnrndh+i0yUK+OzK/8lPYIV1VS4w?=
 =?us-ascii?Q?Y6qKnWRjgMj7u23kUyRj0mCOxFJ7Y0sTioQiVa5uX34+o88EuR8mKhAX8CzE?=
 =?us-ascii?Q?ONka5SS5S3a1+B8gAhru/DkKg09ek5CZSKagSOhRRaDM8yteC8NU8PGDt4Ae?=
 =?us-ascii?Q?iaBw4Bd4UnPad9dT8f9I1iM97WD0LzBy4e7fFByhSB8V/t8PCvX6A6ijEa7g?=
 =?us-ascii?Q?Si1HW3BdAgs4SmXnOA2vuvUfLC8bS3UJa0U3te/fi+HBjftMBVlydtRaPZso?=
 =?us-ascii?Q?x0++sDkb64CQIVfAAhUugOasDqC0TxR+Vi7WXBWLiolgKl7VKA7qc+Ut2dQX?=
 =?us-ascii?Q?NlpMHVinIBkKkJuwoLQSINiAUKGKRa5SaFIrPd5EUF+yilUy8GcyRxnANvme?=
 =?us-ascii?Q?B1CQ9r6UmKwK3XDLFJDgwpAtxkz4Po8wvC0MQhcLUXwq/hzmKSNndv15zPsm?=
 =?us-ascii?Q?o6yvH9rNpzEi60NCizaT5uFntKkGiz9PjShEDK0FiY83X6cqEHT1Taoyz2Zt?=
 =?us-ascii?Q?ZwLDkrnmnqU80yvgF6RZvcgy86oKLfKByBucJ/Y8s6PnIdoKxCDsSqC9qzcu?=
 =?us-ascii?Q?yWnROpgVl1oujH7VGeG2PLStPFZccuojBO3b5QXv9Dw4cjKrIAJrsSYF6CRZ?=
 =?us-ascii?Q?GKRTdiHtwlH3dBKbk6YD7PDBFt0T00B4p4D/wqxAZj8vqPCFyKp/Qyfo6d0r?=
 =?us-ascii?Q?0R52jtzU5UfoZAHB/EIvHeXRZ5EAdKuKhPcSMZSl4wGv0BkW1/nl?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <92196152C25C684F972AF42E4F3ABC7C@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked:
	pcjZdgO69dbsfcX5PRuRONhU+2GJA2pGP75E7MRe3I4/WT8ISvsEFBofL7mDShAsFGwCgBZySNUK1Mxu9ZZLSgXr/PbTmE0LXMpdXdCPhX6H/T00TvE/6XJlko3uzWQ53cZA1weDlBLmcLvRRuf4mNL37JjRcUPXGPV5Py1z1jfRPWUQx1AvLn54baIBVb+yAsdZqj5Mo9P2DZj/r/YQ+3yuZCrVpcxBa1LGHHT6tw+RleAsdJmoVXZhEzB3HzmbfqYjh1/0isXKDrtD+dG+Flo9RhhqqvSQWrAbHnuietQ5Prg6h6Q1NNlvKbduVMrhZsgGww9laSZKerP2Ifmn6Q==
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV5PR06MB11218.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1bc64e04-9768-4c9d-52f8-08de8c10386d
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2026 14:50:42.6791
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dnLAzvkHuxDJAk/Jye3R6PnCd3DBgU4WHaTOMSX1OLcwPdgMw78QsJv8YAuK/dIPl196HkEgQmUvdyeUTyQpRg3LcUJS2HRhBk+lqn1Mstc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR06MB7220
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-26_04,2026-03-26_01,2025-10-01_01
Subject: [oss-security] Re: Multiple vulnerabilities in AppArmor

Hi Greg, John, all,

On Fri, Mar 27, 2026 at 07:23:24AM +0100, Greg KH wrote:
> On Thu, Mar 26, 2026 at 06:36:17PM +0000, Qualys Security Advisory wrote:
> > Since two weeks have passed now (since the fixes were released), would
> > it be possible to please assign CVEs to the remaining seven AppArmor
> > vulnerabilities:
> We were told that these all required elevated privileges to hit, and so
> were not classified as individual vulnerabilities.  If the Apparmor
> maintainer tells us that these really all should be assigned a CVE, we
> will be glad to do so, but until then, we're just going to stick with
> the ones that we have assigned already.

Thank you very much for your reply! Adding John Johansen then
(AppArmor's maintainer), since he will have the authoritative answer.

The problem is that containers can be allowed to manage their own
AppArmor profiles (via AppArmor namespaces), in which case an attacker
inside such a container can directly write to AppArmor's .load, .replace
and .remove files and trigger all these vulnerabilities, even without
CVE-2026-23268 (the confused-deputy vulnerability).

The way we see it:

- either CVEs should be assigned to the remaining seven vulnerabilities,
  in light of the container use case described above;

- or CVE-2026-23269 ("validate DFA start states are in bounds") should
  be rejected, because this vulnerability is no different from the other
  seven vulnerabilities.

Thank you very much in advance! We are at your disposal for questions,
comments, and further discussions. With best regards,

--=20
the Qualys Security Advisory team=
