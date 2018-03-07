X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1887" "Wednesday" "7" "March" "2018" "21:57:30" "+0000" "Seaman, Chad" "cseaman@akamai.com" "<D8D24F8C-3644-4DB1-960A-C418453F7F2C@akamai.com>" "31" "Re: [oss-security] memcached UDP amplification attacks" "^Date:" nil nil "3" "2018030721:57:30" "[oss-security] memcached UDP amplification attacks" (number mark "        cseaman@akam Mar  7   31/1887  " thread-indent "\"Re: [oss-security] memcached UDP amplification attacks\"\n") "<20180307110950.4eb041a8@redhat.com>" ("<20180302124428.440b9c3b@pc1>" "<CANO=Ty09HPfSbp8QsZHU24EnEyzOw1H1C-Zr+7mqwDhOG6=HYg@mail.gmail.com>" "<CANO=Ty0X6iVTG=BUhdUgxYSLN9XnA-NcvH96DgTALQRvsNnn4Q@mail.gmail.com>" "<20180307110950.4eb041a8@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32500 invoked by uid 550); 7 Mar 2018 21:57:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32478 invoked from network); 7 Mar 2018 21:57:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akamai.com; h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=jan2016.eng;
 bh=zeo+kD9s4y7ae0mJWSK1ca8KGZ8FCyefXqOkJykyv8o=;
 b=e0AVn4Mcte99wkccu8Wz1if8/YK7eZHKoJnuXaP5aPnhA5DS5JX4IBZD+FS2ma/qA1gR
 o7Wy2/Zd6qnT0qZXVblLDIzvvuNFOvb7gzRwWfAn8lbC9/gE3M3J8LT7Vg8kf5G5iUx3
 WfEJ+piCczKXE0Uw7ECFr5a0V1Ut4DrO+oFvkEP227Ba322l/WwIW5vRo1SuVuOUvCIo
 jJVEWBXQ9A2V62qBcoja8ZZQoIeCgUFrgslgrVCi3+rZksBN33kTKxMwvC9I3bMgsxTM
 gtY0L4R6oytUjx6cvsK24Ddb4YDD1/2Wvp2588iQmCzYwHPT80KZlvZG1vmEIxSDTHd9 iQ== 
Thread-Topic: [oss-security] memcached UDP amplification attacks
Thread-Index: AQHTshvjyBI268JaFUSb7Q8pglB5raO9K0EAgAEYbACABqTIAIAAxbgA
Message-ID: <D8D24F8C-3644-4DB1-960A-C418453F7F2C@akamai.com>
References: <20180302124428.440b9c3b@pc1>
 <CANO=Ty09HPfSbp8QsZHU24EnEyzOw1H1C-Zr+7mqwDhOG6=HYg@mail.gmail.com>
 <CANO=Ty0X6iVTG=BUhdUgxYSLN9XnA-NcvH96DgTALQRvsNnn4Q@mail.gmail.com>
 <20180307110950.4eb041a8@redhat.com>
In-Reply-To: <20180307110950.4eb041a8@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/f.27.0.171010
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.19.248.154]
Content-Type: text/plain; charset="utf-8"
Content-ID: <F58F61EB95E1BB45AFE29E3712899718@akamai.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,, definitions=2018-03-07_10:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1711220000 definitions=main-1803070248
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,, definitions=2018-03-07_10:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1711220000
 definitions=main-1803070249
Date: Wed, 7 Mar 2018 21:57:30 +0000
From: "Seaman, Chad" <cseaman@akamai.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] memcached UDP amplification attacks
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
        "Kurt
 Seifried" <kseifried@redhat.com>

