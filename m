X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2602" "Monday" "22" "February" "2016" "23:54:11" "+0000" "security@android.com" "security@android.com" "<19v12kg0000000000qejsu001cct70x6gmj6e1g64o30c1g64o38e1g@mail.gmail.com>" "46" "[oss-security] RE: [4-3801000010480] [Update 2/20/16 CVE-2015-5256] Apache Cordova vulnerable to improper application of whitelist restrictions on Android" nil nil nil "2" "2016022223:54:11" "[oss-security] RE: [4-3801000010480] [Update 2/20/16 CVE-2015-5256] Apache Cordova vulnerable to improper application of whitelist restrictions on Android" (number mark "U       security@and Feb 22   46/2602  " thread-indent "\"[oss-security] RE: [4-3801000010480] [Update 2/20/16 CVE-2015-5256] Apache Cordova vulnerable to improper application of whitelist restrictions on Android\"\n") "<CAHYtTq=UM+eVYgTFyG1OQMKt9ecz3Uo3vKV1vEEfy+VnTEr2pQ@mail.gmail.com>" ("<CAHYtTq=UM+eVYgTFyG1OQMKt9ecz3Uo3vKV1vEEfy+VnTEr2pQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13537 invoked by uid 550); 23 Feb 2016 00:15:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 2022 invoked from network); 22 Feb 2016 23:54:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=android.com; s=20120917;
        h=mime-version:in-reply-to:message-id:date:subject:from:to:cc
         :content-type;
        bh=BuQDMbltPcuXA9BzdoQEVveJRBcyKlShlY6/b4SvPlk=;
        b=nn1CKm8scoDmoBwgvWpuFVaCgT9duJ+xs2OFuQLklyxM0l/Q5yovDNKvTqrI8ry5iP
         gGZBwbZIjAHmSk4k0Kb+sL348+h9NkfR8/G6Ucgf0xg4x+7Pt/DL3JLYL8CQ8h6CFsjp
         nCxP76DtDvpdH/kOAN5o1d5pYmUI61PuryW+1IykmxME6SXG+oxfz8r0hQhzKIWsCBRK
         CERJc3G+5mwYnzxK7jGU8WsKYOFBIHh75JsnTCKt6Frmc25Jp8D7vAq/LfChnCVLt1eC
         dEkZMl+WiO6BVen3DFykJ2BLkUGmo9u4bV7Yu99YSANTjtGiHBBKASHMlxSlPs8MUg4p
         liYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:message-id:date:subject
         :from:to:cc:content-type;
        bh=BuQDMbltPcuXA9BzdoQEVveJRBcyKlShlY6/b4SvPlk=;
        b=aioUyzmnbagLMBDwFGe6K9W5pQrjO2xE8UELN/Y4R6cnSb7Hrv9R7sVBx2KY8ZAouk
         0DHri9OG8limVc9Q8wG1uK+KGpv3bjQyEfNtRr46QO9nsFUPxy6o2DU7+LJQ5U5xkVmH
         MvXS1Ds2d8tLm8Vz9gA9c/CMTTQe8gB2QpWxFibI8lQmg9Hqny+9cYIGAJsKEKTjqR3V
         cnW4JhZG9Cpd2gmh1sXyo8s0Ou9Fp0yl+VzaZdYfBDzsc2Q/DnetylS/Vzu+oh8A2GDe
         q6DDBGgHMLcRzXLQ9aCYwWT+t93hJ72e7z9g14HhR3hGi6IT0tFdw2PcuJxySKITHDWZ
         Vevg==
X-Gm-Message-State: AG10YORPQ56i1L6sPQvEjjhkOvdPRZLVgglwySW1PMIaLTJZBIk++qeAcU9s0Jg7BZKfS62JW41haBy3xsVcBc0hDaGuNQNbvlVc7D5nKw==
MIME-Version: 1.0
X-Received: by 10.107.9.213 with SMTP id 82mr12026070ioj.10.1456185251386;
 Mon, 22 Feb 2016 15:54:11 -0800 (PST)
In-Reply-To: <CAHYtTq=UM+eVYgTFyG1OQMKt9ecz3Uo3vKV1vEEfy+VnTEr2pQ@mail.gmail.com>
Message-ID: <19v12kg0000000000qejsu001cct70x6gmj6e1g64o30c1g64o38e1g@mail.gmail.com>
Date: Mon, 22 Feb 2016 23:54:11 +0000
From: security@android.com
To: Carlos Santana <csantana23@gmail.com>
Cc: bugtraq@securityfocus.com, oss-security@lists.openwall.com, 
	"private@cordova.apache.org" <private@cordova.apache.org>, ASF Security Team <security@apache.org>
Content-Type: multipart/alternative; boundary=001a113ebfd8a2efe8052c648c78
Subject: [oss-security] RE: [4-3801000010480] [Update 2/20/16 CVE-2015-5256] Apache Cordova
 vulnerable to improper application of whitelist restrictions on Android

--001a113ebfd8a2efe8052c648c78
Content-Type: text/plain; charset=UTF-8; format=flowed; delsp=yes
Content-Transfer-Encoding: base64

DQpIaQ0KVGhhbmsgeW91IGZvciB0aGUgbm90aWZpY2F0aW9uLg0KV2Ugd2ls
bCBhc3NpZ24gdGhpcyB0byBvdXIgZGV2IHRlYW0gdG8gcmV2aWV3Lg0KSXQg
d2lsbCBiZSB0cmFja2VkIGFzIEFuZHJvaWRJRC0yNzI5OTkyMi4NCg0KVGhh
bmtzLA0KUXVhbg0KDQoNCk9uIDAyLzIxLzE2IDExOjU2OjU4IGNzYW50YW5h
MjNAZ21haWwuY29tIHdyb3RlOg0KDQoNCipVcGRhdGVkIDAyLzIwLzIwMTYq
DQoNCkFwYWNoZSBDb3Jkb3ZhIGhhcyByZS12aXNpdGVkIENWRS0yMDE1LTUy
NTYgIkFwYWNoZSBDb3Jkb3ZhIHZ1bG5lcmFibGUgdG8NCmltcHJvcGVyIGFw
cGxpY2F0aW9uIG9mIHdoaXRlbGlzdCByZXN0cmljdGlvbnMgb24gQW5kcm9p
ZOKAnS4gVXBvbiBmdXJ0aGVyDQppbnZlc3RpZ2F0aW9uIHdlIGZvdW5kIHRo
YXQgdGhlIHZ1bG5lcmFiaWxpdHkgaXMgbW9yZSBsaW1pdGVkIHRoYW4gd2Fz
DQpwcmV2aW91c2x5IHVuZGVyc3Rvb2QuDQpXZSBhcmUgbG93ZXJpbmcgdGhl
IHNldmVyaXR5IHRvIExvdywgYW5kIHVwZGF0aW5nIHRoZSBkZXNjcmlwdGlv
biwgYWZmZWN0ZWQNCnZlcnNpb25zLCBhbmQgdXBncmFkZSBwYXRoLg0KDQpU
aGUgdXBkYXRlZCB0ZXh0IG9mIHRoZSBDVkUgaXMgaW5jbHVkZWQgYmVsb3c6
DQoNCkFwYWNoZSBDb3Jkb3ZhIFBNQw0KLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0NCnByaXZhdGVAY29yZG92YS5hcGFjaGUub3JnDQoNCl9fX18NCg0K
KlVwZGF0ZWQgMDIvMjAvMjAxNioNCg0KQ1ZFLTIwMTUtNTI1NjogQXBhY2hl
IENvcmRvdmEgdnVsbmVyYWJsZSB0byBpbXByb3BlciBhcHBsaWNhdGlvbiBv
Zg0Kd2hpdGVsaXN0IHJlc3RyaWN0aW9ucyBvbiBBbmRyb2lkDQoNClNldmVy
aXR5OiBMb3cNCg0KVmVyc2lvbnMgQWZmZWN0ZWQ6DQpDb3Jkb3ZhIEFuZHJv
aWQgd2l0aCB3aGl0ZWxpc3QgZnVuY3Rpb25hbGl0eQ0KDQpEZXNjcmlwdGlv
bjoNCg0KQW5kcm9pZCBhcHBsaWNhdGlvbnMgY3JlYXRlZCB1c2luZyBBcGFj
aGUgQ29yZG92YSB0aGF0IHVzZSBhIHJlbW90ZSBzZXJ2ZXINCmNvbnRhaW4g
YSB2dWxuZXJhYmlsaXR5IHdoZXJlIHdoaXRlbGlzdCByZXN0cmljdGlvbnMg
Zm9yIHVybHMgdXNpbmcNCnByb3RvY29scyBodHRwIGFuZCBodHRwcyBhcmUg
bm90IHByb3Blcmx5IGFwcGxpZWQuICBXaGl0ZWxpc3QgY2Fubm90IGJsb2Nr
DQpuZXR3b3JrIHJlZGlyZWN0cyBmcm9tIGEgd2hpdGVsaXN0ZWQgcmVtb3Rl
IHdlYnNpdGUgdG8gYSBub24td2hpdGVsaXN0ZWQNCndlYnNpdGUuDQoNClVw
Z3JhZGUgcGF0aDoNCg0KVGhlcmUgaXMgbm8gc3BlY2lmaWMgc29mdHdhcmUg
cGF0Y2ggZm9yIHRoaXMgdnVsbmVyYWJpbGl0eS4gRGV2ZWxvcGVycyB0aGF0
DQphcmUgY29uY2VybmVkIGFib3V0IHRoaXMgc2hvdWxkIG1ha2Ugc3VyZSB0
byBvbmx5IHdoaXRlbGlzdCB0cnVzdGVkDQp3ZWJzaXRlcywgYW5kIG1ha2Ug
c3VyZSB0aGF0IHdoaXRlbGlzdGVkIHdlYnNpdGVzIGRvbuKAmXQgcmVkaXJl
Y3QgdG8gYQ0KbWFsaWNpb3VzIHdlYnNpdGUuDQpEZXZlbG9wZXJzIHVzaW5n
IHNob3VsZCBhbHNvIHVzZSBTU0wsIGFzIHdlbGwgYXMgQ29udGVudCBTZWN1
cml0eQ0KUG9saWN5KENTUCkgdG8gZnVydGhlciBtaXRpZ2F0ZSB0aGlzIGlz
c3VlLiBJdOKAmXMgYWx3YXlzIHJlY29tbWVuZGVkIGZvcg0KZGV2ZWxvcGVy
cyB0byB1cGdyYWRlIHRvIHRoZSBsYXRlc3QgdmVyc2lvbiBvZiBDb3Jkb3Zh
IEFuZHJvaWQuDQoNCg0KQ3JlZGl0OiBNdW5lYWtpIE5pc2hpbXVyYSBvZiBT
b255IERpZ2l0YWwgTmV0d29yayBBcHBsaWNhdGlvbnMsIEluYw0KDQo=

--001a113ebfd8a2efe8052c648c78--
