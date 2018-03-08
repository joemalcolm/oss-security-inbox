X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4022" "Thursday" "8" "March" "2018" "14:34:32" "+0000" "Seaman, Chad" "cseaman@akamai.com" "<EB45373C-707C-442D-8A90-7036229F1789@akamai.com>" "66" "Re: [oss-security] memcached UDP amplification attacks" "^Date:" nil nil "3" "2018030814:34:32" "[oss-security] memcached UDP amplification attacks" (number mark "        cseaman@akam Mar  8   66/4022  " thread-indent "\"Re: [oss-security] memcached UDP amplification attacks\"\n") "<fe452830-1090-7f3d-f740-df1ed6f2d9ee@cert.sunet.se>" ("<20180302124428.440b9c3b@pc1>" "<CANO=Ty09HPfSbp8QsZHU24EnEyzOw1H1C-Zr+7mqwDhOG6=HYg@mail.gmail.com>" "<CANO=Ty0X6iVTG=BUhdUgxYSLN9XnA-NcvH96DgTALQRvsNnn4Q@mail.gmail.com>" "<20180307110950.4eb041a8@redhat.com>" "<D8D24F8C-3644-4DB1-960A-C418453F7F2C@akamai.com>" "<fe452830-1090-7f3d-f740-df1ed6f2d9ee@cert.sunet.se>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23911 invoked by uid 550); 8 Mar 2018 14:34:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23884 invoked from network); 8 Mar 2018 14:34:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akamai.com; h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=jan2016.eng;
 bh=aFTknNbW4PXHfMPbtIQk82yDB+m6b0uCpIAdXP8KbV8=;
 b=VSQmsXXEB3jkqKd2YaP2EfKuZxIEToqlSUEODs42vP30Wytna8C/h7dEkFRBs2qd1F4u
 HwKorOu79rdUC/r6nn+z588EsgiV+zuHWoYIDuhc64IhPRAoG2E6nnDTQo5LRRW5JAZt
 FIax3MBqKmZVt8hcvmEkRwC+oAo7WHvIOGBGf4vuZjLY4ESeSCHUx1HzjyGX3IxnExrQ
 4FUT2Fk9VrSf9MuZeMtlNHKTkua0rLqu7p6paSMSANXLF4KRuy/zevO72MnAfhvSE50t
 GdgIEoFvRPHm77vQ8i04a1CLkr4aGYbJVOlKNzC9gnMWm/Ur7GV50Ku+6NrYCdjbeRU6 MQ== 
Thread-Topic: [oss-security] memcached UDP amplification attacks
Thread-Index: AQHTshvjyBI268JaFUSb7Q8pglB5raO9K0EAgAEYbACABqTIAIAAxbgAgAAKF4CAAQx5gA==
Message-ID: <EB45373C-707C-442D-8A90-7036229F1789@akamai.com>
References: <20180302124428.440b9c3b@pc1>
 <CANO=Ty09HPfSbp8QsZHU24EnEyzOw1H1C-Zr+7mqwDhOG6=HYg@mail.gmail.com>
 <CANO=Ty0X6iVTG=BUhdUgxYSLN9XnA-NcvH96DgTALQRvsNnn4Q@mail.gmail.com>
 <20180307110950.4eb041a8@redhat.com>
 <D8D24F8C-3644-4DB1-960A-C418453F7F2C@akamai.com>
 <fe452830-1090-7f3d-f740-df1ed6f2d9ee@cert.sunet.se>
In-Reply-To: <fe452830-1090-7f3d-f740-df1ed6f2d9ee@cert.sunet.se>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/f.27.0.171010
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.19.248.130]
Content-Type: text/plain; charset="utf-8"
Content-ID: <FE53D009EFD65548AB0FB83C2AFA14D3@akamai.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,, definitions=2018-03-08_08:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1711220000 definitions=main-1803080170
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,, definitions=2018-03-08_08:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1711220000
 definitions=main-1803080170
Date: Thu, 8 Mar 2018 14:34:32 +0000
From: "Seaman, Chad" <cseaman@akamai.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] memcached UDP amplification attacks
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

