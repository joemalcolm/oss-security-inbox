Received: (qmail 12064 invoked by uid 550); 2 Aug 2024 14:43:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5557 invoked from network); 2 Aug 2024 14:41:31 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rR1YrF90X4VfKpH7xpV00Uj14hdHzPotc7mOlMwlkrF1w9ynLCs3DL1e6qWyNBCD/0nv1Jugr92Ln5kt7iOkwI6f7ohxxMCSksD4IB2+Psw7eMVtwAmecVAk7Cczpt0KvrrFp/9lapPgwGKPcD0cn8AmVyM62UjrgDCJwuz9xApUP+L0uwDSfPMUXj3DY9PdQGmXJk0Szk7AWGYq44oiWFo9HJ6sy1EQl/E+KIfLmhcTlz2Wz9+L6Cg+2CREjpSKX2XCdu3oERkRHuGnxqjqxeuTXMiTjw0ocGTSnR5SB/Gc0sNIu9F6akaZ2RywJ+JoTCRg7AA7DisyRiHSlN7ylg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iarH8T6/EJJbjQeP4JMt/i49B7cT6Nb6St3WERpoVIk=;
 b=voUzJpOi/PmvXdIIKlMfDzHJnt9DRgyOvusnW3mrpAScuGcOZMNxfASyxgYuowFrcCliWMuEgZ10i7CKnCL6UBYmrd0BCL/I02DX2iXy0Z1i5hZclhiGiKvFcilPQ+2+uf2NFvuHFZv4QNQOrm13TUicuVt8aXsq4RTtml3/4EIt+Z6svbB1d99nPSirk07mbbXX11jYQ7n9FkvaY0DuOeFw+q0TiGwmKNTeXj2AUn/MAP1rWNMQSSxZDl975jbENnUXxy/xeV28NcDurVXBsK5FrpdHXwMW73d/l/1PfYwdpbGOGY4ZdedFdrRFyd+G0Sn7UePhoMH214jz/6iNhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=iradimed.com; dmarc=pass action=none header.from=iradimed.com;
 dkim=pass header.d=iradimed.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iradimed.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iarH8T6/EJJbjQeP4JMt/i49B7cT6Nb6St3WERpoVIk=;
 b=l53B+6TnWkFsuciIvgcaMik8lpGSSTDbxr2G+nxWIUVYwWjRzS/RT3PLbNpM3F00yDZGBZ3YeDGhZgs5WSkXnqlRSpTvqTyM3PJzT8pqwplHesNjef8PidcJ0sdzjfYyAAH6P/sFYOaM57CxIFOmPMuWufnrAhnEBqASMhu9A/E=
From: Dane Bouchie <dbouchie@iradimed.com>
To: Solar Designer <solar@openwall.com>, Andri Yngvason <andri@yngvason.is>
CC: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
	Travis Wise <travis@wavesquared.com>, "security@raspberrypi.com"
	<security@raspberrypi.com>, Simon Long <simon@raspberrypi.com>, Moritz
 M??hlenhoff <jmm@inutil.org>, Salvatore Bonaccorso <carnil@debian.org>
Thread-Topic: [oss-security] Neat VNC Security Vulnerability
Thread-Index: AQHa5Gdk8SOq+WXGO0adtj8IOPPsSLIUCq2AgAAAT3A=
Date: Fri, 2 Aug 2024 14:41:18 +0000
Message-ID:
 <SA1PR22MB2978E752B5A2B186F0B4D9B9B5B32@SA1PR22MB2978.namprd22.prod.outlook.com>
References:
 <CAFNQBQwnnA_=sZCvYf=sRzz2SXfqJB5_JEFYjCC+pcGekN9WFw@mail.gmail.com>
 <20240802143913.GA11135@openwall.com>
