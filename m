X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1383" "Thursday" "29" "April" "2021" "21:11:44" "+0300" "Paraschiv, Andra-Irina" "andraprs@amazon.com" nil "23" "[oss-security] Nitro Enclaves kernel driver issue" nil nil nil "4" nil nil (number mark "U       andraprs@ama Apr 29   23/1383  " thread-indent "\"[oss-security] Nitro Enclaves kernel driver issue\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Nitro Enclaves kernel driver issue" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17815 invoked by uid 550); 29 Apr 2021 18:21:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15437 invoked from network); 29 Apr 2021 18:12:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1619719934; x=1651255934;
  h=to:from:subject:cc:message-id:date:mime-version:
   content-transfer-encoding;
  bh=G+X1M9siJtvcgVmQAFGmuPKeRX4nQeXiveGCzAxiDWU=;
  b=ObUu54sfY/gJP3LnQuCsZk+B6Gp2YQUOpzg152UjrlFxSH89Kks0hEcZ
   m8Ppj9BdA6i9CJneSsm1CMD27X7UPnWKwCpn9SbGq2KETFXNaanU97sFT
   dieUmTlBsWkshfduYGCI1ZHluHTEMwXwMGeUsDmCWRGj7DT9TPPSMSgJR
   w=;
X-IronPort-AV: E=Sophos;i="5.82,260,1613433600"; 
   d="scan'208";a="110670466"
To: oss-security <oss-security@lists.openwall.com>
From: "Paraschiv, Andra-Irina" <andraprs@amazon.com>
CC: security <security@kernel.org>, linux-distros
	<linux-distros@vs.openwall.org>, ne-devel-upstream
	<ne-devel-upstream@amazon.com>, Mathias Krause <minipli@grsecurity.net>
Message-ID: <5cae2a23-b169-43f6-0403-a316a1e661f9@amazon.com>
Date: Thu, 29 Apr 2021 21:11:44 +0300
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:78.0)
 Gecko/20100101 Thunderbird/78.10.0
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.43.160.209]
X-ClientProxiedBy: EX13D06UWA003.ant.amazon.com (10.43.160.13) To
 EX13D16EUB003.ant.amazon.com (10.43.166.99)
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
Subject: [oss-security] Nitro Enclaves kernel driver issue

SGksCgpBbiBpc3N1ZSB3YXMgZm91bmQgaW4gdGhlIE5pdHJvIEVuY2xhdmVz
IGtlcm5lbCBkcml2ZXIgY29kZWJhc2UgWzFdIAppbmNsdWRlZCBpbiB0aGUg
djUuMTAgdXBzdHJlYW0gTGludXgga2VybmVsLiBUaGUgZml4IGZvciBpdCBo
YXMgYmVlbiAKdGVzdGVkIG9uIHRoZSBBV1Mgc2lkZS4gVGhlIGlzc3VlIGRv
ZXMgbm90IGJyZWFrIHRoZSBpc29sYXRpb24gb3IgCnNlY3VyaXR5IG9mIHdo
YXQgaXMgcnVubmluZyBpbnNpZGUgdGhlIGVuY2xhdmUuIE5pdHJvIEVuY2xh
dmVzIGFscmVhZHkgCmFzc3VtZXMgdGhhdCB0aGUgaW5zdGFuY2UgcnVubmlu
ZyB0aGUgTml0cm8gRW5jbGF2ZXMga2VybmVsIGRyaXZlciBpcyAKdW50cnVz
dGVkLgoKV2Ugd291bGQgbGlrZSB0byB0aGFuayBNYXRoaWFzIEtyYXVzZSBm
cm9tIE9wZW4gU291cmNlIFNlY3VyaXR5LCBJbmMuIApmb3IgcmVwb3J0aW5n
IGFuZCBwcm92aWRpbmcgYSBmaXggZm9yIHRoaXMgaXNzdWUgZGlyZWN0bHkg
dG8gQVdTLgoKVGhlIHBhdGNoIFsyXSB3aWxsIGJlIG1lcmdlZCBpbnRvIHRo
ZSBsYXRlc3QgdXBzdHJlYW0gTGludXgga2VybmVsIApyZWxlYXNlIGFuZCBp
bnRvIHRoZSB2NS4xMCsgc3RhYmxlIGtlcm5lbCByZWxlYXNlcy4KClRoYW5r
cywKQW5kcmEKClsxXSAKaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2Nt
L2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUvZHJp
dmVycy92aXJ0L25pdHJvX2VuY2xhdmVzClsyXSBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9sa21sLzIwMjEwNDI5MTY1OTQxLjI3MDIwLTEtYW5kcmFwcnNA
YW1hem9uLmNvbS8KCgoKQW1hem9uIERldmVsb3BtZW50IENlbnRlciAoUm9t
YW5pYSkgUy5SLkwuIHJlZ2lzdGVyZWQgb2ZmaWNlOiAyN0EgU2YuIExhemFy
IFN0cmVldCwgVUJDNSwgZmxvb3IgMiwgSWFzaSwgSWFzaSBDb3VudHksIDcw
MDA0NSwgUm9tYW5pYS4gUmVnaXN0ZXJlZCBpbiBSb21hbmlhLiBSZWdpc3Ry
YXRpb24gbnVtYmVyIEoyMi8yNjIxLzIwMDUuCg==
