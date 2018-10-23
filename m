X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1159" "Tuesday" "23" "October" "2018" "00:22:28" "+0000" "Ramon de C Valle" "rcvalle@live.com" "<MWHPR0101MB29449166243291E394B17844C0F50@MWHPR0101MB2944.prod.exchangelabs.com>" "21" "Re: [oss-security] GCC Compiler Induced Vulnerability - affects programs compiled with GCC 7 and 8 containing nested functions" "^Date:" nil nil "10" "2018102300:22:28" "[oss-security] GCC Compiler Induced Vulnerability - affects programs compiled with GCC 7 and 8 containing nested functions" (number mark "        rcvalle@live Oct 23   21/1159  " thread-indent "\"Re: [oss-security] GCC Compiler Induced Vulnerability - affects programs compiled with GCC 7 and 8 containing nested functions\"\n") "<87zhv5znqn.fsf@oldenburg.str.redhat.com>" ("<DM5PR13MB14208A0909CAD197E6D1BADEAEF40@DM5PR13MB1420.namprd13.prod.outlook.com>" "<87zhv5znqn.fsf@oldenburg.str.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26129 invoked by uid 550); 23 Oct 2018 10:22:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15674 invoked from network); 23 Oct 2018 00:22:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1j/ftPJR0pRAivFW9hbEHdLrnMIxbg3PzCKDwimwWC0=;
 b=ke7XY7XhIswfy3rRWPMBKbIBxOCxOJOI5sxI+8p+u/dgkA3k+lbZkY8lwGT+PVZskn/SVqYM6edkfRx186gGagUig8SdF10C3wblP6uXjcKR+0/CkFLtEunmkAbOeJ6FT4dSwv5y5uLEb7cBEnLIyfY3gjQ+kUpGt3ugFmceVYPmK5zYAQAdXc8EenHntzlD3OWpZAK9tAymPyQ8jmNl2rRtL2h0XAylqgisR8lCJjynh5CwaiT9KeibiNoUVLbqAnX0gx588htV4hoIlAjG7qwZ8n6P72Sj25r0kkm23jEMvOu0afjiZptOVIOk6xsPa98UimMuyrX6cSac3Q3etw==
Thread-Topic: [oss-security] GCC Compiler Induced Vulnerability - affects
 programs compiled with GCC 7 and 8 containing nested functions
Thread-Index: AdRqGO8YBX809AYgSj+ApG48CJfxTAAM5FFyAAYWdzo=
Message-ID: <MWHPR0101MB29449166243291E394B17844C0F50@MWHPR0101MB2944.prod.exchangelabs.com>
References: <DM5PR13MB14208A0909CAD197E6D1BADEAEF40@DM5PR13MB1420.namprd13.prod.outlook.com>,<87zhv5znqn.fsf@oldenburg.str.redhat.com>
In-Reply-To: <87zhv5znqn.fsf@oldenburg.str.redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:D551BCEF32DC4C33F35831DBB3B39455DEE23E358BC7A20E844AD05D9BAE9736;UpperCasedChecksum:C1A1C99A2160212738EE35FAC4FF21C53AC2A3FE975F5DFB067AF302CF7292A8;SizeAsReceived:7297;Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [5QYLFjkCgGvtq1YftuUEbCj5sXOrCSDp]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1;DM3NAM03HT198;6:nKslAOYACVEdmntlqYZqRBsPc9I6ovZqxJQy6C81oFnJwAt6zLdSmgv5DsAE1ZFKFfNr1Qe703HtqMi3Wm2DNFNqe+ZPp8cHJ3LSv+OH7+gGa3CWfImvuY5ZZ+75FrSBedDe3KOnYr+HSAtzCQ7B6/eu3eT/P+qBhY8pO9/5I/XajpR2TnCbG/FGpd46yTFhMV4cQpiFZF4HRYKYzKy+lWMlkBDPmeJpwILLAGI9g3qkct35rGThVNkS3DeVon9eOyAqKJulVaLwfplx8UFi/IPODxjIOzR88ApngwpV3OIDw2wzi5KdmnkB2P364wwEXfSV44zJbAxcPgf3hanm/Gdg2kE6K42owh4rTMspPHq89351tfrZOPC9T9wtL0fVdtb4dToLMa3TO5GUpaOaiOKCfgTKta7cufYZAKmIFWsj4gujhAq6QsRruvvQv1RLX9mQ4aYCrHl6VaVnssKyNg==;5:QSqwLLsvjW9jr7SXo6ozmC5mWyK4dJlfkC/nT3HmhVdh+RJdPC5kLfELue4E1G5cbxtF0rlHZ9lf2pTVbGGsNKZbOvI4zSTJCflRc6EEkhYqi4S+4dSGfx+LJJA+C14Hq7EhVU41GkinweSoWLijI6zL/AHOPB1EKz3PfJNgmpg=;7:kFZljhwHSuwWXie2Ltf280Ed2A/VTJzpzMdV8PM6YLCQki0CO9dlPL5eWHE4+Qa13SDN0yKaujktJckTVkC3RZ9hKpckQo1bV631cAu5PZ3++tSEu2he5JG+VzcgwWmEvS66z/wpwhuM0PkT3ki1pQ==
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1601125500)(1603101475)(1701031045);SRVR:DM3NAM03HT198;
x-ms-traffictypediagnostic: DM3NAM03HT198:
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(4566010)(82015058);SRVR:DM3NAM03HT198;BCL:0;PCL:0;RULEID:;SRVR:DM3NAM03HT198;
x-microsoft-antispam-message-info: in5N+BEzOABXlxTLKlnPERrtJWOIRRFyrYtxrC4EE0qVcBRpqCNZ6hKJ2Q7KNbLX
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-Network-Message-Id: 02afc17f-be9f-400c-d6d8-08d6387d9d61
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2018 00:22:28.1055
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3NAM03HT198
Date: Tue, 23 Oct 2018 00:22:28 +0000
From: Ramon de C Valle <rcvalle@live.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] GCC Compiler Induced Vulnerability - affects
 programs compiled with GCC 7 and 8 containing nested functions
To: Andrew Sandoval <ASandoval@webroot.com>, "oss-security@lists.openwall.com"
	<oss-security@lists.openwall.com>

> This is already public because oss-security is a public mailing list.
>=20
> Most GNU/Linux distributions ensure that only very special binaries
> (such as some versions of the Ada compiler) enable executable stacks.
> In our experience, if the toolchain produces a binary that requests an
> executable stack, it is more likely due to manually written assembler
> files without the required stack executability markup section, and not
> due to nested C functions whose address escapes.  Without scanning built
> binaries for these discrepancies, such cases could easily be missed.
>=20
> Please also note that an executable stack is not a vulnerability itself,
> and it is not directly exploitable.  (The same applies to the lack of
> Intel CET support in binaries.)

While I agree with that I still think that this extension (or its name) is =
misleading, see https://lkml.org/lkml/2012/1/9/138. The PF_X flag set in th=
e PT_GNU_STACK segment header or the absence of the PT_GNU_STACK segment he=
ader can result in an application unnoticeably having not only the stack, b=
ut also all readable virtual memory mappings also executable.

Ramon de C Valle=