In-Reply-To: <20240802143913.GA11135@openwall.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=iradimed.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR22MB2978:EE_|LV3PR22MB4509:EE_
x-ms-office365-filtering-correlation-id: c7d0c5b0-14f3-4228-5dc5-08dcb3012bb8
x-ld-processed: 90a08e1e-3e24-4e25-8b8f-30fa0779f522,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?Io/HEXhwLY4Ghyoo/X0vG7aQZv+OLtWnC7aYS3m1nl17IheoH4mA5QqhUD?=
 =?iso-8859-1?Q?kAv90Lb897Xq67KbB3PCQ7/D5cDCbTxhJ0Koo9Fe1N59RyMTlqiymzTd6+?=
 =?iso-8859-1?Q?0MEu3feJZ8SFnkHiEuM07NRwoawea1Nj5lzHDTP/PnEgO2OMFEb8C0nJjB?=
 =?iso-8859-1?Q?m8OqYFvweZGaQDN9kTHta4gV1eFsTtPHlnMHdxrXmQbaBqL2RpQzMvxrh2?=
 =?iso-8859-1?Q?5t1mGHgBRl2A0kzJhz12m+BDhTao+hLm9phRdUOm0DLuLUbvEe5ZPWgI0O?=
 =?iso-8859-1?Q?H7Efq/1b9np7rhdRAby2GanuYVENhlgW4i5V6I4Kp7PRbiiIQhR/kW0gTe?=
 =?iso-8859-1?Q?N2S2R7DtB/ZrV+n2yNyy9RE+DHWFNjEwCZWXgOojBU1k/ABaTaCjBTwdKf?=
 =?iso-8859-1?Q?6RQXZY8nNWWnftIAFxh+VIlrW0EIoQrKhr/1GtEwwMAHMkbXkprDnPlJyc?=
 =?iso-8859-1?Q?5/DbmZbbSP5srEXHJzUaOEQippa98VKpciRbJdhXD+YHNWPmc5JY41Cm34?=
 =?iso-8859-1?Q?KVctF0JPXFIqJtj4mtmAtL7wA4/kY7FIPnqNs9k+77rVMU9nh/HbJJrPbL?=
 =?iso-8859-1?Q?huQzQ+sUYda5hWWviA9d1d5eqALLOiBHWzGyGBZvIRmVPNz1DtDWT6ubS1?=
 =?iso-8859-1?Q?QS7iBWXyoYxSoMjp+CNVIMCMGhAFbDqwCFpRbwsw4HiP7xr5VTcLRMT019?=
 =?iso-8859-1?Q?we01183yKVylg6toHf6uo52DejbCfwFW7GxiCOHqNkU6RF5o2hGUUGviEV?=
 =?iso-8859-1?Q?CkiggijqbQ4xFfqXY0cBOEHBfiYXphNiLzzn2SyAvQSSiWIX/4X1jxU3S/?=
 =?iso-8859-1?Q?Jym1W8FZ38LcL0WpfSD++WjRPOYHbb4OHuJ4+iH3a8eLicjWhcYi2iZ1tk?=
 =?iso-8859-1?Q?7KpWcTSK7CcL10tYAp5O4JkGF/icnJbXk/jdTE4rHem1rDMRCEjnHHiZ+N?=
 =?iso-8859-1?Q?i11zdQ3Styi/n66MR5R+R3VJWb76DDGTA0WtSkKS8pKUvGubNFESKSmOc/?=
 =?iso-8859-1?Q?3Dmt1ZTh1HBvVlT3YR2Dok7kTqHmjOwBQYGPy/Lw2GXnQKDm25XWfwSyFD?=
 =?iso-8859-1?Q?SBh9t2urGjB5OREzuEnOqIdDK8bZ/U2xJ3SMxhQLqIJwXyqFNeY9nFq1Fm?=
 =?iso-8859-1?Q?Syeh2O/n6uCgivR3dCxTkl8IUftbAfjOHPih8Tf0cSCd6cOoKFdukBw6Gv?=
 =?iso-8859-1?Q?80xWerGgDEfOJUlzc/7jeb7/MlTm+O7v0oJZWDv5SOgYeabwgkAgXZO2ez?=
 =?iso-8859-1?Q?uSDXMZkGX7RJBmXNKxxVgloYmDVDT/PAErvuq/4zZzU9fdPQGCAESNlM1w?=
 =?iso-8859-1?Q?oLG75xKp3uI4mc3yVbcUb9BL2pFuKX0KZcw/ZXH6QmLLdX5Y+xweCkUFF/?=
 =?iso-8859-1?Q?NRupf9gPydLX4zMatfRLcxyZQqsTk6sRhu6JJQ8y1bsfgaxQTfNps=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR22MB2978.namprd22.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?KjVReqb2CAN+DfnNQB5iSMI0lOvq6Ov5t6UL65wPajuIr4gQccPErIZe8f?=
 =?iso-8859-1?Q?wMqL0ORZl8/pkjH3I6fnu+9vVYr8C/OIdKGwcl2TDnW9+dRCrIkF+giaYB?=
 =?iso-8859-1?Q?pRpZNmQQDRDYZYJkA5GpeYGnYmbDY9s5KkdD6HavQjOABcR7E+dzF5lOb3?=
 =?iso-8859-1?Q?u8FnLkSuX500nuX9JK8FFae4rxSV+dWW64686U6OinX80Sk+fdK+H9rl7Z?=
 =?iso-8859-1?Q?ZX0p/+mceTczA4Tmw1t2TZvRCjDo80Rt3bbv9mpbztgeSUMHKvTuvSxe4r?=
 =?iso-8859-1?Q?iBxWRmzn/uo+ciEK9fBRcghKAtxHVIqEe3Be7ku3BV4FA80VjkP5Qu83c7?=
 =?iso-8859-1?Q?mWTc50sLfaqvDf63bjBqV8zdyR64pQJA9V+3IOxkOQh1oYUejgPgeeqY6J?=
 =?iso-8859-1?Q?124p2j+OT6c2CkN4q0rszr4OFLW0gwklpkJ2lZfjGz2+DhOxXe3XQMKeE6?=
 =?iso-8859-1?Q?y/fyx72FsliU71kI/tmi33rNqB5A0OFCc17XcetNitG7AYwGzVYUGrhBko?=
 =?iso-8859-1?Q?cPdgQ9Y1QTJI9x5vKrjt//ZX46kQyc1u9pPjXGO2BLtEJ818yJDf0McP0o?=
 =?iso-8859-1?Q?bwLIYjw/lJp1UqgJt6LvjP9xevi95ccSOxq4cOHpZin+vmqk5FfBJcQbsD?=
 =?iso-8859-1?Q?bQThnZUrnp2rujlXII28hlVqDDmH5KFH8XfURkz4JU6XHqb7u4GvRImpAZ?=
 =?iso-8859-1?Q?JYGUwMdptnpmtVXMy71pZLGse1zap/HSCM6GnxWn0pIo9iC5UeMksRUA8w?=
 =?iso-8859-1?Q?GgirNjOnkAFZEMzknfFPF2a0FoSdqHip11HaTmoselAxfDPvYDL4+luPPS?=
 =?iso-8859-1?Q?ss2I2h1CijIvtQ4os/UXm95QxraFb8gS2amuAEdjSrKIxATULR7KN4QAYS?=
 =?iso-8859-1?Q?MC/XJBcgwXgKdGQxnBFJea5wg9zY0UysoRBEgzBT30N/ddG5BrXcAq0rNk?=
 =?iso-8859-1?Q?YXsPIgOPJ3RFh8xxAoF0/qYwFPep1GcxTUcnBZ8ryUYsO4jaGoSjeDqG61?=
 =?iso-8859-1?Q?Mx+DVYvmKHsIlD3zBKFEEwVc3ANZHWTPzzuwlHw3YXZ/MEEOksrmq+BAiS?=
 =?iso-8859-1?Q?ooo9NNm+8OeMoFeT3pgdWZAuZf+c6q0ljZurm3mCcCkBt74hGDtfn4hYhs?=
 =?iso-8859-1?Q?CCxRO4NEle4Iadajaw0s/+w5oQZwBCupkaLQWRbwlrmvca0uX70chZ/tI2?=
 =?iso-8859-1?Q?d7P/51lN4IZr+iLFPxzX5QAK6m1uxsbKkwNTSxku+pSlURERciMIf1e2VO?=
 =?iso-8859-1?Q?5v/P+FKcbcOHc563eNGt1UaW6vwHnGNnMpAq+2mZ+Bf+6gbtKMBssPyV9o?=
 =?iso-8859-1?Q?dm/TMWF7XjgFl/ISqtyFKah0Q39StNzoCqjvyR2y6NvLbEtYi1GbKe6VR2?=
 =?iso-8859-1?Q?gNaVkGg4AasikJusD/L4O2gutxCI5Z1IoQzgi2+H3N5hkLj4CmUpChbaQ0?=
 =?iso-8859-1?Q?kQ2FrsBT9RNj9Oo1rkh5sOGqOSV9SLp6rwaz5ck0lvs+j2OphZ374EhMVS?=
 =?iso-8859-1?Q?FhoO+dFKC5wnHrqR3S4XazKGuhsWPFd19zYT3r2mkKiecCyygr8XqKEIH2?=
 =?iso-8859-1?Q?7Ly1NqoSf2gDELtGeU+w0aDkCE2Arp3IUb1/MIZ0IYZgpCfXekIf2HqbjM?=
 =?iso-8859-1?Q?9+NHR/nH8IKk3IMF6x2JxS2CGKE76t9YXh?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: iradimed.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR22MB2978.namprd22.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7d0c5b0-14f3-4228-5dc5-08dcb3012bb8
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2024 14:41:18.9090
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 90a08e1e-3e24-4e25-8b8f-30fa0779f522
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I84n/pdEM5lIIXOd93RbA+2835empqoHrGhs+T4VHVD65bdSOm7j+xdtddvwk9bNE9PMSX1VLYtC66ZyJS1ftQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR22MB4509
Subject: RE: [oss-security] Neat VNC Security Vulnerability

