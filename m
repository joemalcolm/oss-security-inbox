X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5633" "Tuesday" "12" "May" "2020" "17:46:44" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.2005121738440.1451610@xnncv>" "104" "[oss-security] CVE-2020-10711 Kernel: NetLabel: null pointer dereference while receiving CIPSO packet with null category" nil nil nil "5" "2020051212:16:44" "[oss-security] CVE-2020-10711 Kernel: NetLabel: null pointer dereference while receiving CIPSO packet with null category" (number mark "U       ppandit@redh May 12  104/5633  " thread-indent "\"[oss-security] CVE-2020-10711 Kernel: NetLabel: null pointer dereference while receiving CIPSO packet with null category\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-10711 Kernel: NetLabel: null pointer dereference while receiving CIPSO packet with null category" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5335 invoked by uid 550); 12 May 2020 12:17:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5309 invoked from network); 12 May 2020 12:17:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589285816;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=3/TKHpRCUReqrE1aUrUiMxnrxJ7ECaf4eHBTErUg/1E=;
	b=LkLMt4pUttML3ySGYIPDaMZ2NxV15fQL/jpF5S5P3oiGE5q9b970auPsP1RMxlPo2lpklZ
	SaYRpbhutTO6uPLowgnvOHmgAMWmwkwMsbqX+3JG0ws2h+W6a7cbW51cuks+xhr2Q7sRXV
	Xez1/Akpg4NowmtvqJ99e3m1qRT8vnc=
X-MC-Unique: xN4kOg4WNtibIeRvt4csDA-1
Date: Tue, 12 May 2020 17:46:44 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: Paolo Abeni <pabeni@redhat.com>, matthew.sheets@gd-ms.com, 
    Tyler Hicks <code@tyhicks.com>
Message-ID: <nycvar.YSQ.7.76.2005121738440.1451610@xnncv>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="-1463810047-1674710866-1589285810=:1451610"
Subject: [oss-security] CVE-2020-10711 Kernel: NetLabel: null pointer dereference while
 receiving CIPSO packet with null category

---1463810047-1674710866-1589285810=:1451610
Content-Type: text/plain; format=flowed; charset=US-ASCII

   Hello,

NULL pointer dereference(s) issue(s) was found in the Linux kernel's SELinux 
subsystem. It occurs while importing the Commercial IP Security Option (CIPSO) 
protocol's category bitmap into SELinux's extensible bitmap via 
'ebitmap_netlbl_import' routine. While parsing the CIPSO restricted bitmap tag 
in 'cipso_v4_parsetag_rbm' routine, it sets the security attribute to indicate 
that category bitmap is present, even if it has not been allocated. This leads 
to the said NULL pointer dereference issue while importing the same category 
bitmap into SELinux. A remote network user could use this flaw to crash the 
system kernel resulting in DoS scenario.

This issue was introduced by upstream commit:
   -> https://git.kernel.org/linus/4b8feff251da3d7058b5779e21b33a85c686b974
      netlabel: fix the horribly broken catmap functions

