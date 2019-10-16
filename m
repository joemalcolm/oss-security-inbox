X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["838" "Wednesday" "16" "October" "2019" "22:46:15" "+0000" "Jens Geyer" "jensgeyer@hotmail.com" "<VI1PR0101MB2142E0EA19F582429C3AEBCBB1920@VI1PR0101MB2142.eurprd01.prod.exchangelabs.com>" "32" "[oss-security] CVE-2019-0205: Apache Thrift: potential DoS when processing untrusted Thrift payload" nil nil nil "10" "2019101622:46:15" "[oss-security] CVE-2019-0205: Apache Thrift: potential DoS when processing untrusted Thrift payload" (number mark "U       jensgeyer@ho Oct 16   32/838   " thread-indent "\"[oss-security] CVE-2019-0205: Apache Thrift: potential DoS when processing untrusted Thrift payload\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-0205: Apache Thrift: potential DoS when processing untrusted Thrift payload" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22041 invoked by uid 550); 17 Oct 2019 08:48:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26242 invoked from network); 16 Oct 2019 22:46:28 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jud1XsXVV/qitLT/q6suc3MSY2Gu/LcyhdojOscMSRxgN08FFpVwZzkRRKXv98Zt2Zjlt6n82HT9/FdMlHmunQNsRmphnsu7R3G50nlVmybygpOEIHEhhrkMlmxHRBo8S7Q7T/pDrPoX7sRu47S1qwRDsFq//TpzNlcEC3rIUIVWToGU+nhDKKOAtWbzJhuuSf+yVD+vaftGaNqJO+ze+jdBZHvkRdUwN+t0bhmo/wsVLHg7oomStZCKUcsxvCViAfKGkDo3PUA7bXuXVh41zFRluKb5WzFE2xERkZWI5XfcvTpiECoXac2Q8HxdoSR6gBwaRVEM69e1ZFM9LCtCVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jI/+W1VpdpkrMhlrgNGgiQcGALQNPDXv8aJCP3lFy9M=;
 b=m3M5XXgBzNhsBNzWHBnwcoIG9R1KpuZSkEPWSCdDfE9jDU2hzwDc1ZLXy7rS4M+IbWtIZc6fCCjp0qsUh6dGMRPej2RdEZ607Pdlji5nyl1FFKbxLTpEoqycHjU3UtWP7b8BOT2pggMKKx3FK+3kpFYH1AchnjQJxLnYHNoURmYw4C1Iiz1rMv3yn8WdDhVGGjV0Q6lcRuITRBWO0cZrC6kZeypNpj+of1wUMGq/XoPdOKiZkkEjJ1/x+CkHHnwTVjqB5iHkQgIMHZRz0nkCFsZ5kXw0xqT9/8eauL36AyhOWXIUYjNNphmD+B61bZC6yZqhsBAzGaK93h9a2tHvmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jI/+W1VpdpkrMhlrgNGgiQcGALQNPDXv8aJCP3lFy9M=;
 b=lELPgYAnFrMKiayI7GeNHDb2WTtThf7AGRBPCLxX29mX7kChDX/dev9Db9oja08AxDVnm2j3q+prbG6zY/vPB62k4yhMg+naMKXUSYnWU3mf45ivQ8qFFSSWssPkB9l/GbVd3LbKJmw3PcTbHRdYK6gpSrok7M8cpzWKMqa2ONRr5xA+xoAY1PjxXTxLcZR6Qf+FEBhi12AOGv/C59KYi/6+ZOsfvFWBJT46llMufDfGSxANk8Zbtj++97Hit5Pty1i7Ka96AJApnSVyTY+bv3cidyKTGhcIjqSer2w4IUyn0oG6lrSewrkafBZgGcex7w+oPjA9R+pXp/HXINyMhg==
From: Jens Geyer <jensgeyer@hotmail.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
	"security@apache.org" <security@apache.org>, Thrift-Dev
	<dev@thrift.apache.org>, "user@thrift.apache.org" <user@thrift.apache.org>
Thread-Topic: Subject: [SECURITY] CVE-2019-0205 Announcement
Thread-Index: AQHVhHOE5ySPPE7CuketMUmSvQXoXQ==
Date: Wed, 16 Oct 2019 22:46:15 +0000
Message-ID: 
 <VI1PR0101MB2142E0EA19F582429C3AEBCBB1920@VI1PR0101MB2142.eurprd01.prod.exchangelabs.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM3PR05CA0150.eurprd05.prod.outlook.com
 (2603:10a6:207:3::28) To VI1PR0101MB2142.eurprd01.prod.exchangelabs.com
 (2603:10a6:800:23::11)
x-incomingtopheadermarker: 
 OriginalChecksum:5FC20531B309F13D7E3543D4DB68540EA53DB2FAF5A0950838B0214FDB140470;UpperCasedChecksum:DEAC16D50863434E8E7E582A8B5F04B27C4D4B00C998E34A50A2D72321EA4EDF;SizeAsReceived:7770;Count:51
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Microsoft Windows Live Mail 16.4.3528.331
x-tmn: 
 [1OQRlFKLaxtR/l1zCXxYKw8W6OZYtsc/0LahY9g9UoSD4G2XpnovQpAyo9eWdeGtCoX+svo/NT8=]
x-microsoft-original-message-id: <45E40CECE4E04ADFB045C486DF758719@HAGGIS>
x-ms-publictraffictype: Email
x-incomingheadercount: 51
x-eopattributedmessage: 0
x-ms-traffictypediagnostic: DB5EUR03HT215:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 m4xCcQ/v21V7gd8/tCoHWBLqYVdGltJea0MZZefzbi5xW1zFztp0NDg48LoHD13mQRxmBXY+pAGY/eUtiZy+yQQfNE0A+i/qbW4PtiTsjc8QTpoSR2oAqpSco5LAvQMvHQzR1PqP2vgl7CdT9B/XK6RVjnFQohkPRikVOGuN0/MroADv7uFRFadBpXA49pG8
x-ms-exchange-transport-forked: True
Content-Type: multipart/alternative;
	boundary="_000_VI1PR0101MB2142E0EA19F582429C3AEBCBB1920VI1PR0101MB2142_"
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: f2b05f9e-a180-49f5-9607-08d7528aa6ab
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2019 22:46:15.7899
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR03HT215
Subject: [oss-security] CVE-2019-0205: Apache Thrift: potential DoS when processing untrusted Thrift payload

--_000_VI1PR0101MB2142E0EA19F582429C3AEBCBB1920VI1PR0101MB2142_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

CVE-2019-0205: potential DoS when processing untrusted Thrift payloads

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Thrift up to and including 0.12.0

Description:
A server or client may run into an endless loop when feed with specific inp=
ut data.

Because the issue had already been partially fixed by THRIFT-4024 in versio=
n 0.11.0, depending on the installed version it affects only certain langua=
ge bindings.

Mitigation:
Upgrade to version 0.13.0

Credit:
This issue was discovered by Hasnain Lakhani of Facebook.

On behalf of the Apache Thrift PMC,
Jens Geyer

--_000_VI1PR0101MB2142E0EA19F582429C3AEBCBB1920VI1PR0101MB2142_--
