Received: (qmail 13785 invoked by uid 550); 13 Nov 2025 02:33:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 8158 invoked from network); 13 Nov 2025 02:20:03 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c5L4u8iFQyfMc8N6raUP0s7FusAqq6BX+hl36Id9T0I+hKHecA8+eQvn4TGSviO+4jLMuhJR0BWQUH0hYwuUnucsXmgjz4nZiPo5eJZAhhleAWTanueapWvJIkw0F/lCoS6xzjpHn6AfyIYY1CCikUfoYH+j+mNAn+YD+JlpdimUB4++6XQ5/SEYqeC5fUiqi/+GOV/VhrIU+OnakKVMiztuCm3MRoV5DVt67Za5/7pNKw/5ZUzKVogme2jiNJMU+1L/rT/rEUNYq7D9Ea6tLznkHMZJakrO7i3geM6ZVn0vw6OPMu6c+wUU1R5t+td9lCMYnq1Fso9ijV+5BKnMwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/+8x4KfYYEZwqJFYaYjXyuR6fmbKxgn4gNluQss9Dlw=;
 b=S/KrC/j69nI1Hp3DuyCaOcjXFpKAIznykp5As43bfkMGz6iwA57C3a5IRaN6+fahSHI8O5dKb4HCkfgHB+320wCjRINdCQw+8Wkl3geabhwswqMUvxJjzkhOkq+jzOynDpU3ZOUqadoFTHP0sWVOuoUp53NCjVl3rErzAjt7DYqq42BOpT8Ut92yR3uUSWnjL6s/m+shjuqTuMGn2ik6DgtwCBfROezRZhJfWrJG7QSGbBJdRzkHp6QGHqQknAUxmktuiqpNxx5DJlsc1Yo+QQDXT/5QA7pufFJWSjKtCj4jklFLdxeemrkRUB4R8ygINts3wJIM4Z4Kv+AgOIdoOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cs.auckland.ac.nz; dmarc=pass action=none
 header.from=cs.auckland.ac.nz; dkim=pass header.d=cs.auckland.ac.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.auckland.ac.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/+8x4KfYYEZwqJFYaYjXyuR6fmbKxgn4gNluQss9Dlw=;
 b=bdcRg0xlRnJcoNxrMfkBYggVHDrHsJcHfAd6hqVSxSbwiDU47WXDubnuRaCH9onNhG5Qn4eZoOBvS00DFZ75DJuZ/+6fNpFp1YDS1p2tG9Ua3t1Yaz1NvlbIjKl1iPTjpwEB75SNA0Ct6860JShDeamrDYJSfqfP4mIZwTxkFPvvEK4TdybeP4/b6sqA4Bzl1hQzxBzou/lbFI9vSxEiVEnfWsw7JB5PXbO23BfVNz7it2Do/BKX6zVVruWMWrTL4q5Uh5uiukWopOGIu5pjPY99YFd7AHom814heTn1ERS7TXHQV4JDs48pRTxttPjRNArbM7PLe/kzxNb4/Xj5Pw==
From: Peter Gutmann <pgut001@cs.auckland.ac.nz>
To: Russ Allbery <eagle@eyrie.org>
CC: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Questionable CVE's reported against dnsmasq
Thread-Index:
 AQHcR1/QuJANdEws/E+/DnYb1yrL/7TWXygAgAAmlgCAABqVgIAAKweAgAX6QoCAAGMdAIABFob1gAKzW7CAAFW64oAOsCMg
Date: Thu, 13 Nov 2025 02:19:50 +0000
Message-ID:
 <ME0P300MB0713899B74FA8CA28A6C6868EECDA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
References: <aP_msOoiyHJ_M4Yx@mertle>
	<20251027163220.8c7ede47-6b3a-4190-ad4b-e52761b341de@korelogic.com>
	<20251028014909.GA6430@openwall.com>
	<76f8e74c-d9cc-4f20-8061-488598f85fe7@protonmail.com>
	<20251101030054.GA3031@openwall.com> <875xbtlf4z.fsf@hope.eyrie.org>
	<ME0P300MB071302891271CE8EBFA6BBAAEEC7A@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
 <87fravyp43.fsf@hope.eyrie.org>
