Received: (qmail 19937 invoked by uid 550); 14 Apr 2026 15:38:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30708 invoked from network); 14 Apr 2026 10:24:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776162240; x=1776767040; darn=lists.openwall.com;
        h=to:from:subject:mime-version:date:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tEvRb+5fbyWUvMPX+4TQY+FDQly+lFsUGo68NmK2m6Y=;
        b=JEryUvxxzDTftIdn1F3ZyTtEm9eN0XLHGwFrnKTUPswjj9zQhA6uloVLR4CSEWoppp
         Sj3bDnAbPswcxv44bNumCA8w89gsXYzxWcHYxRrf+KnfM4p0qSHiQ9AIrmn3E9U7ni8O
         buGrTLnJJjTxaWN2CaT+kYccrMtYQOIiecCNvqZleNnHmLxX+ygWJoVtk8OP2s5cJpD4
         /FjIPh7BRQcZcj5NTvuz6vTQuSz5MuFTwef80xiiqORcSnHV4PGAd1SKcIJyCu95Nabr
         YTTJKXpWDhBQKTBBDSpU3YmPEJY0PjTKa4sn4Q/5h1JYR/A8kTskkW5TU4O3O1Bx/gyQ
         GDNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776162240; x=1776767040;
        h=to:from:subject:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tEvRb+5fbyWUvMPX+4TQY+FDQly+lFsUGo68NmK2m6Y=;
        b=eqsBZc3/Z71bADoFWJRLcmmHxt6Po6ekBdCcB3hK+Yj/lLXxGcGTzinRCFArN+TVrR
         7G87wFPu/Q/6SoFd/VuStsdkonmBijLDeJavAXX5bMRBvMyLpKoBa9A7jOQdtLY0izAM
         8q4hnFjNfGiFVkesGBUqKNUUOFhY0cRGSV18dkewjc7tQy1s5Vj6tJ3XoLcXWv6+50JK
         M6AqQtd/RmHfV2K3Y5rbCX6qAIJwcgCBTNYYm1nJ3S28jY5QHzUV7wVoAqgYemqFD5Cs
         wV1A242BbKQX9hIR3Gzy+s87f01p13M6rLAshy8OjMNgn9FcO+7RinQ2klaL8VSr8VzL
         tE2A==
X-Gm-Message-State: AOJu0YzVTlXIo4gY7/7HFoPhL5k8xHhdv4RAx2BR2xvkujnh4F6Q+HOS
	4ySLIzyLAB41iCuQpBxs0yXBeldh4vyEzFC8HLG4vEn0LS15/pQdpzaiDCG+Nkxd
X-Gm-Gg: AeBDieuinicWBL++SdRbuLXmQNYIKegvQ5WNYbGKl33b9PdRPdzNXaHJpWBH05vPTPF
	c3cUVRkfu67jrv7Utn/XEgdHpncLgdnfIyc7e5YW1KppefrDU8s9KsCaAQA42OAHKiE1wpKgN7f
	oLWU8kIDS2LGRVgVtsUjuWhZosOJpxq/zeTOCY7VuXsnZ1PUenb0ZHqgBgXYwaKSEzys8LV3/aS
	7QDAxZPPJtobPgOld3p+zZcJvy2xm/zXFRM+dnOvm/LpcOYCyfF9+UihGjV/WCrhG0HBHp1IIMc
	wN9O5q3z9dmfkDf+ED28YWUqfSFpi4X2/tSCxQAw5Xk16c8WlXJY0yK+kPC4Fchljl4W/Knu5rw
	RmO7Uj+eOQgu/1/todJDKnw1ND0BDGbUv3RiIBbotclVqfL/yF6CnbIoMyd6OPbtp7OJsry4uTO
	CzNfb1844vySumLuEGjwRlNfLfN5xLjCIdb4sD+I8s8v4lLab/xzCbj0Gh
X-Received: by 2002:a05:6a00:12dd:b0:82c:215d:5e9d with SMTP id d2e1a72fcca58-82f0c2f73a5mr17419527b3a.32.1776162239416;
        Tue, 14 Apr 2026 03:23:59 -0700 (PDT)
Message-ID: <69de15be.050a0220.71566.d544@mx.google.com>
Date: Tue, 14 Apr 2026 03:23:58 -0700 (PDT)
Content-Type: multipart/alternative; boundary="===============6990465415914516399=="
MIME-Version: 1.0
From: yangjincheng1998@gmail.com
To: oss-security@lists.openwall.com
Subject: [oss-security] [disclosure] Multiple unpatched CVEs in libav (unmaintained FFmpeg fork, last update 2019)

--===============6990465415914516399==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64

