Received: (qmail 9575 invoked by uid 550); 30 Mar 2024 19:37:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30670 invoked from network); 30 Mar 2024 19:35:40 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NzqXqn4ijA4VhNySrhlVLy0gQVmNxI3o+gtRPrTCgN2WH7eNf33TWVPFEgj6bepqVtt6n3o8YjQZnBUJTDJNEy0k1hVrYDMzDhrJy7a1x2fK7f5beZ/CiS1jSCMpVqeShWZykYqklVux2V7L45WuvxhpZBoALZcBNlwdwow8zqkkYG2umKbZa/wdQqk8G/BI1PwfrvDKnEunKJmNDvVwJ7/liMRGebqCC/IHwfzJVTDrV2ST7POOnfNQEFUAGoetxkXKhipV3B6HHqSenrOGsN9kwCNTdrK1F/LnNbQFk6ywu+BBEYYDM2eJNr8JyEyA8CJBbdSfq3EW0A7tRi2BGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/0YvCns91yR8RCIlT0IhHm3nGF3dA7mKP0Z92muJTcI=;
 b=cCZ87+DWp6lAj8YdHFWXrFp45GySgeqFy0LrOxpUhQGmDIvo54svkiYP0JxxKjJc5Z8sVzLg5b/Tjs9inv8UaLawbz2IonDS/8FzcpFr/owFVF0X3MBGGnS6rzsS0/7cmYXv14ogKlzhdgnZyhdoem/w6qhuBoqtLBIMz/+J8clGiO10JEJtaneIesmg0S9tP2dYB23vFcLkIypiUbG8tTQEAZxfj9+ybupz//9CcxTiG6d9IOyhXnhhs2/kz1pZdyNjnaqvrO/utCFsdJFMZGf43muhnqE6QUFgr8KGrJM6E7fZUCU9rWUQp2J74T+hOzrwDbL5cfHAqgrar0Fv9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=thomas-ward.net; dmarc=pass action=none
 header.from=thomas-ward.net; dkim=pass header.d=thomas-ward.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thomas-ward.net;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/0YvCns91yR8RCIlT0IhHm3nGF3dA7mKP0Z92muJTcI=;
 b=LL03bN6SnKPmuboFy80MlCy5Kd24jULuDahSMGdBB+tikcRgmGpd2mz3jriSVb1xkss4ru63qyzRcEwQ1rzTiXv+vGFK6OmXHx3NQMtm6cZ3D9D04vLpff9pgo4i2STAkRcan040RAvBG+jytL3FHcLbt6zoXNa31fPEhZNyJnh2BmCucMMFXoonBQPKSgOSa9pJhNQi67gyf6AEtBJxtbhnj4oBQNJAgyjcMJojYBgO6V05n+NmVd3qUrEgc7BTArT94MHn5hd4urNkEPqpezEEw835psQXyB68Ams1qH7gkWT05OuOXMRzckVkBp0/it6kUJoSR+dk+/mTi+tzhw==
From: Thomas Ward <teward@thomas-ward.net>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
CC: Andres Freund <andres@anarazel.de>
Thread-Topic: [oss-security] backdoor in upstream xz/liblzma leading to ssh
 server compromise
Thread-Index: AQHagfOKs9IIr6pie0u5dQp6Qn7ZIrFQqkQAgAAEq1k=
Date: Sat, 30 Mar 2024 19:35:28 +0000
Message-ID:
 <MN0PR19MB594880C384348BC52E3167E39B392@MN0PR19MB5948.namprd19.prod.outlook.com>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <bde860b3f8509d1549c628ca40f20724a5a1556d.camel@scientia.org>