* This issue was reported by Matthew Sheets (CC'd).
* Please see a proposed fix patch attached herein.


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D
---1463810047-1674710866-1589285810=:1451610
Content-Type: text/plain; charset=US-ASCII; name=linux-netlabel-cope-with-null-catmap.patch
Content-Transfer-Encoding: BASE64
Content-ID: <nycvar.YSQ.7.76.2005121746441.1451610@xnncv>
Content-Description: 
Content-Disposition: attachment; filename=linux-netlabel-cope-with-null-catmap.patch

RnJvbSBwYWJlbmlAcmVkaGF0LmNvbSBUaHUgTWF5ICA3IDE1OjM5OjUxIDIw
MjANCkRhdGU6IFRodSwgIDcgTWF5IDIwMjAgMTI6MDQ6NDEgKzAyMDANCkZy
b206IFBhb2xvIEFiZW5pIDxwYWJlbmlAcmVkaGF0LmNvbT4NClRvOiBQIEog
UCA8cHBhbmRpdEByZWRoYXQuY29tPg0KU3ViamVjdDogW1BBVENIIG5ldF0g
bmV0bGFiZWw6IGNvcGUgd2l0aCBOVUxMIGNhdG1hcA0KDQpUaGUgY2lwc28g
YW5kIGNhbGlwc28gY29kZSBjYW4gc2V0IHRoZSBNTFNfQ0FUIGF0dHJpYnV0
ZSBvbg0Kc3VjY2Vzc2Z1bCBwYXJzaW5nLCBldmVuIGlmIHRoZSBjb3JyZXNw
b25kaW5nIGNhdG1hcCBoYXMNCm5vdCBiZWVuIGFsbG9jYXRlZCwgYXMgcGVy
IGN1cnJlbnQgY29uZmlndXJhdGlvbiBhbmQgZXh0ZXJuYWwNCmlucHV0Lg0K
DQpMYXRlciwgc2VsaW51eCBjb2RlIHRyaWVzIHRvIGFjY2VzcyB0aGUgY2F0
bWFwIGlmIHRoZSBNTFNfQ0FUIGZsYWcNCmlzIHByZXNlbnQgdmlhIG5ldGxi
bF9jYXRtYXBfZ2V0bG9uZygpLiBUaGF0IG1heSBjYXVzZSBudWxsIHB0cg0K
ZGVyZWZlcmVuY2Ugd2hpbGUgcHJvY2Vzc2luZyBpbmNvbWluZyBuZXR3b3Jr
IHRyYWZmaWMuDQoNCkFkZHJlc3MgdGhlIGlzc3VlIHNldHRpbmcgdGhlIE1M
U19DQVQgZmxhZyBvbmx5IGlmIHRoZSBjYXRtYXAgaXMNCnJlYWxseSBhbGxv
Y2F0ZWQuIEFkZGl0aW9uYWxseSBsZXQgbmV0bGJsX2NhdG1hcF9nZXRsb25n
KCkgY29wZQ0Kd2l0aCBOVUxMIGNhdG1hcC4NCg0KUmVwb3J0ZWQtYnk6IE1h
dHRoZXcgU2hlZXRzIDxtYXR0aGV3LnNoZWV0c0BnZC1tcy5jb20+DQpGaXhl
czogNGI4ZmVmZjI1MWRhICgibmV0bGFiZWw6IGZpeCB0aGUgaG9ycmlibHkg
YnJva2VuIGNhdG1hcCBmdW5jdGlvbnMiKQ0KU2lnbmVkLW9mZi1ieTogUGFv
bG8gQWJlbmkgPHBhYmVuaUByZWRoYXQuY29tPg0KLS0tDQp2MiAtPiB2MzoN
CiAtIGNsZWFuZWQtdXAgY29tbWl0IG1lc3NhZ2UsIGFkZGVkIHJlcG9ydGVy
DQoNCnYxIC0+IHYyOg0KIC0gYWRkcmVzcyBvdGhlcnMgc2ltaWxhciBmYWls
dXJlIGluIGNhbGlwc28gYW5kIGluDQoJY2lwc29fdjRfcGFyc2V0YWdfcm5n
KCkNCiAtIGFkZCBkZWZlbnNpdmUgcHJvZ3JhbW1pbmcgY2hlY2sgaW4gbmV0
bGJsX2NhdG1hcF9nZXRsb25nKCkNCi0tLQ0KIG5ldC9pcHY0L2NpcHNvX2lw
djQuYyAgICAgICAgfCA2ICsrKystLQ0KIG5ldC9pcHY2L2NhbGlwc28uYyAg
ICAgICAgICAgfCAzICsrLQ0KIG5ldC9uZXRsYWJlbC9uZXRsYWJlbF9rYXBp
LmMgfCA2ICsrKysrKw0KIDMgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9u
cygrKSwgMyBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL25ldC9pcHY0
L2NpcHNvX2lwdjQuYyBiL25ldC9pcHY0L2NpcHNvX2lwdjQuYw0KaW5kZXgg
MGJkMTBhMWY0NzdmLi5hMjMwOTRiMDUwZjggMTAwNjQ0DQotLS0gYS9uZXQv
aXB2NC9jaXBzb19pcHY0LmMNCisrKyBiL25ldC9pcHY0L2NpcHNvX2lwdjQu
Yw0KQEAgLTEyNTgsNyArMTI1OCw4IEBAIHN0YXRpYyBpbnQgY2lwc29fdjRf
cGFyc2V0YWdfcmJtKGNvbnN0IHN0cnVjdCBjaXBzb192NF9kb2kgKmRvaV9k
ZWYsDQogCQkJcmV0dXJuIHJldF92YWw7DQogCQl9DQogDQotCQlzZWNhdHRy
LT5mbGFncyB8PSBORVRMQkxfU0VDQVRUUl9NTFNfQ0FUOw0KKwkJaWYgKHNl
Y2F0dHItPmF0dHIubWxzLmNhdCkNCisJCQlzZWNhdHRyLT5mbGFncyB8PSBO
RVRMQkxfU0VDQVRUUl9NTFNfQ0FUOw0KIAl9DQogDQogCXJldHVybiAwOw0K
QEAgLTE0MzksNyArMTQ0MCw4IEBAIHN0YXRpYyBpbnQgY2lwc29fdjRfcGFy
c2V0YWdfcm5nKGNvbnN0IHN0cnVjdCBjaXBzb192NF9kb2kgKmRvaV9kZWYs
DQogCQkJcmV0dXJuIHJldF92YWw7DQogCQl9DQogDQotCQlzZWNhdHRyLT5m
bGFncyB8PSBORVRMQkxfU0VDQVRUUl9NTFNfQ0FUOw0KKwkJaWYgKHNlY2F0
dHItPmF0dHIubWxzLmNhdCkNCisJCQlzZWNhdHRyLT5mbGFncyB8PSBORVRM
QkxfU0VDQVRUUl9NTFNfQ0FUOw0KIAl9DQogDQogCXJldHVybiAwOw0KZGlm
ZiAtLWdpdCBhL25ldC9pcHY2L2NhbGlwc28uYyBiL25ldC9pcHY2L2NhbGlw
c28uYw0KaW5kZXggMjIxYzgxZjg1Y2JmLi44ZDNmNjZjMzEwZGIgMTAwNjQ0
DQotLS0gYS9uZXQvaXB2Ni9jYWxpcHNvLmMNCisrKyBiL25ldC9pcHY2L2Nh
bGlwc28uYw0KQEAgLTEwNDcsNyArMTA0Nyw4IEBAIHN0YXRpYyBpbnQgY2Fs
aXBzb19vcHRfZ2V0YXR0cihjb25zdCB1bnNpZ25lZCBjaGFyICpjYWxpcHNv
LA0KIAkJCWdvdG8gZ2V0YXR0cl9yZXR1cm47DQogCQl9DQogDQotCQlzZWNh
dHRyLT5mbGFncyB8PSBORVRMQkxfU0VDQVRUUl9NTFNfQ0FUOw0KKwkJaWYg
KHNlY2F0dHItPmF0dHIubWxzLmNhdCkNCisJCQlzZWNhdHRyLT5mbGFncyB8
PSBORVRMQkxfU0VDQVRUUl9NTFNfQ0FUOw0KIAl9DQogDQogCXNlY2F0dHIt
PnR5cGUgPSBORVRMQkxfTkxUWVBFX0NBTElQU087DQpkaWZmIC0tZ2l0IGEv
bmV0L25ldGxhYmVsL25ldGxhYmVsX2thcGkuYyBiL25ldC9uZXRsYWJlbC9u
ZXRsYWJlbF9rYXBpLmMNCmluZGV4IDQwOWEzYWU0N2NlMi4uNWUxMjM5Y2Vm
MDAwIDEwMDY0NA0KLS0tIGEvbmV0L25ldGxhYmVsL25ldGxhYmVsX2thcGku
Yw0KKysrIGIvbmV0L25ldGxhYmVsL25ldGxhYmVsX2thcGkuYw0KQEAgLTcz
NCw2ICs3MzQsMTIgQEAgaW50IG5ldGxibF9jYXRtYXBfZ2V0bG9uZyhzdHJ1
Y3QgbmV0bGJsX2xzbV9jYXRtYXAgKmNhdG1hcCwNCiAJaWYgKChvZmYgJiAo
QklUU19QRVJfTE9ORyAtIDEpKSAhPSAwKQ0KIAkJcmV0dXJuIC1FSU5WQUw7
DQogDQorCS8qIGEgbnVsbCBjYXRtYXAgaXMgZXF1aXZhbGVudCB0byBhbiBl
bXB0eSBvbmUgKi8NCisJaWYgKCFjYXRtYXApIHsNCisJCSpvZmZzZXQgPSAo
dTMyKS0xOw0KKwkJcmV0dXJuIDA7DQorCX0NCisNCiAJaWYgKG9mZiA8IGNh
dG1hcC0+c3RhcnRiaXQpIHsNCiAJCW9mZiA9IGNhdG1hcC0+c3RhcnRiaXQ7
DQogCQkqb2Zmc2V0ID0gb2ZmOw0KLS0gDQoyLjIxLjENCg==

---1463810047-1674710866-1589285810=:1451610--