In-Reply-To: <87fravyp43.fsf@hope.eyrie.org>
Accept-Language: en-NZ, en-US
Content-Language: en-NZ
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cs.auckland.ac.nz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ME0P300MB0713:EE_|ME0P300MB0456:EE_
x-ms-office365-filtering-correlation-id: b3cc1fd5-8302-4966-6558-08de225b1fa1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|1800799024|366016|376014|10070799003|38070700021;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?uTQMe0bBEtDAHEFPNqDcfpBSm8IBsihzJym7HR+ttQp5kMCWEkLCtrJbzB?=
 =?iso-8859-1?Q?OGsGA8AhLl8jmm6rp6+t2y27vE7l0voI8Kpfxw/OlPWObm1zjtNM+KkMsj?=
 =?iso-8859-1?Q?7qBMl3WQR7E+WmKM8LS/NvWPnR+o6SADpN7g9QTsjZTAY6WtYqm3Z7tE2y?=
 =?iso-8859-1?Q?fizPXjh9LjC6MjZ0VqxYcJoWEZy4vwoCWiFHy8I5UOZ1prEClojJgyNjxD?=
 =?iso-8859-1?Q?EoxvSBUoslSWFPlXxFARXr2ANF65YYVbM49BUd4nnyBTr8aatkGwr0KeEA?=
 =?iso-8859-1?Q?K3Prtwi8A7+dRR9IJZ62RQ26VyrUI2GN29xdygg6mHAMDmNXTvh94rCbbG?=
 =?iso-8859-1?Q?9wZRmuI3z8W7uZXVP3ePD+l4RzXzMab4eTNRYXwJSN8c00cztPbSKMaB6c?=
 =?iso-8859-1?Q?M411JX3kciY6EGoa94JFoxMZlHzMgiMAmCM0heyPFrRvl/7kMi5sRX/wl8?=
 =?iso-8859-1?Q?yr76HG7WAXrkKcI9SkLV8QDOCXzNs+uqpSy3xRYa1q7UmfmcDceomBfNxm?=
 =?iso-8859-1?Q?Vo/vzAIGog3UHsTmUvzjXXXrs04GL6XoAm1dJnWQZZztBEpM3+/yGLXzjv?=
 =?iso-8859-1?Q?YYY7gG2HKe6USRwS5z9ZivmeY9J2OzOvznLMMZhnwR9RqEzNvugatvhZPt?=
 =?iso-8859-1?Q?S7BxAeNyt7zSy6ki2McBTuY0am9+v7TSxf7w6rg3mJH9yDz+5jXLHPiJZV?=
 =?iso-8859-1?Q?U+eXThNslyoXFmCshfS+KvMCydbfaBhagPvdICLLpb9pfCI/x9v1RKV1OL?=
 =?iso-8859-1?Q?WQNoanBceUA879kNlSWiySgcGNH2zVrZRtp8dG2mWrcSIsExzjz1vwwhq5?=
 =?iso-8859-1?Q?WlctLT1hAs4m4T8ERx6Sn2g8cXmdBaLbreGoh99JLAIsaj3J+hW0VquxOX?=
 =?iso-8859-1?Q?z3JyI3hhjH5gOWq7kNnNYtpNzEeulHQxoJwfSFzU8KdjUKdYu18yy5ZiUo?=
 =?iso-8859-1?Q?WsAly/udbb4desoLJU0Pq6FBv3lKvQpLcvuPU3XgU2UkRP72+K5NsK2HA4?=
 =?iso-8859-1?Q?uwzddOIGunpeOyl2gRaQStm422SHSs+H5Z2t6jzlDJwPoyZDcsZknIVfmY?=
 =?iso-8859-1?Q?zu0kldo+82ZZnFIxr8dYj0oasXkbRCpgip8UteVMDtkREhZp1iIqBod2PL?=
 =?iso-8859-1?Q?z+3gfZXPuRs90vbqDLnCOLdtwo0eOOhUjr7Yn29xFRWLFiizRvReym+pYM?=
 =?iso-8859-1?Q?9NaSjhDL8Ht6pAq1yEyyFxt+xottXcoYlZlZmEBfDubmkOx0EA1FItQgeA?=
 =?iso-8859-1?Q?412O22y9meNrYKX6LKrNr62PRv9mKzTg5GSMZZxTrEX1oc4G/MRsGDGGxj?=
 =?iso-8859-1?Q?+GyiBCdD67cnfJNKbXOPnvJyEKUNiB9jq/Ds9HDsgFeAuuhhK9+qmrEcsJ?=
 =?iso-8859-1?Q?ZjE3Di/s7g7Tn65bubB0svGM1LJ1ztncudF1j/Dj1tou1GRPAYIXZH9el8?=
 =?iso-8859-1?Q?cXVpQ0gg8cjO5ZkbDfAwUmmTkv1xGoG/5mmgi8jY8EHdGMs4LMCCOUxx0n?=
 =?iso-8859-1?Q?LohMGnCufqrTgToNB0kopOpgH5R8f2dl6d2n5s/ebu+TskNFNBg3p5asoO?=
 =?iso-8859-1?Q?2yzaUNoDpdPgasg3pmlwEiS599YG?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(10070799003)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?p/BRE57reTMLSkmBh6TLVLB4eei76A6Tw7TXuh2i7LZOeS1LYAxijvf+bf?=
 =?iso-8859-1?Q?N15+UK/APFXGED4E/zjBqAbWWQ/8KHYJ8TO95VHRvZUuQdIJMkbbIl+S8S?=
 =?iso-8859-1?Q?HvRLXLywHzY4AX2R3fEjPvR5XjGk2n9mMtAP4zCWYxizkd3rV/k7ZRCpC4?=
 =?iso-8859-1?Q?pg+w5IEvy92qO/HCvax6EH7vIqbos7kEsYCh/ZukAJKuUnNVAXTQOTEebR?=
 =?iso-8859-1?Q?TxPgMEJ9Si2r4vV44YO42RA8RUqHzuKhfcHBdn8x5MxAcrihj+FrrkXDG/?=
 =?iso-8859-1?Q?0ppoI0YQoD9WCdbvyCT7LalG4DOfZJZk11O97RME534KhoWiTlvF2Yfx0x?=
 =?iso-8859-1?Q?vVH6TGcAH9xxezFiuPM9Vz0Ib+vAxRDckRg1JqeHCyMxZUe3AT3Y6ZY0Pu?=
 =?iso-8859-1?Q?ZLwz5nDEvHidAYfLOt6ToILCvCzxIYBXr82TG3b4XmyD6ZdEIbroxBY2db?=
 =?iso-8859-1?Q?3x5lf+UsGF1ywkwwmuRek6UL8ocOYVM7i4RkWSxlOdiYBIHvd6QnkPZiB6?=
 =?iso-8859-1?Q?+qX35RXsnbKbDWKLuYSTYpKbaffX/zBAcJf3CWZcQfr91gcUC3bIm/qSfQ?=
 =?iso-8859-1?Q?ZC9Vf1LE2oh6baq+ombWE9rpayT0C3+aJXA3bXnUfAXNmioKW+yVouQO6c?=
 =?iso-8859-1?Q?jX1oPcXpFwyJjBzXYdhoPPz/02Cgi1L2sH5LZj/O4OSqSG0eNKnw0StaX5?=
 =?iso-8859-1?Q?aYmvbPiYnEKWBeRAr67rpGIix6rP9I4ZorRewtit0kDBWSiAXyz9XmZ8EM?=
 =?iso-8859-1?Q?SOGRE1/q0lKFueu5nKRpCtMOOtuY1E8EiORMTAM6QmffU0ORrHSpFcu/2I?=
 =?iso-8859-1?Q?qos22c/Y1QdX4LjIRDjKQI59F4nZHmCarL4xTKFbvms3YF1wnMHjTJv4G9?=
 =?iso-8859-1?Q?xyqgvaM+PO4sDqWKhSmiXtJ+QhCkppi1dqSrPdRtJYEOovTXnQ/p+XhOzX?=
 =?iso-8859-1?Q?6CivzZjx/iILeJUN1SzR3+T8333k+p9Zz2OO+pDQsUMreMEmh0/XG3IIBl?=
 =?iso-8859-1?Q?W9p1qekHGa/AD0q3br3JgxsLwCjOWn8Eh5Azo39JJHdbi61gZc2na9795d?=
 =?iso-8859-1?Q?UtU4bKl0YIU5cvfGM0eRQYljnHgrND65jh6FbwxBbOhe9KM4HPuRv+451L?=
 =?iso-8859-1?Q?OktbLtQT0bjoJMqg02weKRdonpR50SwDUqr9NZyXGVqMdLJLKyI0QhuI36?=
 =?iso-8859-1?Q?Sjj9H6PxyxCSSK9Amy6iQg4nYf9T8kbfyv+x/14KigaGRovWs+V4gQ8E2o?=
 =?iso-8859-1?Q?1/q3Op3Qf7aXj6hDhLXmZxuRe/Bhd46C1a0ATnEEVH+IfaIqCzcqlOCSSH?=
 =?iso-8859-1?Q?Ihl4ihtKuGBOtDQLuAQigCYIjQrgDbkhdt2p1t5d6f+6jA85mKYxT+lcv4?=
 =?iso-8859-1?Q?SUsh49wd8OF5V29YDB4T2GKi6w611kOhuflywfgCDz8hoHocoQ5FAgF8EW?=
 =?iso-8859-1?Q?KBoXCOSo++RjB2UUAFba6i7vY+AEE/tXz/4bgdiWnWWZt/v6GlQcEhgV/E?=
 =?iso-8859-1?Q?wkuQ4TvLA5Oii3leEouHJyZ+PeDwB63deNsgArOUPTMYJG399LY11bu3ot?=
 =?iso-8859-1?Q?uUpz7FpP1cwNnnz0Npe/zzTsWtoSs3jhuN3IIpgh32wWnpEkkKRovZ1Upo?=
 =?iso-8859-1?Q?woXgwdvDN1dguXtGUHIJpjw3MGty9rOg7BNeM0Df/Jcu9fjMwAfVfE/Ue4?=
 =?iso-8859-1?Q?qxiWqosjo+4PXRZ4YiZqsYPTP6oZ/QFLHJTnxYGq?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cs.auckland.ac.nz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: b3cc1fd5-8302-4966-6558-08de225b1fa1
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2025 02:19:50.0935
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d1b36e95-0d50-42e9-958f-b63fa906beaa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6RjPHexL9QZwC+eZL9I351QNWVYTStQupEetIoTM/e20bKYlLPhGGq2veZhNHhgN7RmCZ0fkOetpqKUK7rU0N9NP4cGVLnEczP+/sEorD1M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ME0P300MB0456
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

