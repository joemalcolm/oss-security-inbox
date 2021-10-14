X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5223" "Thursday" "14" "October" "2021" "19:47:12" "+0200" "Wolfgang Frisch" "wolfgang.frisch@suse.com" nil "97" "[oss-security] CVE-2021-42257: check_smart.pl: unprivileged user can alter hard drive settings" nil nil nil "10" nil nil (number mark "U       wolfgang.fri Oct 14   97/5223  " thread-indent "\"[oss-security] CVE-2021-42257: check_smart.pl: unprivileged user can alter hard drive settings\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-42257: check_smart.pl: unprivileged user can alter hard drive settings" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21598 invoked by uid 550); 14 Oct 2021 18:10:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11528 invoked from network); 14 Oct 2021 17:47:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
	t=1634233633; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=oR7xl3jyfyr9a4Y59vcBdt0GTBEV+olbmw20p+bYXJE=;
	b=p6Z/ukj7gSgivdN9nxXLaqUEE8Xca5GfhNVsxbjJz7211VxvsUmvPRGxDRcruvRbYDMce5
	wu/2lIvaJrd7Nhsyku6P81OPg+zVMP+QmRrYNgK55qJeFr7IpNpVL+EqrTRgtypDU0doFd
	9QX5UMMUXgjcVmUH9wRH6uHTEN9VS4M=
Message-ID: <6c9845d6-fc90-38f1-e90c-3ff65d0a9eca@suse.com>
Date: Thu, 14 Oct 2021 19:47:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.2
From: Wolfgang Frisch <wolfgang.frisch@suse.com>
To: oss-security@lists.openwall.com
Content-Language: en-US
Organization: SUSE Software Solutions Germany GmbH
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Iz8Mb09DcRazRcyeMwzTnvLY"
Subject: [oss-security] CVE-2021-42257: check_smart.pl: unprivileged user can alter hard
 drive settings

--------------Iz8Mb09DcRazRcyeMwzTnvLY
Content-Type: multipart/mixed; boundary="------------TJxRhfJuWIYHFWPueVsuy5Wd";
 protected-headers="v1"
From: Wolfgang Frisch <wolfgang.frisch@suse.com>
To: oss-security@lists.openwall.com
Message-ID: <6c9845d6-fc90-38f1-e90c-3ff65d0a9eca@suse.com>
Subject: CVE-2021-42257: check_smart.pl: unprivileged user can alter hard
 drive settings