bGliYXYgaXMgYSBmb3JrIG9mIEZGbXBlZyB0aGF0IGhhcyBub3QgcmVjZWl2ZWQgYW55IGNvbW1p
dHMgc2luY2UgQXByaWwgMjAxOSAoaHR0cHM6Ly9naXRodWIuY29tL2xpYmF2L2xpYmF2KS4gRGVz
cGl0ZSBiZWluZyB1bm1haW50YWluZWQsIGl0IGNvbnRpbnVlcyB0byBiZSB1c2VkIGFzIGEgZGVw
ZW5kZW5jeSBpbiBzb21lIHByb2plY3RzLiBJdCBjb250YWlucyBtdWx0aXBsZSBzZWN1cml0eSB2
dWxuZXJhYmlsaXRpZXMgdGhhdCB3ZXJlIGRpc2NvdmVyZWQgYW5kIGZpeGVkIGluIEZGbXBlZyBh
ZnRlciB0aGUgZm9yayBkaXZlcmdlZCBidXQgd2lsbCBuZXZlciBiZSBwYXRjaGVkIGluIGxpYmF2
LgoKVGhpcyBwb3N0IGRvY3VtZW50cyB0aGUgY29uZmlybWVkIHVucGF0Y2hlZCBDVkVzIGFzIGEg
cHVibGljIHJlY29yZCBhbmQgdG8gd2FybiB1c2VycyBzdGlsbCBkZXBlbmRpbmcgb24gbGliYXYu
Cgo9PSBBZmZlY3RlZCBTb2Z0d2FyZSA9PQoKICBQcm9qZWN0IDogbGliYXYvbGliYXYKICBVUkwg
ICAgIDogaHR0cHM6Ly9naXRodWIuY29tL2xpYmF2L2xpYmF2CiAgU3RhdHVzICA6IFVubWFpbnRh
aW5lZCBzaW5jZSBBcHJpbCAyMDE5IChGRm1wZWcgZm9yaykKICBGaXggICAgIDogTm9uZSBleHBl
Y3RlZC4gTWlncmF0ZSB0byBGRm1wZWcuCgo9PSBDVkUtMjAyNC0zMTU3OCDigJQgVXNlLUFmdGVy
LUZyZWUgaW4gSEVWQyBEZWNvZGVyID09CgogIFR5cGUgICAgOiBVc2UtQWZ0ZXItRnJlZSAoQ1dF
LTQxNikKICBMb2NhdGlvbjogbGliYXZjb2RlYy9oZXZjZGVjLmMg4oCUIHNldF9zcHMoKSAvIGhs
c19zbGljZV9oZWFkZXIoKQogIEltcGFjdCAgOiBNZW1vcnkgY29ycnVwdGlvbiB2aWEgY3JhZnRl
ZCBIRVZDIHN0cmVhbQoKICBXaGVuIHByb2Nlc3NpbmcgSEVWQyBzdHJlYW1zIHdpdGggbWlkLXN0
cmVhbSBTUFMgKFNlcXVlbmNlIFBhcmFtZXRlciBTZXQpCiAgY2hhbmdlcywgc2V0X3NwcygpIG1h
eSBmcmVlIHJlZmVyZW5jZSBmcmFtZSBkYXRhIHRoYXQgaXMgc3Vic2VxdWVudGx5CiAgYWNjZXNz
ZWQgYnkgaGxzX3NsaWNlX2hlYWRlcigpLCBsZWFkaW5nIHRvIHVzZS1hZnRlci1mcmVlLiBDb25m
aXJtZWQKICBwcmVzZW50IGluIGxpYmF2J3MgaGV2Y2RlYy5jIHZpYSBEb2NrZXIgYnVpbGQgYW5k
IGNvZGUgaW5zcGVjdGlvbi4KCj09IENWRS0yMDI0LTIyODYyIOKAlCBJbnRlZ2VyIE92ZXJmbG93
IGluIE1lZGlhIERlbXV4ZXIgPT0KCiAgVHlwZSAgICA6IEludGVnZXIgT3ZlcmZsb3cgKENXRS0x
OTApCiAgTG9jYXRpb246IE1lZGlhIHBhcnNpbmcgLyBNT1YvTVA0IGRlbXV4ZXIgY29kZQogIElt
cGFjdCAgOiBQb3RlbnRpYWwgaGVhcCBjb3JydXB0aW9uIHZpYSBjcmFmdGVkIG1lZGlhIGZpbGUK
CiAgbGliYXYgY29udGFpbnMgdGhlIGludGVnZXIgb3ZlcmZsb3cgdnVsbmVyYWJpbGl0eSBwcmVz
ZW50IGluIEZGbXBlZyBiZWZvcmUKICB0aGUgdXBzdHJlYW0gZml4LiBUaGUgdnVsbmVyYWJsZSBj
b2RlIHBhdGggd2FzIGNvbmZpcm1lZCB2aWEgRG9ja2VyIGJ1aWxkLgoKPT0gQ1ZFLTIwMjQtMzE1
ODUg4oCUIE9mZi1ieS1PbmUgRXJyb3IgaW4gTVhGIERlbXV4ZXIgPT0KCiAgVHlwZSAgICA6IE9m
Zi1ieS1PbmUgRXJyb3IgKENXRS0xOTMpCiAgTG9jYXRpb246IGxpYmF2Zm9ybWF0L214ZmRlYy5j
CiAgSW1wYWN0ICA6IEhlYXAgY29ycnVwdGlvbiB2aWEgY3JhZnRlZCBNWEYgZmlsZQoKICBUaGUg
TVhGIGRlbXV4ZXIgb2ZmLWJ5LW9uZSBlcnJvciBpbmhlcml0ZWQgZnJvbSBGRm1wZWcgaXMgcHJl
c2VudCBpbgogIGxpYmF2J3MgbXhmZGVjLmMuIENvbmZpcm1lZCB2aWEgRG9ja2VyIGJ1aWxkLgoK
PT0gQ1ZFLTIwMjUtMjI5MTkg4oCUIFJlYWNoYWJsZSBBc3NlcnRpb25zIGluIEFBQyBEZWNvZGVy
ID09CgogIFR5cGUgICAgOiBSZWFjaGFibGUgQXNzZXJ0aW9uIC8gQWJvcnQgKENXRS02MTcpCiAg
TG9jYXRpb246IGxpYmF2Y29kZWMvYWFjY29kZXIuYzo1MDksIGxpYmF2Y29kZWMvYWFjcHN5LmM6
NDkwLDQ5Miw4MjMKICBJbXBhY3QgIDogQ3Jhc2ggKERvUykgdmlhIGNyYWZ0ZWQgQUFDIGF1ZGlv
CgogIERvY2tlciBidWlsZCBjb25maXJtZWQgbXVsdGlwbGUgYmFyZSBhc3NlcnQoKSBjYWxscyBp
biB0aGUgQUFDIGRlY29kZXIKICB0aGF0IGNhbiBiZSB0cmlnZ2VyZWQgYnkgY3JhZnRlZCBpbnB1
dDoKCiAgICBsaWJhdmNvZGVjL2FhY2NvZGVyLmM6NTA5ICBhc3NlcnQoaWR4ID49IDApOwogICAg
bGliYXZjb2RlYy9hYWNwc3kuYzo0OTAgICAgYXNzZXJ0KGJpdF9zYXZlIDw9IDAuM2YgJiYgLi4u
KTsKICAgIGxpYmF2Y29kZWMvYWFjcHN5LmM6NDkyICAgIGFzc2VydChiaXRfc3BlbmQgPD0gMC41
ZiAmJiAuLi4pOwogICAgbGliYXZjb2RlYy9hYWNwc3kuYzo4MjMgICAgYXNzZXJ0KHBjaC0+cHJl
dl9lbmVyZ3lfc3Vic2hvcnRbLi4uXSA+IDApOwoKICBVbmxpa2UgdXBzdHJlYW0gRkZtcGVnIHdo
aWNoIHVzZXMgYXZfYXNzZXJ0IChjb250cm9sbGVkIGJ5IGJ1aWxkIGZsYWdzKSwKICB0aGVzZSBh
cmUgYmFyZSBhc3NlcnQoKSBjYWxscyB0aGF0IGZpcmUgaW4gc3RhbmRhcmQgcmVsZWFzZSBidWls
ZHMuCgo9PSBSZWNvbW1lbmRhdGlvbiA9PQoKICBVc2VycyBkZXBlbmRpbmcgb24gbGliYXYgc2hv
dWxkIG1pZ3JhdGUgdG8gRkZtcGVnLCB3aGljaCByZWNlaXZlcyBhY3RpdmUKICBzZWN1cml0eSBt
YWludGVuYW5jZSBhbmQgaGFzIHBhdGNoZXMgZm9yIGFsbCBvZiB0aGUgYWJvdmUgQ1ZFcy4KCiAg
bGliYXYgR2l0SHViIElzc3VlcyBhcmUgZGlzYWJsZWQgYW5kIG5vIHNlY3VyaXR5IGNvbnRhY3Qg
aXMgYXZhaWxhYmxlLgogIFRoaXMgcG9zdCBzZXJ2ZXMgYXMgdGhlIHB1YmxpYyBkaXNjbG9zdXJl
IHJlY29yZC4K

--===============6990465415914516399==--