Russ Allbery <eagle@eyrie.org> writes:

>I'm probably overcomplicating this problem by combining it with the problem
>of how to describe a more complicated security boundary, and my problem can
>probably be addressed by relatively simple declarations in the documentati=
on
>and SECURITY.md. :)

It's actually really hard to write something that covers all the cases,
particularly when you're dealing with unrealistic threats.  For example for
the config data the text for my code is:

-- Snip --

cryptlib makes certain assumptions about the environment in which it operat=
es,
most of which are common-sense ones such as an attacker not having
operating-system-level control of the system on which cryptlib is running. =
 In
terms of trust boundaries, cryptlib assumes that data like cryptlib keysets
and configuration files stored on the system can only be modified by a sour=
ce
trusted at the same level that cryptlib is operating at.  For non-cryptlib
keysets like PGP and PKCS #12 ones which come from an external source,
cryptlib assumes that the user has verified the data in them before cryptlib
uses it.

-- Snip --

But in some cases you get into "here is something totally impractical/
unrealistic/stupid a user could do [0], this isn't considered part of the
threat model", and you're down to trying to enumerate all the stoopid and
exclude it from the threat model.

Peter.

[0] For example modify the code/operating environment to introduce a securi=
ty
    vulnerability, I'll let you decide whether this qualifies as impractica=
l,
    unrealistic, stupid, or several of the above.