In-Reply-To: <bde860b3f8509d1549c628ca40f20724a5a1556d.camel@scientia.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN0PR19MB5948:EE_|SN4PR19MB5405:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 7jhmrcB3ayfvDcJ030jNL/zY6BKPgRZw8hd+08+d4mtswPaNsVr9shBA5o1rRe5fhO5vJKgHVG5mSuVP2QTxq2G9SOsLPVPjdtD7WcZIEU+0RfL1lovHpq2TZZvcPp0Yky2z/qKyxnwm6H1JNeioOS6D5LfJhQLSMSH4onLarFPWreUfDNJ/clnKC6sJOvnuiogkOCcO8bOEvZhGs0pBZkncZx1h7zgyjLdT178iJve2YGf6FAWs83awLRw3BRJjvhxSW5kD1tPho56MB2E7jT7jJPZErfvMGg/VumSaoLlJml8UFQ3EU0lxH3Kpg+QL2VSUQMv0KKnL0ZPwE7CzabjvUDKRDUeTGTAwXqaxBmm3p8mZmaAdYj0PnAGsJtopmSslDiO9shrnwTYJkMhVYEdikEvdUZe4rrViNjJcGjey49v9LwitHI4NSkjs0CAQXGZYVwHJsAVXGjhG2Rks/79RafHkLS4BWR91upKVA4/z77oH3ujPDN2cIjLzY8MDsyP8AyGAtmtTdk5I8TzNEsS0WdWLt9o0v9RlHwLDA7YRYWgtP+vcIvSftF2Nn+v4RCmIS8Ea86GU9TnACrSIrsDcySlLkoaEPdGsR+VjUVk=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN0PR19MB5948.namprd19.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(366007)(376005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?WowCKgKAviCmuyEJutzdtahFib1an8YE/6uQ3amoPLI7cQoTfvy4Zyj7jIgs?=
 =?us-ascii?Q?4R/lFvY04z4fAFlOE0jxMBGOUBoQwkeWIECdQ+QIhBWwItOUdsPxiQDqjp03?=
 =?us-ascii?Q?XSzX1V9eTuYMMCBBrBDsK63MB9HWfBEBKB0upufFrTL3XH2OP0GSlKaKMYAE?=
 =?us-ascii?Q?mjldUyfWKjao2u/BXviQng5/Ev4D3KIZXTNn6rlTIWF5xJVaZXkkHxFV1Yeo?=
 =?us-ascii?Q?lZHV55wGPt+cc+7auAEt+/UptTT9MDY1AbZwf5HzWlk8J9Tk3iCV8mGluIuQ?=
 =?us-ascii?Q?bLzuKDuEtbvdYhLvErGg1lHPfBYqaj0OnLfBXoS7BhY3KM9qIFGcy3QiZHej?=
 =?us-ascii?Q?/T6LMcGDeClUfvdHS4TN8knoey5xmzTiUG7tCgmAX8k/Qw/EQRZJg3Kffeiz?=
 =?us-ascii?Q?G089qKz8mhVBYrt01vppHTCkfBHPtp9mCIlrRkEKxeIeP9SiYEt0Rti0wSfQ?=
 =?us-ascii?Q?A5p5cAGf0+eLwy/JIWoIhItEi4BQlC29eHiODwojX/BJVo5cRGV2hMQa7GiL?=
 =?us-ascii?Q?eWvGl8YvwlEZJhFqNmExJVu9Zt0sDtby2fe/QkhYZP7NvOkJkaUJ0qaEXBgZ?=
 =?us-ascii?Q?/3YHW5vm574yZfkGydf9SQ45ULebZvfiBT3n0h1ekq/oN4NFEkkBwxKZAHGS?=
 =?us-ascii?Q?7ycaOSEOlWdk/FRsWL7hKiRTGnNrab+/yWkbPwNM3zh36h0+hZykHmsdNJe6?=
 =?us-ascii?Q?Bgq2HugejFS7Hj6s0uyILG5ec1tr4Cm/tXJJgJtnbBCiqHgK/2jdjczs4U4g?=
 =?us-ascii?Q?29HVm5VUGDOiQummP0yiTwy8bMM2wS1sxTuK29znXaS1fKmqPT15yxw0/1L+?=
 =?us-ascii?Q?FSSFeZwkemjtRLIf/wrHelq5BpfDWRJKnwrOYv7vU/j6VadWs2RgepGN+OYC?=
 =?us-ascii?Q?GcqPUin7lCZnFnhm1NDqj4rexAxfYfYBTFJ7zJgIQHv09I8plE+dybABLSUt?=
 =?us-ascii?Q?BARxSJnZtuskawHNW9/hI3E5LiYi6J5lmX6NuEFPGNMUmkJONq2vrlSP6uBu?=
 =?us-ascii?Q?vq3ht9w8NORTxKVLufhJgGLXNesr1RYAZY/ReD9ocPXBtQ4PW1iC88F3zIee?=
 =?us-ascii?Q?rqfl86Ft+H0TAJsBhgFf2U3HIc8IAwcvwxsPwHNb32ybRZZvYlqCQ0SSzilf?=
 =?us-ascii?Q?LDO9axgKSWMbiP5Qj8GOrhCZo+QXkYP5jAxJIaHdL7C7MoOxzGe+5LpkR397?=
 =?us-ascii?Q?49n+usitCbZPD6ZegqKHEFOjJ58VGfh+dSpt3TcG26Q1/eh6kIPad3t3pXVO?=
 =?us-ascii?Q?GagXVWIrhPGSYI4W8M+uv4vEcQDEW/N+b/xT11F2yqQUbCoTw4cDfkG7bsgL?=
 =?us-ascii?Q?YRihfkxw2nfYJOQq7VTapnCUHO2+nEHmsD2i9flMxPT6hqU/xGF8RTqbM1oP?=
 =?us-ascii?Q?Y1MO2sL4m1KuvS8mc0HfgLhelj42Ip9wAnBdszqN0WsWbbduEJhMuf59j70P?=
 =?us-ascii?Q?N78eKNApUdRnZW6iowQ3SUKYZ6dE1FWGQdJdh9CI+wCqn07DhM6vpiEsFKHo?=
 =?us-ascii?Q?TruSAqkb5FCGXZK6a6hSOe6uuj7z1nT81lbVsxFmugqR6PiJTR8rBKRZ2BX6?=
 =?us-ascii?Q?XqKG2Zq+kndnr3LJ+vMTzHAdgAKLZy6noL7U8K+mz2mnkmv4KTc+zjaoNcXI?=
 =?us-ascii?Q?QOlzOmT4W7JhvM1qOxlYcoKlnhD+2tQ8nmxN0VVOAtJ7?=
Content-Type: multipart/alternative;
	boundary="_000_MN0PR19MB594880C384348BC52E3167E39B392MN0PR19MB5948namp_"
MIME-Version: 1.0
X-OriginatorOrg: thomas-ward.net
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN0PR19MB5948.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60d5bf8b-8130-4f1f-b5ea-08dc50f08de6
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Mar 2024 19:35:28.2742
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f231ddd-e974-424c-8139-40bb3167ef6b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lyFogV3aXNXuH0gic7vZQuebjIo4e1yQdB+w8RPDIVo8vbJ+sho7w9XbpuRADlv1BeD/LX84UGAinc2MsDfaWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4PR19MB5405
Subject: RE: [oss-security] backdoor in upstream xz/liblzma leading to ssh
 server compromise

--_000_MN0PR19MB594880C384348BC52E3167E39B392MN0PR19MB5948namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

As a security guy, I have to ask, do we know all the currently known varian=
ts?  It's my understanding it's 5.6.0 and 5.6.1 affected by this, are there=
 alternative infect vectors?  (I ask because I'm spinning this up in my res=
earch lab and want to get a better idea of the number of known variants imp=
acted.)



Sent from my Galaxy



-------- Original message --------
From: Christoph Anton Mitterer <calestyo@scientia.org>
Date: 3/30/24 15:23 (GMT-05:00)
To: oss-security@lists.openwall.com
Cc: Andres Freund <andres@anarazel.de>
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh =
server compromise

Hey there.

First, thanks for finding and analysing this.


As far as I understand, many servers (that don't run
unstable/testing/etc. distributions) are likely safe (simply, because
they haven't seen the compromised versions yet).

But I wouldn't be too surprised if especially many developers run e.g.
on Debian unstable/testing or Fedora rawhide... and perhaps even many
end-users.
Thus, the systems from which the above save servers are
accessed/controlled might still get compromised or even worse: build
systems, repos, etc..


So next question would be:
In those systems (like Debian unstable) where the compromised code was
present, could it (in any of its versions) have actually caused
damage/further compromise?
Especially, is one e.g. safe when sshd was not running - or at least
not reachable from a public network?


=46rom what I understood from the currently published analysis, here in
the thread respectively from
https://gist.github.com/thesamesam/223949d5a074ebc3dce9ee78baad9e27 it
is thought that:

- It *may* only get activated when the argv[0] is /usr/sbin/sshd

and would then:

- probably "only(?) fiddle around with the authentication (presumably)
  to grant access to the attacker.



I know that analysis is still ongoing, but IMO the following questions
would be relevant for people to decide whether their system is further
compromised or whether things are "good" again (with no chance of any
further comprise having been able to take place), by downgrading:

1) Was the malware respectively its payload code able to download
   further evil code (like other rootkits or so)?

2) On affected systems, if:
   - sshd was NOT used (but e.g. ssh (client), was)
   and/or
   - if it was used, it wasn't accessible from the internet (e.g.
     because a firewall/NAT/etc. was in between)

   ... can one say with sufficient confidence, that no further
   compromise respectively evil code execution could have happened?

   In the sense of, the evil code was then present/loaded, but it's
   assured that effectively it didn't do anything bad then.

   If so, I guess that would help at least some people to assess
   whether their laptops/workstations are safe (when they didn't use
   sshd or that wasn't accessible from the outside).

3) Is it known already whether any other attack vectors (not using
   sshd) where part of the code - or can that be ruled out?


And all these questions, of course, for every version of the maleware
that circulated.


Also, is there some central place (here?) where such answers would be
given, once people have examined the malware payload in depth?


Thanks,
Chris.

--_000_MN0PR19MB594880C384348BC52E3167E39B392MN0PR19MB5948namp_--