--------------TJxRhfJuWIYHFWPueVsuy5Wd
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGVsbG8gb3NzLXNlY3VyaXR5LA0KDQpkdXJpbmcgYSByb3V0aW5lIGF1ZGl0
IG9mIHNjcmlwdHMgaW4gb3BlblNVU0UsIEkgZGlzY292ZXJlZCBhDQp2dWxu
ZXJhYmlsaXR5IGluIGBjaGVja19zbWFydC5wbGAgWzRdLCBhIHBsdWdpbiBm
b3Igc3lzdGVtcyBtb25pdG9yaW5nDQpzb2Z0d2FyZSB0byBtb25pdG9yIHRo
ZSB2YWx1ZXMgb2YgU01BUlQgYXR0cmlidXRlcyBvZiBoYXJkIGFuZCBzb2xp
ZA0Kc3RhdGUgZHJpdmVzLCB1c2luZyBzbWFydG1vbnRvb2xzIGluIHRoZSBi
YWNrZ3JvdW5kLg0KDQojIyBCcmllZg0KYGNoZWNrX3NtYXJ0LnBsYCBbMV1b
Ml0gZnJvbSB2ZXJzaW9uIDYuMSB0aHJvdWdoIDYuOSBjb250YWluZWQgYW4N
Cmluc3VmZmljaWVudCBpbnB1dCB2YWxpZGF0aW9uIHRoYXQgYWxsb3dlZCBh
biB1bnByaXZpbGVnZWQgdXNlciB0bw0KbW9kaWZ5IFNNQVJUIHNldHRpbmdz
LCBkaXNhYmxlIFNNQVJUIG1vbml0b3JpbmcgZW50aXJlbHksIHNodXQgZG93
biBhDQpkcml2ZSBvciBkZWdyYWRlIGEgZHJpdmUncyBwZXJmb3JtYW5jZSBi
eSBkaXNhYmxpbmcgaXRzIHJlYWQgY2FjaGUuIFRoZQ0KYnVnIHdhcyBmaXhl
ZCB3aXRoIHRoZSByZWxlYXNlIG9mIHZlcnNpb24gNi45LjEgWzNdLg0KDQoj
IyBEZXRhaWxlZCBkZXNjcmlwdGlvbg0KYGNoZWNrX3NtYXJ0LnBsYCBuZWVk
cyB0byBydW4gYXMgcm9vdCBpbiBvcmRlciB0byBleGVjdXRlIGBzbWFydGN0
bGAuDQpUaGlzIGlzIGFjaGlldmVkIHdpdGggYW4gZW50cnkgaW4gYC9ldGMv
c3Vkb2Vyc2AsIHdoaWNoIGFsbG93cyBhIGxlc3Nlcg0KcHJpdmlsZWdlZCB1
c2VyLCBlLmcuIHRoZSBvbmUgdGhlIG1vbml0b3Jpbmcgc3lzdGVtIHJ1bnMg
dW5kZXIsIHRvDQpleGVjdXRlIGl0LiBVc2VyIGlucHV0IHRoYXQgaXMgcGFz
c2VkIHRvIGBzbWFydGN0bGAgaXMgc3VmZmljaWVudGx5DQp2YWxpZGF0ZWQg
YXBhcnQgZnJvbSBvbmUgbWlub3Igb3ZlcnNpZ2h0Lg0KDQpUaGUgLWQgcGFy
YW1ldGVyIGlzIHZhbGlkYXRlZCBhcyBmb2xsb3dzOg0KPiBpZiAoLWIgJG9w
dF9kbCB8fCAtYyAkb3B0X2RsIHx8ICRvcHRfZGwgPX4gbS9cL2RldlwvYnVz
XC9cZC8pIHsNCj4gICAjIE9LDQo+IH0gZWxzZSB7DQo+ICAgIyBOT1QgT0sN
Cj4gfQ0KDQpMYXRlciBvbiwgdGhpcyBwYXJhbWV0ZXIgaXMgcGFzc2VkIHZl
cmJhdGltIHRvIHNtYXJ0Y3RsOg0KPiBteSAkZnVsbF9jb21tYW5kID0gIiRz
bWFydF9jb21tYW5kIC1kICRpbnRlcmZhY2UgLUhpICRkZXZpY2UiDQoNClNv
IGFuIGFjY2VwdGFibGUgZGV2aWNlIG5hbWUgd291bGQgYmUgYSBibG9jayBz
cGVjaWFsIGRldmljZSwgYSBjaGFyDQpzcGVjaWFsIGRldmljZSBvciBtYXRj
aCB0aGUgcmVnZXggYC9kZXYvYnVzL1xkYC4gQ3JpdGljYWxseSwgdGhpcyBy
ZWdleA0KbWF0Y2hlcyBldmVuIHdoZW4gL2Rldi9idXMvXGQgaXMganVzdCBh
IF9zdWJzdHJpbmdfIG9mIGFueSBhcmJpdHJhcnkNCmRpcmVjdG9yeSwgZm9y
IGV4YW1wbGUgYC90bXAvZGV2L2J1cy8xL3NkYWAuDQoNClRoaXMgY2FuIGJl
IGV4cGxvaXRlZCB0byBwYXNzIGFyYml0cmFyeSBwYXJhbWV0ZXJzIHRvIHNt
YXJ0Y3RsLCBzb21lIG9mDQp3aGljaCBhZmZlY3QgdGhlIGRyaXZlJ3MgYmVo
YXZpb3IgbmVnYXRpdmVseToNCg0KIyMjIFN0ZXBzIHRvIHJlcHJvZHVjZQ0K
PiBzdSAtbCAtcyAvYmluL2Jhc2ggbmFnaW9zDQo+IG1rZGlyIC1wIC90bXAv
ZGV2L2J1cy8xLw0KPiBsbiAtcyAvZGV2L3NkYSAvdG1wL2Rldi9idXMvMS8N
Cj4gbHMgLWwgL3RtcC9kZXYvYnVzLzEvc2RhDQo+IA0KPiAvdXNyL2xpYi9u
YWdpb3MvcGx1Z2lucy9jaGVja19zbWFydCAtLWRlYnVnIC1pIGF1dG8gLWQg
Ii90bXAvZGV2L2J1cy8xL3NkYSAtcyBvZmYiDQo+IA0KPiBTTUFSVCBEaXNh
YmxlZC4NCg0KVGhlIHVwc3RyZWFtIGRldmVsb3BlciBDbGF1ZGlvIEt1ZW56
bGVyIHdhcyB2ZXJ5IHJlc3BvbnNpdmUgYW5kIHF1aWNrbHkNCnJlbWVkaWF0
ZWQgdGhlIHByb2JsZW0gd2l0aCB0aGUgcmVsZWFzZSBvZiBjaGVja19zbWFy
dC02LjkuMSBbM10uDQoNClsxXSBodHRwczovL2dpdGh1Yi5jb20vTmFwc3R5
L2NoZWNrX3NtYXJ0DQpbMl0gaHR0cHM6Ly93d3cuY2xhdWRpb2t1ZW56bGVy
LmNvbS9tb25pdG9yaW5nLXBsdWdpbnMvY2hlY2tfc21hcnQucGhwDQpbM10g
DQpodHRwczovL3d3dy5jbGF1ZGlva3VlbnpsZXIuY29tL2Jsb2cvMTA2OC9j
aGVja19zbWFydC02LjkuMS1zZWN1cml0eS1maXgtcmVsZWFzZS1wc2V1ZG8t
ZGV2aWNlLXBhdGgNCls0XSBodHRwczovL2J1Z3ppbGxhLnN1c2UuY29tL3No
b3dfYnVnLmNnaT9pZD0xMTgzMDU3DQoNCkJlc3QgcmVnYXJkcywNCldvbGZn
YW5nDQoNCi0tIA0KV29sZmdhbmcgRnJpc2NoIDx3b2xmZ2FuZy5mcmlzY2hA
c3VzZS5jb20+DQpTZWN1cml0eSBFbmdpbmVlcg0KT3BlblBHUCBmaW5nZXJw
cmludDogQTJFNiBCN0Q0IDUzRTkgNTQ0RiBCQzEzICBEMjZCIEQ5QjMgNTZC
RCA0RDRBIDJEMTUNClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkg
R21iSA0KTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTnVyZW1iZXJnLCBHZXJtYW55
DQooSFJCIDM2ODA5LCBBRyBOw7xybmJlcmcpDQpNYW5hZ2luZyBEaXJlY3Rv
cjogRmVsaXggSW1lbmTDtnJmZmVyDQo=