The client chooses the security type, so they can pass in "None" to the swi=
tch statement. is_allowed_security_type() now prevents that.

Dane Bouchie | Software Engineer
dbouchie@iradimed.com | P 407.677.8022, 170
1025 Willa Springs Drive, Winter Springs, FL=A0 32708
Iradimed.com


-----Original Message-----
From: Solar Designer <solar@openwall.com>=20
Sent: Friday, August 2, 2024 10:39 AM
To: Andri Yngvason <andri@yngvason.is>
Cc: oss-security@lists.openwall.com; Dane Bouchie <dbouchie@iradimed.com>; =
Travis Wise <travis@wavesquared.com>; security@raspberrypi.com; Simon Long =
<simon@raspberrypi.com>; Moritz M??hlenhoff <jmm@inutil.org>; Salvatore Bon=
accorso <carnil@debian.org>
Subject: Re: [oss-security] Neat VNC Security Vulnerability

[You don't often get email from solar@openwall.com. Learn why this is impor=
tant at https://aka.ms/LearnAboutSenderIdentification ]

Hi Andri,

On Thu, Aug 01, 2024 at 11:05:27PM +0000, Andri Yngvason wrote:
> It has come to my attention that there is a security vulnerability in Nea=
t VNC.
>
> I've released a new version that fixes the vulnerability:
> https://github.com/any1/neatvnc/releases/tag/v0.8.1

Thank you very much for bringing this to oss-security!

On oss-security, we need a description of the vulnerability, not just a not=
e that some vulnerability existed.

The release notes mention:

"The vulnerability was reported by Dane Bouchie and Travis Wise."

Dane and/or Travis, maybe you can provide the missing detail here?

The fix commit appears to be:

Add sanity check for chosen security type
https://github.com/any1/neatvnc/commit/cc71650a69abc2573a0d96d082409d246880=
2d47

Skimming it, I see it increases the size of buf in on_version_message() fro=
m 3 to 32 security types.  That function is also split in two and otherwise=
 refactored.  A number of "security->types[security->n++]"
lines got replaced with ADD_SECURITY_TYPE(), which has an assert() against =
the new maximum.  There were 4 of those lines, so I can see how a buffer fo=
r 3 could be too small.  So there was a bug.  However, none of this looks l=
ike attacker-controlled input, or is it?  Now, even without attacker-contro=
lled input an out-of-bounds write is undefined behavior, so theoretically c=
ould result in an exploitable vulnerability via some other correctly proces=
sed input, but was there any analysis whether it commonly or realistically =
does in this case?

I see the commit also adds an is_allowed_security_type() check to the begin=
ning of on_security_message().  However, the rest of that function only has=
 a switch statement covering a few known security types and:

        default:
                security_handshake_failed(client, NULL,
                                "Unsupported security type");

The action on failing the added pre-check is almost the same.  So I don't i=
mmediately see how not pre-checking could have been problematic.

Maybe I'm missing some bigger issue also fixed by those changes?

Don't get me wrong, fixing a bug and defensive programming is great, but we=
 also need the security impact documented.

Alexander
