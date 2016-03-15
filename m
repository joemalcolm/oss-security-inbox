X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3242" "Tuesday" "15" "March" "2016" "15:27:05" "-0500" "Tim Zingelman" "tez@pkgsrc.org" "<CAAsmaPbQvEhYDc8bznLoi2TBbfKk_7uNSGHtHZLpbzUCX5RCsw@mail.gmail.com>" "54" "Re: [oss-security] please assign CVE for cacti bug 2667: SQL Injection Vulnerability" "^Date:" nil nil "3" "2016031520:27:05" "[oss-security] please assign CVE for cacti bug 2667: SQL Injection Vulnerability" (number mark "U       tez@pkgsrc.o Mar 15   54/3242  " thread-indent "\"Re: [oss-security] please assign CVE for cacti bug 2667: SQL Injection Vulnerability\"\n") "<56E19B88.3000908@debian.org>" ("<56E19B88.3000908@debian.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23851 invoked by uid 550); 15 Mar 2016 20:27:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23830 invoked from network); 15 Mar 2016 20:27:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:date:message-id:subject
         :from:to:content-transfer-encoding;
        bh=SCkTBsL3UQqWKJxCxxaF5QoF49bxaDAVEBUImARMtuk=;
        b=ywO8xpl6nkvfDQUMJSYvJXIg4fmIHRFtg3sAxniVgVF9GmRnm9kLfijL/if4BXuB2g
         xp9XIqTNxjiyFYU6/37k6BA9M8chSsHhH8gJfzXXAvj6BpT0FTRdAIT5yrP8bEGL6GiY
         7FpY7wWJMAslzV7pWl72wjDzdh3CY9a8oJJl5XC+lpGdQoFzD11rKycpH9sKoPAi1D01
         TZ3ngbi68rGQTiW4f9MC/UenZVypMc9R7Sx4UmhRVLRtwMdAq/iwi0AFSkgeyRQA8P8u
         7QFrlMlj4UN24ChKdybMjQRIolBc4NsWVgMoDXrkigI4R2/ZMbCHtH+ssmg2wXjhxkX/
         Rv8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
         :message-id:subject:from:to:content-transfer-encoding;
        bh=SCkTBsL3UQqWKJxCxxaF5QoF49bxaDAVEBUImARMtuk=;
        b=iDE974Zwnbutw5/shMM2xmL9z7pC2FmmPmNWeUzwwS/20vbnCi4yL5YhpEQc79e4fu
         +TmYoJgaz7qCf3peyq+PVMjxhBNLlVt4ToXyi/CgVWWItwOpmMnpMCWPz1WMeeVL9Fab
         VIFXNM2V+y6C+8AbUsCe78KykDnMXomTyMQyU9ZpuWife3ZKzr7ado5lmp1RTFaY96As
         TOOXbUvZruq25wG1sdY4sh6eqcDdp99XVuS8tw5QfqCMiZUVO/FAN7FnMM3D+4gyQitY
         l4AZwJwuY/jbKsm6e+1nNVnZxvDiCm+7NV0gr2spp5W9xQaMbbVwGJ2ohsuowU+vGCRw
         PgVQ==
X-Gm-Message-State: AD7BkJKEhebrDQx7PG8f6i0wO6qu33eAIFAeKmKL60VFSkQ2Mad6OKNaDu9D621a4cKR4F4k6No4klNz2WbXDw==
MIME-Version: 1.0
X-Received: by 10.31.172.135 with SMTP id v129mr30994583vke.154.1458073625879;
 Tue, 15 Mar 2016 13:27:05 -0700 (PDT)
In-Reply-To: <56E19B88.3000908@debian.org>
References: <56E19B88.3000908@debian.org>
X-Google-Sender-Auth: vinYN6Ov3AyMhbtHx0CvWza-LMQ
Message-ID: <CAAsmaPbQvEhYDc8bznLoi2TBbfKk_7uNSGHtHZLpbzUCX5RCsw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: base64
Date: Tue, 15 Mar 2016 15:27:05 -0500
From: Tim Zingelman <tez@pkgsrc.org>
Reply-To: oss-security@lists.openwall.com
Sender: zingelman@gmail.com
Subject: Re: [oss-security] please assign CVE for cacti bug 2667: SQL
 Injection Vulnerability
To: oss-security@lists.openwall.com

VGhpcyBzZWVtcyB0byBmaXggaXQuLi4NCg0KZGlmZiAtdSB0cmVlLnBocC5v
cmlnIHRyZWUucGhwDQotLS0gdHJlZS5waHAub3JpZyAgICAgICAyMDE2LTAz
LTE1IDE1OjE1OjM3LjY0NjY0MTIwMyAtMDUwMA0KKysrIHRyZWUucGhwICAg
IDIwMTYtMDMtMTUgMTU6MTk6NDUuOTY2MTIwNDE0IC0wNTAwDQpAQCAtMTUz
LDYgKzE1Myw3IEBADQogICAgICAgIC8qID09PT09PT09PT09PT09PT09IGlu
cHV0IHZhbGlkYXRpb24gPT09PT09PT09PT09PT09PT0gKi8NCiAgICAgICAg
aW5wdXRfdmFsaWRhdGVfaW5wdXRfbnVtYmVyKGdldF9yZXF1ZXN0X3Zhcigi
aWQiKSk7DQogICAgICAgIGlucHV0X3ZhbGlkYXRlX2lucHV0X251bWJlcihn
ZXRfcmVxdWVzdF92YXIoInRyZWVfaWQiKSk7DQorICAgICAgIGlucHV0X3Zh
bGlkYXRlX2lucHV0X251bWJlcihnZXRfcmVxdWVzdF92YXIoInBhcmVudF9p
ZCIpKTsNCiAgICAgICAgLyogPT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PSAqLw0KDQogICAgICAgIGlmICgh
ZW1wdHkoJF9HRVRbImlkIl0pKSB7DQoNCg0KDQpPbiBUaHUsIE1hciAxMCwg
MjAxNiBhdCAxMDowNiBBTSwgUGF1bCBHZXZlcnMgPGVsYnJ1c0BkZWJpYW4u
b3JnPiB3cm90ZToNCj4gSGkNCj4NCj4gSSBqdXN0IGZvdW5kIHRoZSBkZXNj
cmlwdGlvbiBiZWxvdyBhYm91dCBhbiBzcWwgdnVsbmVyYWJpbGl0eSBpbiB0
aGUNCj4gY2FjdGkgYnVnIHRyYWNrZXI6IGh0dHA6Ly9idWdzLmNhY3RpLm5l
dC92aWV3LnBocD9pZD0yNjY3DQo+DQo+IENhbiBhIENWRSBiZSBhc3NpZ25l
ZCBmb3IgdGhpcyBpc3N1ZT8NCj4gVGhhbmtzDQo+DQo+ID09PT09PT09PT09
PT09PT09PT09PT09PT09DQo+IEFkdmlzb3J5OiBDYWN0aSBTUUwgSW5qZWN0
aW9uIFZ1bG5lcmFiaWxpdHkNCj4gQXV0aG9yOiBEbzlneSBvZiBUZW5jZW50
IFNlY3VyaXR5IFBsYXRmb3JtIERlcGFydG1lbnQNCj4gQWZmZWN0ZWQgVmVy
c2lvbjogMC44LjguZyh0aGUgbGF0ZXN0IHZlcnNpb24gJiB0aGUgb2xkZXIg
dmVyc2lvbnMpDQo+ID09PT09PT09PT09PT09PT09PT09PT09PT09DQo+IFZ1
bG5lcmFiaWxpdHkgRGVzY3JpcHRpb24NCj4gPT09PT09PT09PT09PT09PT09
PT09PT09PT0NCj4NCj4gUmVjZXRseSwgSSBmb3VuZCBhIFNRTCBJbmplY3Rp
b24gVnVsbmVyYWJpbGl0eSBpbiDigJhDYWN0aS0wLjguOGcnDQo+IHByb2dy
YW0sIENhY3RpIGlzIHdpZGVseSB1c2VkIGluIG1hbnkgY29tcGFuaWVzLg0K
PiBWdWxuZXJhYmxlIGZpbGU6IC9jYWN0aS90cmVlLnBocDoNCj4gbGluZSAy
MDg6DQo+ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PQ0KPiAgICAgc3dpdGNoICgkY3VycmVudF90eXBlKSB7DQo+
ICAgICBjYXNlIFRSRUVfSVRFTV9UWVBFX0hFQURFUjoNCj4gICAgICAgICAk
aSA9IDA7DQo+ICAgICAgICAgLyogaXQncyBuaWNlIHRvIGRlZmF1bHQgdG8g
dGhlIHBhcmVudCBzb3J0aW5nIHN0eWxlIGZvciBuZXcgaXRlbXMgKi8NCj4g
ICAgICAgICBpZiAoZW1wdHkoJF9HRVRbImlkIl0pKSB7DQo+ICAgICAgICAg
ICAgICRkZWZhdWx0X3NvcnRpbmdfdHlwZSA9IGRiX2ZldGNoX2NlbGwoInNl
bGVjdA0KPiBzb3J0X2NoaWxkcmVuX3R5cGUgZnJvbSBncmFwaF90cmVlX2l0
ZW1zIHdoZXJlIGlkPSIgLiAkX0dFVFsicGFyZW50X2lkIl0pOw0KPiAgICAg
ICAgIH1lbHNlew0KPiAgICAgICAgICAgICAkZGVmYXVsdF9zb3J0aW5nX3R5
cGUgPSBUUkVFX09SREVSSU5HX05PTkU7DQo+ICAgICAgICAgfQ0KPg0KPiA9
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT0NCj4NCj4gVGhlIHBhcmFtZXRlciBwYXJlbnRfaWQgaXMgdXNlZCB3aXRo
b3V0IGFueSB2YWxpZGF0aW9uLg0KPiA9PT09PT09PT09PT09PT09PT09PT09
PT09PQ0KPiBQT0MgJiYgRVhQDQo+ID09PT09PT09PT09PT09PT09PT09PT09
PT09DQo+IDEuIExvZ2luDQo+DQo+IDIuDQo+IGh0dHA6Ly90YXJnZXQvY2Fj
dGktMC44LjhnL3RyZWUucGhwP2FjdGlvbj1pdGVtX2VkaXQmdHJlZV9pZD0y
JnBhcmVudF9pZD04JTIwYW5kJTIwc2xlZXAoMSkNCj4gW15dDQo+DQo+IDMu
IG15c3FsIGxvZzogc2VsZWN0IHNvcnRfY2hpbGRyZW5fdHlwZSBmcm9tIGdy
YXBoX3RyZWVfaXRlbXMgd2hlcmUgaWQ9OA0KPiBhbmQgc2xlZXAoMSkNCj4N
Cj4NCg==