--------------TJxRhfJuWIYHFWPueVsuy5Wd--

--------------Iz8Mb09DcRazRcyeMwzTnvLY
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEYqBDpiSp/H/7pxro7t22gcnlyyMFAmFobSAFAwAAAAAACgkQ7t22gcnlyyNy
jhAAhxTqONna7KBwA8wzRoJLibyRTghMFujE6CWJ2gxOWYcF6zLfK07t+mClZN//sFjtEwdm6lIP
Vqz5bVa6wXBTdV7yVrO5rwiyEuVrwTYtU0kCZ+1AGUWLYD7ILULIC/9SB+fRtVgGx/8R7BFK7XgJ
r83go8xSZrn1Zo3AKpfmwVR6+9r2/Tgb6BuQdBJLAiUQUXavyjMJVP39p6pLCMqfnbzF8aWUzvNa
zjjeYjAuZNGHzuW28eB33dg9GlBNHZplHtk0GS/r6ZSWten/JHKdmgE8y8SLcLZvdBOrRvnQTObz
h4InCzUJ3nazS3xBy7bTi27QOBT5jYKu/ohJGke9ZjBgHwlA1pgsATN4RSWnATllDj22gycmSU7e
m2g7GAohFDr3lh7Ytm53mPOro8O3h4VzHl8CUYKNRwFlExXVgFh1m6TsHZop45MaiCsIOkAtmEKr
KEWsr+G9ClqmwaUTYi5pZ66/hq0HgrRMLSPiPjv2gbd7dlPGxvIw9caIjUUdEpYkfsv83eKstWlD
Ubugcf3xLhyPYrS1Rqzw7ageux7KLD5aB7lKjAPGp6l8QJvudKUkP42FLO+Q9EbzHJ2e/Nbddcq+
QerCH9yV9Nu6H/1xNYHw5tXuWsXo8O+mmesjmPrZ8r0Ugp1FDnfiIC7R1Rli/gJ6na/6J13BGi+L
/24=
=2AWV
-----END PGP SIGNATURE-----

--------------Iz8Mb09DcRazRcyeMwzTnvLY--
