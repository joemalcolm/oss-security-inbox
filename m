Received: (qmail 28139 invoked by uid 550); 28 Apr 2022 14:12:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28121 invoked from network); 28 Apr 2022 14:12:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akamai.com; h=from : to : subject :
 date : message-id : content-type : mime-version; s=jan2016.eng;
 bh=LOo/fJGds7ft3KnOOHBN1eCMvJfxiJgXbXpORq/klmw=;
 b=cvzUQPRlMO/4+wVWKS/rKGojg0FehAIjGhkgHR623atNSJ4MS9Mmrfqy0is4wvl5JQgo
 rnzQN66YP3A7g8VsOMtVCS1bYz6Jy0xpdNlfLyYK/l8y6fbFQWOoA2JPrObpxfedDh7u
 a8c9XqaFeoCF5X3pBrjUXzm6zbbvGbypUq7vdLwHPHCmrKZgpZv1lCB31wvbXvI8lsiD
 eg+pZjEBDl/Fz/+Lwgqjb34vMYhj4WTxsIYgjh669gA28Y0HkEKTwv6MhRgE1/8DNtkh
 /Jsq1+O2QkwmLJ8oMA1QVRUUEpbY5ii+PcREXSekXWRIcJY8+GqSDmkWnx4C72TN2AD5 XA== 
From: "Seaman, Chad" <cseaman@akamai.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE-2022-21449 and version reporting
Thread-Index: AQHYWwnvRn9SqN6pE0iqZ4aPzwUojw==
Date: Thu, 28 Apr 2022 14:12:04 +0000
Message-ID: <484488E0-D662-4F58-80DB-499DE532FA3B@akamai.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/16.60.22041000
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.27.164.43]
Content-Type: multipart/alternative;
	boundary="_000_484488E0D6624F5880DB499DE532FA3Bakamaicom_"
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.486,18.0.858
 definitions=2022-04-28_01:2022-04-28,2022-04-28 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 malwarescore=0
 mlxlogscore=987 bulkscore=0 spamscore=0 suspectscore=0 mlxscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2204280086
X-Proofpoint-ORIG-GUID: OTtUG5x_ayoPfKdVyItMdvfg3aTtf2mH
X-Proofpoint-GUID: OTtUG5x_ayoPfKdVyItMdvfg3aTtf2mH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.858,Hydra:6.0.486,FMLib:17.11.64.514
 definitions=2022-04-28_01,2022-04-28_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1034 adultscore=0
 suspectscore=0 bulkscore=0 mlxscore=0 lowpriorityscore=0 mlxlogscore=931
 priorityscore=1501 malwarescore=0 spamscore=0 impostorscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2202240000
 definitions=main-2204280087
Subject: [oss-security] CVE-2022-21449 and version reporting

--_000_484488E0D6624F5880DB499DE532FA3Bakamaicom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQWxsLA0KDQpIYXZlIGEgcXVlc3Rpb24gZm9yIE1JVFJFLCBPcmFjbGUs
IGFuZCBmb2xrcyBoZXJl4oCmDQoNCmh0dHBzOi8vbmVpbG1hZGRlbi5ibG9n
LzIwMjIvMDQvMTkvcHN5Y2hpYy1zaWduYXR1cmVzLWluLWphdmEvDQoNCuKA
nFVwZGF0ZSAyOiBPcmFjbGUgaGF2ZSBpbmZvcm1lZCBtZSB0aGV5IGFyZSBp
biB0aGUgcHJvY2VzcyBvZiBjb3JyZWN0aW5nIHRoZSBhZHZpc29yeSB0byBz
dGF0ZSB0aGF0IG9ubHkgdmVyc2lvbnMgMTUtMTggYXJlIGltcGFjdGVkLiBU
aGUgQ1ZFIGhhcyBhbHJlYWR5IGJlZW4gdXBkYXRlZC48aHR0cHM6Ly9udmQu
bmlzdC5nb3YvdnVsbi9kZXRhaWwvQ1ZFLTIwMjItMjE0NDk+IE5vdGUgdGhh
dCAxNSBhbmQgMTYgYXJlIG5vIGxvbmdlciBzdXBwb3J0ZWQsIHNvIGl0IHdp
bGwgb25seSBsaXN0IDE3IGFuZCAxOCBhcyBpbXBhY3RlZC7igJ0NCg0KQ2hl
Y2tpbmcgdGhlIG9mZmljaWFsIENWRSBsaXN0aW5n4oCmDQoNCmh0dHBzOi8v
bnZkLm5pc3QuZ292L3Z1bG4vZGV0YWlsL0NWRS0yMDIyLTIxNDQ5DQoNCkl0
IGFwcGVhcnMgdGhpcyBpcyB0cnVlLCB0aGUgcmVwb3J0ZWQgdmVyc2lvbnMg
aW4gdGhlIG9mZmljaWFsIENWRSBsaXN0aW5nLCBvbmx5IHNob3cgMTcgYW5k
IDE4LCB3aGVyZSAxNSBpcyBhbHNvIGltcGFjdGVkLg0KDQpJbiB3aGF0IHVu
aXZlcnNlIGV4YWN0bHkgYXJlIHZlcnNpb25zIG9taXR0ZWQgZnJvbSB2dWxu
ZXJhYmlsaXR5IHJlcG9ydGluZyBiZWNhdXNlIGEgdmVuZG9yIOKAnG5vIGxv
bmdlciBzdXBwb3J0cyB0aGF0IHZlcnNpb27igJ3igKYgdGhpcyBub24tc3Vw
cG9ydGVkIHZlcnNpb24gaXMgc3RpbGwgdnVsbmVyYWJsZT8NCg0KQXJlIGV4
cGxvaXQgZGV2ZWxvcGVycyBleHBlY3RlZCB0byBjaGVjayBhZ2FpbnN0IHRo
ZSB2ZXJzaW9uIG9mIHRoZSB2dWxuZXJhYmxlIGFwcGxpY2F0aW9uIGR1cmlu
ZyB0aGVpciBleHBsb2l0IGRldG9uYXRpb24gdG8gZW5zdXJlIHRoZXnigJly
ZSDigJxvbmx5IGluZmVjdGluZyBzdXBwb3J0ZWQgdmVyc2lvbnM/4oCdLg0K
DQpXaHkgaXMgdGhpcyBiZWluZyBhbGxvd2Vk4oCmIHRoaXMgaXMgZGFuZ2Vy
b3VzIGZvciBldmVyeW9uZSBpbnZvbHZlZCBzYXZlIGZvciBPcmFjbGXigJlz
IG93biBlZ28gb3IgcHVibGljIGltYWdlPw0KDQpTY3JhdGNoaW5nIG15IGhl
YWQsDQpDaGFkDQo=

--_000_484488E0D6624F5880DB499DE532FA3Bakamaicom_--