Q29ycmVjdCwgaW4gb3VyIHRlc3RpbmcgeW91IGNvdWxkIGxvYWQgdXAgYSAx
TUIgY2FjaGUgdmFsdWUsIHdlIGFzc3VtZSBhIHNpbmdsZSBjaGFyYWN0ZXIg
a2V5Lg0KDQooNSBieXRlcykgZ2V0IGEgPSAxTUINCg0KKDcgYnl0ZXMpIGdl
dCBhIGEgPSAyTUINCg0KKDIwNCBieXRlcykgZ2V0IGEgYSDigKYgYXsxMDB4
fSA9IDEwME1CDQoNCldoZW4gZG9pbmcgdGhlIGluaXRpYWwgd3JpdGUtdXAg
SSBmb3Jnb3QgdG8gaW5jbHVkZSB0aGUgbWFnaWMgYnl0ZXMsIHNvIHRoZSBh
Y3R1YWwgcGF5bG9hZCBpcyBhIGZldyBieXRlcyBsYXJnZXIgdGhhbiAyMDQg
Ynl0ZXMgYnV0IHRoZSBxdWVyeSBpdHNlbGYgaXMgMjA0IGJ5dGVzLCB0aGlz
IGlzIGEgbWlzdGFrZSBvbiBteSBwYXJ0IHdoaWxlIHByZXBhcmluZyB0aGUg
d3JpdGUtdXAuICANCg0KV2UgYWxzbyBkaWQgc29tZSB0ZXN0aW5nIGFnYWlu
c3QgYSBtZW1jYWNoZWQgaW5zdGFsbCB0byBzZWUgaG93IGZhciB3ZSBjb3Vs
ZCBjaGFpbi9yZXBlYXQga2V5cyBpbiBhIHNpbmdsZSByZXF1ZXN0IGFuZCB0
aGUgY3V0LW9mZiB3YXMgcmlnaHQgYXJvdW5kIDEwME1CIHJlc3BvbnNlIHVz
aW5nIGEgMU1CIGxvYWRlZCB2YWx1ZSB3aXRoIHNpbmdsZSBjaGFyYWN0ZXIg
a2V5Lg0KDQpSZWdhcmRzLA0KQ2hhZA0KDQpPbiAzLzgvMTgsIDM6NDEgQU0s
ICJQYXRyaWNrIEZvcnNiZXJnIiA8Zm9yc0BjZXJ0LnN1bmV0LnNlPiB3cm90
ZToNCg0KICAgIE9uIDIwMTgtMDMtMDcgMjI6NTcsIFNlYW1hbiwgQ2hhZCB3
cm90ZToNCiAgICANCiAgICA+IFRvbWFzLA0KICAgID4NCiAgICA+IFlvdeKA
mXJlIG5vdCB3cm9uZywgdGhhdCB3YXMgYSB0eXBvIGluIHRoZSBibG9nLg0K
ICAgID4NCiAgICA+IFJlZ2FyZHMsDQogICAgPiBDaGFkDQogICAgT24gdGhl
IG90aGVyIGhhbmQgSSB0aGluayB0aGUgYmxvZyBpcyB3cm9uZy4gKEp1c3Qg
cmVhZGluZyB0aGUgcHJvdG9jb2wNCiAgICBzcGVjcykNCiAgICANCiAgICBU
aGUgZGVmYXVsdCBtYXhpbXVtIHNpemUgb2YgYW4gaXRlbSBpcyAxTSwgYnV0
IHlvdSBjYW4gZWFzaWx5IHJlcXVlc3QNCiAgICBtb3JlIHRoYW4gb25lIGl0
ZW0gdXNpbmcgdGhlIGdldHMgY29tbWFuZC4NCiAgICAgICBnZXRzIDxrZXk+
KlxyXG4NCiAgICB3aGVyZSA8a2V5PiogaXMgb25lIG9yIHNldmVyYWwga2V5
cyBzZXBhcmF0ZWQgYnkgd2hpdGVzcGFjZS4NCiAgICBBIGtleSBpcyBhIHRl
eHQgc3RyaW5nIHRoYXQgbXVzdCBub3QgaW5jbHVkZSBjb250cm9sIGNoYXJh
Y3RlcnMgb3INCiAgICB3aGl0ZXNwYWNlLiBUaGUgbWF4aW11bSBsZW5ndGgg
b2YgYSBrZXkgaXMgMjUwIGNoYXJhY3RlcnMgYnV0IEkgZG9uJ3QNCiAgICB0
aGluayB0aGVyZSdzIGEgbWluaW11bSBzaXplIHNvIG9uZSBieXRlIGtleXMg
c2hvdWxkIGJlIGZpbmUuDQogICAgDQogICAgL1BhdHJpY2sNCiAgICA+DQog
ICAgPiBPbiAzLzcvMTgsIDU6MTAgQU0sICJUb21hcyBIb2dlciIgPHRob2dl
ckByZWRoYXQuY29tPiB3cm90ZToNCiAgICA+DQogICAgPiAgICAgT24gRnJp
LCAyIE1hciAyMDE4IDIxOjQyOjMwIC0wNzAwIEt1cnQgU2VpZnJpZWQgd3Jv
dGU6DQogICAgPiAgICAgDQogICAgPiAgICAgPiBJIGhhdmUgYXNzaWduZWQg
Q1ZFLTIwMTgtMTAwMDExNSB0byB0aGlzIGlzc3VlOg0KICAgID4gICAgID4g
DQogICAgPiAgICAgPiBNZW1jYWNoZWQgdmVyc2lvbiAxLjUuNSBjb250YWlu
cyBhbiBJbnN1ZmZpY2llbnQgQ29udHJvbCBvZiBOZXR3b3JrDQogICAgPiAg
ICAgPiBNZXNzYWdlIFZvbHVtZSAoTmV0d29yayBBbXBsaWZpY2F0aW9uLCBD
V0UtNDA2KSB2dWxuZXJhYmlsaXR5IGluIHRoZQ0KICAgID4gICAgID4gVURQ
IHN1cHBvcnQgb2YgdGhlIG1lbWNhY2hlZCBzZXJ2ZXIgdGhhdCBjYW4gcmVz
dWx0IGluIGRlbmlhbCBvZg0KICAgID4gICAgID4gc2VydmljZSB2aWEgbmV0
d29yayBmbG9vZCAodHJhZmZpYyBhbXBsaWZpY2F0aW9uIG9mIDE6NTAsMDAw
IGhhcyBiZWVuDQogICAgPiAgICAgPiByZXBvcnRlZCBieSByZWxpYWJsZSBz
b3VyY2VzKS4gVGhpcyBhdHRhY2sgYXBwZWFyIHRvIGJlIGV4cGxvaXRhYmxl
DQogICAgPiAgICAgPiB2aWEgbmV0d29yayBjb25uZWN0aXZpdHkgdG8gcG9y
dCAxMTIxMSBVRFAuIFRoaXMgdnVsbmVyYWJpbGl0eQ0KICAgID4gICAgID4g
YXBwZWFycyB0byBoYXZlIGJlZW4gZml4ZWQgaW4gMS41LjYgZHVlIHRvIHRo
ZSBkaXNhYmxpbmcgb2YgdGhlIFVEUA0KICAgID4gICAgID4gcHJvdG9jb2wg
YnkgZGVmYXVsdC4NCiAgICA+ICAgICANCiAgICA+ICAgICBNaW5vciBuaXRw
aWNrLCB0aGUgZGVzY3JpcHRpb24gbWVudGlvbnMgMTo1MCwwMDAgcmF0aW8s
IGFwcGFyZW50bHkNCiAgICA+ICAgICBiYXNlZCBvbiB0aGUgaW5mb3JtYXRp
b24gaW4gdGhlIGZvbGxvd2luZyByZWZlcmVuY2U6DQogICAgPiAgICAgDQog
ICAgPiAgICAgPiBodHRwczovL2Jsb2dzLmFrYW1haS5jb20vMjAxOC8wMy9t
ZW1jYWNoZWQtZnVlbGVkLTEzLXRicHMtYXR0YWNrcy5odG1sDQogICAgPiAg
ICAgDQogICAgPiAgICAgd2hlcmUgaXQncyBtZW50aW9uZWQgYXM6DQogICAg
PiAgICAgDQogICAgPiAgICAgIiIiDQogICAgPiAgICAgV29yc2UsIG1lbWNh
Y2hlZCBjYW4gaGF2ZSBhbiBhbXBsaWZpY2F0aW9uIGZhY3RvciBvZiBvdmVy
IDUwLDAwMCwNCiAgICA+ICAgICBtZWFuaW5nIGEgMjAzIGJ5dGUgcmVxdWVz
dCByZXN1bHRzIGluIGEgMTAwIG1lZ2FieXRlIHJlc3BvbnNlLg0KICAgID4g
ICAgICIiIg0KICAgID4gICAgIA0KICAgID4gICAgIEhvd2V2ZXIsIDIwMCAq
IDUwayA9IDEwbSwgbm90IDEwMG0uICBXb25kZXIgaWYgSSdtIGRvaW5nIG15
IG1hdGggd3JvbmcuDQogICAgPiAgICAgDQogICAgPiAgICAgLS0gDQogICAg
PiAgICAgVG9tYXMgSG9nZXIgLyBSZWQgSGF0IFByb2R1Y3QgU2VjdXJpdHkN
CiAgICA+ICAgICANCiAgICA+DQogICAgDQogICAgDQogICAgDQoNCg==