VG9tYXMsDQoNCllvdeKAmXJlIG5vdCB3cm9uZywgdGhhdCB3YXMgYSB0eXBv
IGluIHRoZSBibG9nLg0KDQpSZWdhcmRzLA0KQ2hhZA0KDQpPbiAzLzcvMTgs
IDU6MTAgQU0sICJUb21hcyBIb2dlciIgPHRob2dlckByZWRoYXQuY29tPiB3
cm90ZToNCg0KICAgIE9uIEZyaSwgMiBNYXIgMjAxOCAyMTo0MjozMCAtMDcw
MCBLdXJ0IFNlaWZyaWVkIHdyb3RlOg0KICAgIA0KICAgID4gSSBoYXZlIGFz
c2lnbmVkIENWRS0yMDE4LTEwMDAxMTUgdG8gdGhpcyBpc3N1ZToNCiAgICA+
IA0KICAgID4gTWVtY2FjaGVkIHZlcnNpb24gMS41LjUgY29udGFpbnMgYW4g
SW5zdWZmaWNpZW50IENvbnRyb2wgb2YgTmV0d29yaw0KICAgID4gTWVzc2Fn
ZSBWb2x1bWUgKE5ldHdvcmsgQW1wbGlmaWNhdGlvbiwgQ1dFLTQwNikgdnVs
bmVyYWJpbGl0eSBpbiB0aGUNCiAgICA+IFVEUCBzdXBwb3J0IG9mIHRoZSBt
ZW1jYWNoZWQgc2VydmVyIHRoYXQgY2FuIHJlc3VsdCBpbiBkZW5pYWwgb2YN
CiAgICA+IHNlcnZpY2UgdmlhIG5ldHdvcmsgZmxvb2QgKHRyYWZmaWMgYW1w
bGlmaWNhdGlvbiBvZiAxOjUwLDAwMCBoYXMgYmVlbg0KICAgID4gcmVwb3J0
ZWQgYnkgcmVsaWFibGUgc291cmNlcykuIFRoaXMgYXR0YWNrIGFwcGVhciB0
byBiZSBleHBsb2l0YWJsZQ0KICAgID4gdmlhIG5ldHdvcmsgY29ubmVjdGl2
aXR5IHRvIHBvcnQgMTEyMTEgVURQLiBUaGlzIHZ1bG5lcmFiaWxpdHkNCiAg
ICA+IGFwcGVhcnMgdG8gaGF2ZSBiZWVuIGZpeGVkIGluIDEuNS42IGR1ZSB0
byB0aGUgZGlzYWJsaW5nIG9mIHRoZSBVRFANCiAgICA+IHByb3RvY29sIGJ5
IGRlZmF1bHQuDQogICAgDQogICAgTWlub3Igbml0cGljaywgdGhlIGRlc2Ny
aXB0aW9uIG1lbnRpb25zIDE6NTAsMDAwIHJhdGlvLCBhcHBhcmVudGx5DQog
ICAgYmFzZWQgb24gdGhlIGluZm9ybWF0aW9uIGluIHRoZSBmb2xsb3dpbmcg
cmVmZXJlbmNlOg0KICAgIA0KICAgID4gaHR0cHM6Ly9ibG9ncy5ha2FtYWku
Y29tLzIwMTgvMDMvbWVtY2FjaGVkLWZ1ZWxlZC0xMy10YnBzLWF0dGFja3Mu
aHRtbA0KICAgIA0KICAgIHdoZXJlIGl0J3MgbWVudGlvbmVkIGFzOg0KICAg
IA0KICAgICIiIg0KICAgIFdvcnNlLCBtZW1jYWNoZWQgY2FuIGhhdmUgYW4g
YW1wbGlmaWNhdGlvbiBmYWN0b3Igb2Ygb3ZlciA1MCwwMDAsDQogICAgbWVh
bmluZyBhIDIwMyBieXRlIHJlcXVlc3QgcmVzdWx0cyBpbiBhIDEwMCBtZWdh
Ynl0ZSByZXNwb25zZS4NCiAgICAiIiINCiAgICANCiAgICBIb3dldmVyLCAy
MDAgKiA1MGsgPSAxMG0sIG5vdCAxMDBtLiAgV29uZGVyIGlmIEknbSBkb2lu
ZyBteSBtYXRoIHdyb25nLg0KICAgIA0KICAgIC0tIA0KICAgIFRvbWFzIEhv
Z2VyIC8gUmVkIEhhdCBQcm9kdWN0IFNlY3VyaXR5DQogICAgDQoNCg==
